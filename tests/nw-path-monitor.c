/*
 Copyright (C) 2026 Lubos Dolezel

 Guest test for the Network framework's path monitor C API
 (nw_path_monitor_*, nw_path_*, nw_retain/nw_release).
 The contract is the public Network framework documentation; the enum values
 are the SDK's (nw_path_status_t: invalid 0, satisfied 1, unsatisfied 2,
 satisfiable 3). The test declares the prototypes itself so it builds against
 any SDK; link with -framework Network (macOS) or -lnetwork (Darling).
 Prints PASS or FAIL lines; exit status is the number of failures.
*/
#include <dispatch/dispatch.h>
#include <stdbool.h>
#include <stdio.h>

typedef void *nw_obj;
extern nw_obj nw_path_monitor_create(void);
extern nw_obj nw_path_monitor_create_with_type(int type);
extern void nw_path_monitor_prohibit_interface_type(nw_obj monitor, int type);
extern void nw_path_monitor_set_queue(nw_obj monitor, dispatch_queue_t queue);
extern void nw_path_monitor_set_update_handler(nw_obj monitor, void (^handler)(nw_obj path));
extern void nw_path_monitor_set_cancel_handler(nw_obj monitor, void (^handler)(void));
extern void nw_path_monitor_start(nw_obj monitor);
extern void nw_path_monitor_cancel(nw_obj monitor);
extern int nw_path_get_status(nw_obj path);
extern bool nw_path_has_ipv4(nw_obj path);
extern bool nw_path_has_ipv6(nw_obj path);
extern bool nw_path_uses_interface_type(nw_obj path, int type);
extern bool nw_path_is_equal(nw_obj a, nw_obj b);
extern nw_obj nw_retain(nw_obj object);
extern void nw_release(nw_obj object);

enum { st_invalid = 0, st_satisfied = 1, st_unsatisfied = 2, st_satisfiable = 3 };
enum { if_other = 0, if_wifi = 1, if_cellular = 2, if_wired = 3, if_loopback = 4 };

static int failures;
#define CHECK(cond, what) do { \
	if (cond) printf("PASS: %s\n", what); \
	else { printf("FAIL: %s\n", what); failures++; } \
} while (0)

typedef struct {
	int updates;
	int status;
	bool has4, has6, equal_to_self, retained_same;
	int uses_cellular;
	int cancels;
} observed_t;

static void run_monitor(nw_obj monitor, observed_t *o, dispatch_queue_t q, bool cancel) {
	dispatch_semaphore_t first = dispatch_semaphore_create(0);
	dispatch_semaphore_t cancelled = dispatch_semaphore_create(0);
	nw_path_monitor_set_queue(monitor, q);
	nw_path_monitor_set_update_handler(monitor, ^(nw_obj path) {
		if (o->updates++ == 0) {
			o->status = nw_path_get_status(path);
			o->has4 = nw_path_has_ipv4(path);
			o->has6 = nw_path_has_ipv6(path);
			o->equal_to_self = nw_path_is_equal(path, path);
			o->uses_cellular = nw_path_uses_interface_type(path, if_cellular);
			nw_obj again = nw_retain(path);
			o->retained_same = (again == path);
			nw_release(again);
			dispatch_semaphore_signal(first);
		}
	});
	nw_path_monitor_set_cancel_handler(monitor, ^{
		o->cancels++;
		dispatch_semaphore_signal(cancelled);
	});
	nw_path_monitor_start(monitor);
	dispatch_semaphore_wait(first, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC));
	if (cancel) {
		nw_path_monitor_cancel(monitor);
		dispatch_semaphore_wait(cancelled, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC));
	}
}

int main(void) {
	dispatch_queue_t q = dispatch_queue_create("nw-path-monitor-test", DISPATCH_QUEUE_SERIAL);

	/* default monitor: a first path update arrives on the queue */
	nw_obj monitor = nw_path_monitor_create();
	CHECK(monitor != NULL, "nw_path_monitor_create returns an object");
	observed_t any = {0};
	run_monitor(monitor, &any, q, true);
	CHECK(any.updates >= 1, "update handler runs after start");
	CHECK(any.status == st_satisfied || any.status == st_unsatisfied || any.status == st_satisfiable,
		"path status is one of the SDK values and not invalid");
	CHECK(any.status != st_satisfied || any.has4 || any.has6, "satisfied path has an IP family");
	CHECK(any.equal_to_self, "nw_path_is_equal(path, path)");
	CHECK(any.retained_same, "nw_retain returns the same object");
	CHECK(any.cancels == 1, "cancel handler runs once after cancel");
	int before = any.updates;
	nw_path_monitor_cancel(monitor); /* second cancel is harmless */
	dispatch_sync(q, ^{});
	CHECK(any.cancels == 1 && any.updates == before, "cancelling again does nothing");
	nw_release(monitor);

	/* a monitor restricted to cellular on a machine without cellular is unsatisfied */
	nw_obj cell = nw_path_monitor_create_with_type(if_cellular);
	CHECK(cell != NULL, "nw_path_monitor_create_with_type returns an object");
	observed_t c = {0};
	run_monitor(cell, &c, q, true);
	CHECK(c.updates >= 1, "typed monitor delivers a path");
	CHECK(c.status == st_unsatisfied, "cellular-only monitor path is unsatisfied here");
	CHECK(!c.has4 && !c.has6, "unsatisfied path has no IP family");
	nw_release(cell);

	/* prohibiting wired and wifi leaves a monitor of the default kind with no usable interface type
	   only where nothing else exists; just require the call to be accepted and a path to arrive */
	nw_obj pm = nw_path_monitor_create();
	nw_path_monitor_prohibit_interface_type(pm, if_cellular);
	observed_t p = {0};
	run_monitor(pm, &p, q, true);
	CHECK(p.updates >= 1, "monitor with a prohibited type still reports a path");
	nw_release(pm);

	printf("%s\n", failures ? "FAILED" : "ALL PASSED");
	return failures;
}
