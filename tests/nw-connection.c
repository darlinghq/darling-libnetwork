/*
 This file is part of Darling.

 Copyright (C) 2026 Lubos Dolezel

 Darling is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 Darling is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with Darling.  If not, see <http://www.gnu.org/licenses/>.
*/


// Plain C with blocks. nw_connection against listeners on 127.0.0.1 that the test creates itself; the
// expectations follow the documented Network.framework contract, with the observed behaviour of the original
// where the documentation is silent (see the QUIRK note in the library). The same source runs on macOS and on
// Darling. Usage: nw-connection <test>; a test name per documented case, "all" runs them in turn.

#include <Network/Network.h>
#include <arpa/inet.h>
#include <dispatch/dispatch.h>
#include <errno.h>
#include <netinet/in.h>
#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <unistd.h>

static int failures;
#define CHECK(c, msg) do { if (!(c)) { printf("FAIL: %s\n", msg); failures++; } else printf("ok: %s\n", msg); } while (0)

static dispatch_queue_t cq;

// --- state log ---
#define MAXLOG 16
typedef struct {
	dispatch_semaphore_t changed;
	nw_connection_state_t states[MAXLOG];
	int domains[MAXLOG], codes[MAXLOG];
	int count;
} statelog_t;

static void watch(nw_connection_t c, statelog_t *log) {
	log->changed = dispatch_semaphore_create(0);
	nw_connection_set_state_changed_handler(c, ^(nw_connection_state_t s, nw_error_t e) {
		if (log->count < MAXLOG) {
			log->states[log->count] = s;
			log->domains[log->count] = e ? (int)nw_error_get_error_domain(e) : 0;
			log->codes[log->count] = e ? nw_error_get_error_code(e) : 0;
			log->count++;
		}
		dispatch_semaphore_signal(log->changed);
	});
}

// Waits until the log has an entry in one of the given states (a bitmask); returns its index or -1.
static int wait_state(statelog_t *log, unsigned mask, int seconds) {
	dispatch_time_t end = dispatch_time(DISPATCH_TIME_NOW, (int64_t)seconds * NSEC_PER_SEC);
	for (;;) {
		for (int i = 0; i < log->count; i++)
			if (mask & (1u << log->states[i]))
				return i;
		if (dispatch_semaphore_wait(log->changed, end) != 0)
			return -1;
	}
}
#define S(x) (1u << nw_connection_state_##x)

// --- listeners ---
static int bind_loopback(int type, int *port) {
	int s = socket(AF_INET, type, 0);
	struct sockaddr_in a;
	memset(&a, 0, sizeof(a));
	a.sin_family = AF_INET;
	a.sin_len = sizeof(a);
	a.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
	if (bind(s, (struct sockaddr *)&a, sizeof(a)) != 0) { perror("bind"); exit(2); }
	socklen_t l = sizeof(a);
	getsockname(s, (struct sockaddr *)&a, &l);
	*port = ntohs(a.sin_port);
	return s;
}

static nw_connection_t make(const char *host, int port, bool udp) {
	char p[16];
	snprintf(p, sizeof(p), "%d", port);
	nw_endpoint_t e = nw_endpoint_create_host(host, p);
	nw_parameters_t pa = udp ? nw_parameters_create_secure_udp(NW_PARAMETERS_DISABLE_PROTOCOL, NW_PARAMETERS_DEFAULT_CONFIGURATION)
		: nw_parameters_create_secure_tcp(NW_PARAMETERS_DISABLE_PROTOCOL, NW_PARAMETERS_DEFAULT_CONFIGURATION);
	nw_connection_t c = nw_connection_create(e, pa);
	nw_connection_set_queue(c, cq);
	return c;
}

typedef struct { dispatch_data_t data; nw_content_context_t ctx; int ctx_final; bool complete; int domain, code; bool got; } rx_t;

// Receives synchronously (the completion runs on the connection queue).
static rx_t rxs(nw_connection_t c, uint32_t mn, uint32_t mx, bool message) {
	__block rx_t r;
	memset(&r, 0, sizeof(r));
	dispatch_semaphore_t sem = dispatch_semaphore_create(0);
	nw_connection_receive_completion_t h = ^(dispatch_data_t d, nw_content_context_t ctx, bool comp, nw_error_t e) {
		r.data = d; r.ctx = ctx; r.complete = comp; r.got = true;
		// The context is only valid inside the completion.
		r.ctx_final = ctx ? (int)nw_content_context_get_is_final(ctx) : -1;
		r.domain = e ? (int)nw_error_get_error_domain(e) : 0;
		r.code = e ? nw_error_get_error_code(e) : 0;
		if (d) dispatch_retain(d);
		dispatch_semaphore_signal(sem);
	};
	if (message) nw_connection_receive_message(c, h); else nw_connection_receive(c, mn, mx, h);
	if (dispatch_semaphore_wait(sem, dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC)) != 0)
		r.got = false;
	return r;
}
static bool rx_is(rx_t r, const char *s) {
	return r.got && r.data && dispatch_data_get_size(r.data) == strlen(s) && ({
		const void *b; size_t n; dispatch_data_t m = dispatch_data_create_map(r.data, &b, &n); bool eq = memcmp(b, s, n) == 0; dispatch_release(m); eq; });
}

// Sends synchronously; returns the error code (0 for success), -1 on timeout.
static int sends(nw_connection_t c, const char *s, nw_content_context_t ctx, bool complete) {
	__block int code = -1;
	dispatch_semaphore_t sem = dispatch_semaphore_create(0);
	dispatch_data_t d = s ? dispatch_data_create(s, strlen(s), cq, DISPATCH_DATA_DESTRUCTOR_DEFAULT) : NULL;
	nw_connection_send(c, d, ctx, complete, ^(nw_error_t e) { code = e ? nw_error_get_error_code(e) : 0; dispatch_semaphore_signal(sem); });
	if (dispatch_semaphore_wait(sem, dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC)) != 0)
		return -1;
	return code;
}

static void finish(nw_connection_t c, statelog_t *log) {
	nw_connection_cancel(c);
	CHECK(wait_state(log, S(cancelled), 5) >= 0, "cancelled state is delivered");
}

// --- tests ---

// The TCP server: accepts one client and echoes until the client closes, then closes.
typedef struct { int ls; } srv_t;
static void *echo_server(void *arg) {
	int ls = (int)(intptr_t)arg, a = accept(ls, 0, 0);
	char b[256];
	ssize_t n;
	while ((n = read(a, b, sizeof(b))) > 0)
		write(a, b, n);
	close(a);
	return NULL;
}

static void test_tcp_echo(void) {
	int port;
	int ls = bind_loopback(SOCK_STREAM, &port);
	listen(ls, 1);
	pthread_t t;
	pthread_create(&t, 0, echo_server, (void *)(intptr_t)ls);
	nw_connection_t c = make("127.0.0.1", port, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	int r = wait_state(&log, S(ready) | S(failed) | S(waiting), 10);
	CHECK(r >= 0 && log.states[r] == nw_connection_state_ready, "connection becomes ready");
	CHECK(log.count >= 2 && log.states[0] == nw_connection_state_preparing, "preparing precedes ready");
	CHECK(sends(c, "hello", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true) == 0, "send completes without error");
	rx_t x = rxs(c, 5, 5, false);
	CHECK(rx_is(x, "hello") && x.code == 0, "echo comes back");
	// Content split over several sends is delivered once the minimum length is there.
	sends(c, "0123", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, false);
	sends(c, "456789", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true);
	x = rxs(c, 10, 10, false);
	CHECK(rx_is(x, "0123456789"), "receive waits for the minimum length");
	sends(c, "abcdefgh", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true);
	x = rxs(c, 4, 4, false);
	CHECK(x.got && x.data && dispatch_data_get_size(x.data) == 4, "receive delivers at most the maximum");
	x = rxs(c, 4, 4, false);
	CHECK(rx_is(x, "efgh"), "the rest stays queued for the next receive");
	// A QUIRK-pinned detail: received stream data carries a final context (the observed behaviour of the original).
	CHECK(x.ctx_final == 1, "test_quirk_stream_receive_context_is_final");
	// The final message context closes the write side; the server then closes and the receive sees the end.
	CHECK(sends(c, NULL, NW_CONNECTION_FINAL_MESSAGE_CONTEXT, true) == 0, "final send completes");
	x = rxs(c, 1, 100, false);
	CHECK(x.got && x.data == NULL && x.complete && x.code == 0, "end of stream: no content, is_complete, no error");
	finish(c, &log);
	pthread_join(t, NULL);
	close(ls);
}

static void test_refused(void) {
	int port;
	close(bind_loopback(SOCK_STREAM, &port));
	nw_connection_t c = make("127.0.0.1", port, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	int r = wait_state(&log, S(waiting) | S(failed) | S(ready), 10);
	CHECK(r >= 1 && log.states[0] == nw_connection_state_preparing, "preparing first");
	CHECK(r >= 0 && log.states[r] != nw_connection_state_ready, "connection is not ready");
	CHECK(r >= 0 && log.domains[r] == nw_error_domain_posix && log.codes[r] == ECONNREFUSED, "error is POSIX ECONNREFUSED");
	finish(c, &log);
}

static void test_unresolvable(void) {
	nw_connection_t c = make("nonexistent.invalid", 80, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	int r = wait_state(&log, S(waiting) | S(failed) | S(ready), 20);
	CHECK(r >= 1 && log.states[0] == nw_connection_state_preparing, "preparing first");
	CHECK(r >= 0 && log.states[r] != nw_connection_state_ready, "connection is not ready");
	CHECK(r >= 0 && log.domains[r] == nw_error_domain_dns, "error is in the DNS domain");
	finish(c, &log);
}

static void test_eof(void) {
	int port;
	int ls = bind_loopback(SOCK_STREAM, &port);
	listen(ls, 1);
	nw_connection_t c = make("127.0.0.1", port, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	int a = accept(ls, 0, 0);
	CHECK(wait_state(&log, S(ready), 10) >= 0, "ready");
	write(a, "bye", 3);
	close(a);
	usleep(300000);
	rx_t x = rxs(c, 1, 100, false);
	CHECK(rx_is(x, "bye") && x.complete && x.code == 0, "data followed by the end of the stream is complete");
	x = rxs(c, 1, 100, false);
	CHECK(x.got && x.data == NULL && x.domain == nw_error_domain_posix && x.code == ENODATA, "receive after the end: POSIX ENODATA");
	finish(c, &log);
	close(ls);
}

static void test_udp(void) {
	int port;
	int us = bind_loopback(SOCK_DGRAM, &port);
	nw_connection_t c = make("127.0.0.1", port, true);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	CHECK(wait_state(&log, S(ready), 10) >= 0, "udp connection becomes ready");
	CHECK(sends(c, "aaa", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true) == 0, "first datagram sent");
	CHECK(sends(c, "bbbb", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true) == 0, "second datagram sent");
	char b[64];
	struct sockaddr_in from;
	socklen_t fl = sizeof(from);
	CHECK(recvfrom(us, b, sizeof(b), 0, (struct sockaddr *)&from, &fl) == 3, "server gets a 3-byte datagram");
	CHECK(recvfrom(us, b, sizeof(b), 0, (struct sockaddr *)&from, &fl) == 4, "server gets a separate 4-byte datagram");
	sendto(us, "12345", 5, 0, (struct sockaddr *)&from, fl);
	sendto(us, "67", 2, 0, (struct sockaddr *)&from, fl);
	usleep(300000);
	rx_t x = rxs(c, 1, 100, false);
	CHECK(rx_is(x, "12345") && x.complete, "first reply is one complete message");
	x = rxs(c, 1, 100, true);
	CHECK(rx_is(x, "67") && x.complete, "second reply is a separate message");
	CHECK(x.ctx_final == 0, "test_quirk_datagram_receive_context_is_not_final");
	sendto(us, "abcdefgh", 8, 0, (struct sockaddr *)&from, fl);
	usleep(300000);
	x = rxs(c, 1, 3, false);
	CHECK(rx_is(x, "abc") && !x.complete, "test_quirk_datagram_larger_than_maximum: first piece is incomplete");
	x = rxs(c, 1, 100, false);
	CHECK(rx_is(x, "defgh") && x.complete, "test_quirk_datagram_larger_than_maximum: the remainder completes the message");
	finish(c, &log);
	close(us);
}

static void test_cancel_preparing(void) {
	nw_connection_t c = make("nonexistent.invalid", 80, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	nw_connection_cancel(c);
	int r = wait_state(&log, S(cancelled), 10);
	CHECK(r >= 0, "cancelled state is delivered");
	CHECK(r >= 0 && log.states[0] == nw_connection_state_preparing, "preparing was delivered first");
	bool bad = false;
	for (int i = 0; i < log.count; i++)
		if (log.states[i] == nw_connection_state_ready || log.states[i] == nw_connection_state_failed)
			bad = true;
	CHECK(!bad, "never ready or failed");
	CHECK(sends(c, "x", NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true) == ECANCELED, "send after cancel: POSIX ECANCELED");
	rx_t x = rxs(c, 1, 10, false);
	CHECK(x.got && x.data == NULL && x.domain == nw_error_domain_posix && x.code == ECANCELED, "receive after cancel: POSIX ECANCELED");
}

static void test_cancel_receive(void) {
	int port;
	int ls = bind_loopback(SOCK_STREAM, &port);
	listen(ls, 1);
	nw_connection_t c = make("127.0.0.1", port, false);
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	int a = accept(ls, 0, 0);
	CHECK(wait_state(&log, S(ready), 10) >= 0, "ready");
	__block rx_t r;
	memset(&r, 0, sizeof(r));
	__block int stateAtCompletion = -1;
	dispatch_semaphore_t sem = dispatch_semaphore_create(0);
	nw_connection_receive(c, 1, 10, ^(dispatch_data_t d, nw_content_context_t ctx, bool comp, nw_error_t e) {
		r.got = true; r.data = d; r.complete = comp; r.code = e ? nw_error_get_error_code(e) : 0; r.domain = e ? (int)nw_error_get_error_domain(e) : 0;
		stateAtCompletion = log.count;
		dispatch_semaphore_signal(sem);
	});
	usleep(200000);
	int before = log.count;
	nw_connection_cancel(c);
	CHECK(dispatch_semaphore_wait(sem, dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC)) == 0, "pending receive completes on cancel");
	// The original completes it either with POSIX ECANCELED or as an empty complete message.
	CHECK(r.data == NULL && ((r.domain == nw_error_domain_posix && r.code == ECANCELED) || (r.code == 0 && r.complete)), "without content, as cancelled or empty-and-complete");
	if (r.code != ECANCELED && r.code != 0) printf("  got data=%p domain=%d code=%d complete=%d\n", (void *)r.data, r.domain, r.code, (int)r.complete);
	CHECK(stateAtCompletion == before, "before the cancelled state is delivered");
	CHECK(wait_state(&log, S(cancelled), 5) >= 0, "cancelled state follows");
	close(a);
	close(ls);
}

static void test_no_queue(void) {
	int port;
	int ls = bind_loopback(SOCK_STREAM, &port);
	listen(ls, 1);
	char p[16];
	snprintf(p, sizeof(p), "%d", port);
	nw_connection_t c = nw_connection_create(nw_endpoint_create_host("127.0.0.1", p), nw_parameters_create_secure_tcp(NW_PARAMETERS_DISABLE_PROTOCOL, NW_PARAMETERS_DEFAULT_CONFIGURATION));
	statelog_t log = {0};
	watch(c, &log);
	nw_connection_start(c);
	CHECK(wait_state(&log, S(preparing) | S(ready) | S(failed) | S(waiting), 1) < 0, "start without a queue does nothing");
	close(ls);
}

static void test_objects(void) {
	nw_endpoint_t e = nw_endpoint_create_host("localhost", "8080");
	CHECK(nw_endpoint_get_type(e) == nw_endpoint_type_host, "host endpoint type");
	CHECK(strcmp(nw_endpoint_get_hostname(e), "localhost") == 0 && nw_endpoint_get_port(e) == 8080, "host endpoint name and port");
	struct sockaddr_in a;
	memset(&a, 0, sizeof(a));
	a.sin_family = AF_INET;
	a.sin_len = sizeof(a);
	a.sin_port = htons(443);
	a.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
	nw_endpoint_t ae = nw_endpoint_create_address((struct sockaddr *)&a);
	char *s = nw_endpoint_copy_address_string(ae);
	CHECK(nw_endpoint_get_type(ae) == nw_endpoint_type_address && nw_endpoint_get_port(ae) == 443 && s && strcmp(s, "127.0.0.1") == 0, "address endpoint");
	free(s);
	CHECK(strcmp(nw_content_context_get_identifier(NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT), "Default Message") == 0 && !nw_content_context_get_is_final(NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT), "default message context");
	CHECK(nw_content_context_get_is_final(NW_CONNECTION_DEFAULT_STREAM_CONTEXT), "default stream context is final");
	CHECK(nw_content_context_get_is_final(NW_CONNECTION_FINAL_MESSAGE_CONTEXT), "final message context is final");
	nw_content_context_t cc = nw_content_context_create("mine");
	CHECK(strcmp(nw_content_context_get_identifier(cc), "mine") == 0 && !nw_content_context_get_is_final(cc), "custom context");
	nw_content_context_set_is_final(cc, true);
	CHECK(nw_content_context_get_is_final(cc), "custom context set final");
}

static struct { const char *name; void (*fn)(void); } tests[] = {
	{"objects", test_objects}, {"tcp-echo", test_tcp_echo}, {"refused", test_refused}, {"unresolvable", test_unresolvable},
	{"eof", test_eof}, {"udp", test_udp}, {"cancel-preparing", test_cancel_preparing}, {"cancel-receive", test_cancel_receive}, {"no-queue", test_no_queue},
};

int main(int argc, char **argv) {
	setvbuf(stdout, NULL, _IOLBF, 0);
	cq = dispatch_queue_create("nw-connection-test", NULL);
	const char *which = argc > 1 ? argv[1] : "all";
	bool ran = false;
	for (size_t i = 0; i < sizeof(tests) / sizeof(tests[0]); i++) {
		if (strcmp(which, "all") != 0 && strcmp(which, tests[i].name) != 0)
			continue;
		printf("== %s\n", tests[i].name);
		fflush(stdout);
		tests[i].fn();
		ran = true;
	}
	if (!ran) { printf("unknown test\n"); return 2; }
	printf(failures ? "FAILED (%d)\n" : "PASSED\n", failures);
	return failures != 0;
}
