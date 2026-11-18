/*
 This file is part of Darling.

 Copyright (C) 2020 Lubos Dolezel

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

#include <nw/internal/connection.h>
#include <nw/internal/stubs.h>
#include "darling_internal.h"
#include <errno.h>
#include <fcntl.h>
#include <netdb.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <sys/socket.h>
#include <unistd.h>
#include <tls.h>
#include <Security/SecureTransport.h>
#include <nw/endpoint.h>
#include <nw/parameters.h>

darling_nw_tls_t darling_nw_tls_create(void *options, int fd, const char *host, int32_t *status);
int32_t darling_nw_tls_handshake(darling_nw_tls_t t);
void darling_nw_tls_verify(darling_nw_tls_t t, void (^done)(bool trusted));
ssize_t darling_nw_tls_read(darling_nw_tls_t t, void *buffer, size_t length);
ssize_t darling_nw_tls_write(darling_nw_tls_t t, const void *buffer, size_t length);
void darling_nw_tls_free(darling_nw_tls_t t);

// The default contexts are real context objects, created when the library loads. The data symbols clients
// import are aliases of the storage below.
static nw_content_context_t default_message_context, default_stream_context, final_message_context;

__attribute__((constructor)) static void create_default_contexts(void) {
	default_message_context = darling_nw_content_context_create("Default Message", false);
	default_stream_context = darling_nw_content_context_create("Default Stream", true);
	final_message_context = darling_nw_content_context_create("Final Message", true);
}

__asm__(".globl _NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT\n"
        ".set _NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, _default_message_context\n"
        ".globl _NW_CONNECTION_DEFAULT_STREAM_CONTEXT\n"
        ".set _NW_CONNECTION_DEFAULT_STREAM_CONTEXT, _default_stream_context\n"
        ".globl _NW_CONNECTION_FINAL_MESSAGE_CONTEXT\n"
        ".set _NW_CONNECTION_FINAL_MESSAGE_CONTEXT, _final_message_context\n"
        ".globl __nw_content_context_default_message\n"
        ".set __nw_content_context_default_message, _default_message_context\n"
        ".globl __nw_content_context_default_stream\n"
        ".set __nw_content_context_default_stream, _default_stream_context\n"
        ".globl __nw_content_context_final_send\n"
        ".set __nw_content_context_final_send, _final_message_context\n"
);

// The send completion that marks content as idempotent has no work to do when the send finishes.
const nw_connection_send_completion_t _nw_connection_send_idempotent_content = ^(nw_error_t error) {};

DARLING_NW_STUB(nw_connection_access_establishment_report);
DARLING_NW_STUB(nw_connection_access_probe_connections);
DARLING_NW_STUB(nw_connection_add_client_event);
DARLING_NW_STUB(nw_connection_add_probe);
DARLING_NW_STUB(nw_connection_append_and_start_application_protocol);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_batch, (nw_connection_t NW_NON_NULL connection, NW_NOESCAPE dispatch_block_t NW_NON_NULL batch_block));
DARLING_NW_STUB(nw_connection_better_path_available);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_cancel_current_endpoint, (nw_connection_t NW_NON_NULL connection));
DARLING_NW_STUB(nw_connection_check_experimental_probe_options);
DARLING_NW_STUB(nw_connection_copy_attempted_endpoint_array);
DARLING_NW_STUB(nw_connection_copy_connected_local_endpoint);
DARLING_NW_STUB(nw_connection_copy_connected_path);
DARLING_NW_STUB(nw_connection_copy_connected_remote_endpoint);
DARLING_NW_STUB_FUNCTION(nw_path_t NW_NULLABLE, nw_connection_copy_current_path, (nw_connection_t NW_NON_NULL connection));
DARLING_NW_STUB(nw_connection_copy_description);
DARLING_NW_STUB(nw_connection_copy_establishment_report_on_queue);
DARLING_NW_STUB(nw_connection_copy_host_endpoint);
DARLING_NW_STUB(nw_connection_copy_metadata);
DARLING_NW_STUB(nw_connection_copy_parameters);
DARLING_NW_STUB_FUNCTION(nw_protocol_metadata_t NW_NULLABLE, nw_connection_copy_protocol_metadata, (nw_connection_t NW_NON_NULL connection, nw_protocol_definition_t NW_NON_NULL definition));
DARLING_NW_STUB(nw_connection_copy_protocol_metadata_on_queue);
DARLING_NW_STUB(nw_connection_copy_tcp_info);
DARLING_NW_STUB(nw_connection_create_experimental_probe);
DARLING_NW_STUB(nw_connection_create_experimental_probe_configuration_block_for_protocol);
DARLING_NW_STUB(nw_connection_create_interface_status_monitor);
DARLING_NW_STUB(nw_connection_create_new_data_transfer_report);
DARLING_NW_STUB(nw_connection_create_with_client_id);
DARLING_NW_STUB(nw_connection_create_with_connected_socket);
DARLING_NW_STUB(nw_connection_create_with_connected_socket_and_parameters);
DARLING_NW_STUB(nw_connection_create_with_connection);
DARLING_NW_STUB(nw_connection_dump_timestamps);
DARLING_NW_STUB(nw_connection_end_activity);
DARLING_NW_STUB(nw_connection_fillout_tcp_connection_info);
DARLING_NW_STUB(nw_connection_fillout_tcp_statistics);
DARLING_NW_STUB(nw_connection_get_connected_socket);
DARLING_NW_STUB(nw_connection_get_id);
DARLING_NW_STUB_FUNCTION(uint32_t, nw_connection_get_maximum_datagram_size, (nw_connection_t NW_NON_NULL connection));
DARLING_NW_STUB(nw_connection_get_unsent_byte_count);
DARLING_NW_STUB(nw_connection_get_uuid);
DARLING_NW_STUB(nw_connection_has_proxy_attempt);
DARLING_NW_STUB(nw_connection_inject_up);
DARLING_NW_STUB(nw_connection_modify_connected_protocol_stack);
DARLING_NW_STUB(nw_connection_multipath_copy_subflow_counts);
DARLING_NW_STUB(nw_connection_multipath_get_primary_subflow_interface_index);
DARLING_NW_STUB(nw_connection_multipath_get_subflow_count);
DARLING_NW_STUB(nw_connection_read);
DARLING_NW_STUB(nw_connection_read_buffer);
DARLING_NW_STUB(nw_connection_read_multiple);
DARLING_NW_STUB(nw_connection_receive_message_with_context);
DARLING_NW_STUB(nw_connection_receive_with_context);
DARLING_NW_STUB(nw_connection_remove_probe);
DARLING_NW_STUB(nw_connection_reset_expected_progress_target);
DARLING_NW_STUB(nw_connection_reset_traffic_class);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_restart, (nw_connection_t NW_NON_NULL connection));
DARLING_NW_STUB(nw_connection_send_reply);
DARLING_NW_STUB(nw_connection_set_adaptive_read_handler);
DARLING_NW_STUB(nw_connection_set_adaptive_write_handler);
DARLING_NW_STUB(nw_connection_set_alternate_path_state_handler);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_set_better_path_available_handler, (nw_connection_t NW_NON_NULL connection, nw_connection_boolean_event_handler_t NW_NULLABLE handler));
DARLING_NW_STUB(nw_connection_set_cancel_handler);
DARLING_NW_STUB(nw_connection_set_event_handler);
DARLING_NW_STUB(nw_connection_set_excessive_keepalive_handler);
DARLING_NW_STUB(nw_connection_set_low_throughput_handler);
DARLING_NW_STUB(nw_connection_set_metadata_changed_handler);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_set_path_changed_handler, (nw_connection_t NW_NON_NULL connection, nw_connection_path_event_handler_t NW_NULLABLE handler));
DARLING_NW_STUB(nw_connection_set_read_close_handler);
DARLING_NW_STUB(nw_connection_set_tls_message_handler);
DARLING_NW_STUB(nw_connection_set_tls_prepare_handler);
DARLING_NW_STUB_VOID_FUNCTION(nw_connection_set_viability_changed_handler, (nw_connection_t NW_NON_NULL connection, nw_connection_boolean_event_handler_t NW_NULLABLE handler));
DARLING_NW_STUB(nw_connection_set_write_close_handler);
DARLING_NW_STUB(nw_connection_should_run_experimental_probe);
DARLING_NW_STUB(nw_connection_start_activity);
DARLING_NW_STUB(nw_connection_state_to_string);
DARLING_NW_STUB(nw_connection_tls_apply);
DARLING_NW_STUB(nw_connection_used_fallback);
DARLING_NW_STUB(nw_connection_used_tfo);
DARLING_NW_STUB(nw_connection_used_tls);
DARLING_NW_STUB(nw_connection_uses_multipath);
DARLING_NW_STUB(nw_connection_uses_sleep_proxy);
DARLING_NW_STUB(nw_connection_write);
DARLING_NW_STUB(nw_connection_write_close);
DARLING_NW_STUB(nw_connection_write_multiple);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */

// The connection engine: one private serial queue owns all state and the socket; handlers and completions
// are delivered on the queue given to nw_connection_set_queue. Sockets are non-blocking and driven by
// dispatch sources. Name resolution is getaddrinfo on a global queue.

#define DARLING_POSIX_ECANCELED 89
#define DARLING_POSIX_ENODATA 96

// DNS service error codes (dns_sd.h) used for the DNS error domain.
#define DARLING_DNS_NO_SUCH_RECORD (-65554)
#define DARLING_DNS_TIMEOUT (-65568)
#define DARLING_DNS_UNKNOWN (-65537)

#define DARLING_IO_BLOCKED ((ssize_t)-2)

// A completion or state notification on its way to the user's queue. The Network objects and dispatch objects
// are not Objective-C objects on every architecture (i386 uses the legacy runtime), so a block must not rely
// on capturing them: this object owns them explicitly and releases them when it is gone.
@interface DarlingNWJob : NSObject {
@public
	int kind;
	nw_connection_state_changed_handler_t stateHandler;
	nw_connection_send_completion_t sendCompletion;
	nw_connection_receive_completion_t receiveCompletion;
	nw_connection_state_t state;
	dispatch_data_t data;
	nw_content_context_t context;
	bool complete;
	nw_error_t error;
}
- (void)run;
@end

@implementation DarlingNWJob
- (void)run {
	if (kind == 0)
		stateHandler(state, error);
	else if (kind == 1)
		sendCompletion(error);
	else
		receiveCompletion(data, context, complete, error);
}
- (void)dealloc {
	[stateHandler release];
	[sendCompletion release];
	[receiveCompletion release];
	if (data != NULL)
		dispatch_release(data);
	[(id)context release];
	[(id)error release];
	[super dealloc];
}
@end

@interface DarlingNWRx : NSObject {
@public
	uint32_t minimum, maximum;
	bool message;
	nw_connection_receive_completion_t completion;
}
@end
@implementation DarlingNWRx
- (void)dealloc { [completion release]; [super dealloc]; }
@end

@interface DarlingNWTx : NSObject {
@public
	NSData *data;
	size_t offset;
	bool fin;
	nw_connection_send_completion_t completion;
}
@end
@implementation DarlingNWTx
- (void)dealloc { [data release]; [completion release]; [super dealloc]; }
@end

static void release_cleanup(id *object) {
	[*object release];
}

enum {
	PhaseIdle,
	PhaseResolving,
	PhaseConnecting,
	PhaseHandshaking,
	PhaseVerifying,
	PhaseReady,
	PhaseDone,
};

@implementation _NW_CONCRETE_IMPL(nw_connection)

DARLING_NW_CLASS_STUB;

- (instancetype)initWithEndpoint:(nw_endpoint_t)e parameters:(nw_parameters_t)p {
	self = [super init];
	endpoint = (nw_endpoint_t)[(id)e retain];
	parameters = (nw_parameters_t)[(id)p retain];
	io = dispatch_queue_create("com.apple.network.connection", DISPATCH_QUEUE_SERIAL);
	fd = -1;
	udp = darling_nw_parameters_get_transport(p) == DARLING_NW_PROTOCOL_UDP;
	receives = [NSMutableArray new];
	sends = [NSMutableArray new];
	rbuf = [NSMutableData new];
	return self;
}

- (void)dealloc {
	[self closeSocket];
	[(id)endpoint release];
	[(id)parameters release];
	[(id)lastError release];
	[(id)rxContext release];
	[addresses release];
	[receives release];
	[sends release];
	[rbuf release];
	[udpPending release];
	[stateHandler release];
	free(scratch);
	if (userQueue != NULL)
		dispatch_release(userQueue);
	dispatch_release(io);
	[super dealloc];
}

- (nw_endpoint_t)endpoint { return endpoint; }

- (void)setQueue:(dispatch_queue_t)q {
	@synchronized(self) {
		if (q != NULL)
			dispatch_retain(q);
		if (userQueue != NULL)
			dispatch_release(userQueue);
		userQueue = q;
	}
}

- (void)setStateHandler:(nw_connection_state_changed_handler_t)h {
	@synchronized(self) {
		nw_connection_state_changed_handler_t old = stateHandler;
		stateHandler = h != NULL ? [h copy] : nil;
		[old release];
	}
}

// Posts a job to the user's queue (or a global queue if none is set). The job is consumed.
- (void)post:(DarlingNWJob *)job {
	dispatch_queue_t q;
	@synchronized(self) {
		q = userQueue;
		if (q != NULL)
			dispatch_retain(q);
	}
	if (q == NULL) {
		q = dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
		dispatch_retain(q);
	}
	dispatch_async(q, ^{ [job run]; });
	dispatch_release(q);
	[job release];
}

- (void)deliverState:(nw_connection_state_t)state error:(nw_error_t)error {
	bool deliver;
	DarlingNWJob *job = [DarlingNWJob new];
	@synchronized(self) {
		job->stateHandler = [stateHandler copy];
		deliver = stateHandler != nil && userQueue != NULL;
	}
	if (!deliver) {
		[job release];
		return;
	}
	job->kind = 0;
	job->state = state;
	job->error = (nw_error_t)[(id)error retain];
	[self post:job];
}

- (void)moveTo:(nw_connection_state_t)state errorDomain:(nw_error_domain_t)domain code:(int)code {
	nw_error_t error = code != 0 ? darling_nw_error_create(domain, code) : NULL;
	[(id)lastError release];
	lastError = (state == nw_connection_state_waiting) ? (nw_error_t)[(id)error retain] : NULL;
	[self deliverState:state error:error];
	[(id)error release];
}

- (void)completeSend:(DarlingNWTx *)tx code:(int)code {
	DarlingNWJob *job = [DarlingNWJob new];
	job->kind = 1;
	job->sendCompletion = [tx->completion copy];
	job->error = code != 0 ? darling_nw_error_create(nw_error_domain_posix, code) : NULL;
	[self post:job];
}

- (void)completeRx:(DarlingNWRx *)rx data:(NSData *)data complete:(bool)complete context:(nw_content_context_t)ctx domain:(nw_error_domain_t)domain code:(int)code {
	DarlingNWJob *job = [DarlingNWJob new];
	job->kind = 2;
	job->receiveCompletion = [rx->completion copy];
	job->data = data != nil ? dispatch_data_create(data.bytes, data.length, NULL, DISPATCH_DATA_DESTRUCTOR_DEFAULT) : NULL;
	job->context = (nw_content_context_t)[(id)ctx retain];
	job->complete = complete;
	job->error = code != 0 ? darling_nw_error_create(domain, code) : NULL;
	[self post:job];
}

- (void)failAllPendingWithPosix:(int)code {
	NSArray *r = [receives copy], *s = [sends copy];
	[receives removeAllObjects];
	[sends removeAllObjects];
	for (DarlingNWRx *rx in r)
		[self completeRx:rx data:nil complete:false context:NULL domain:nw_error_domain_posix code:code];
	for (DarlingNWTx *tx in s)
		[self completeSend:tx code:code];
	[r release];
	[s release];
}

- (void)failWithDomain:(nw_error_domain_t)domain code:(int)code {
	if (cancelled || phase == PhaseDone)
		return;
	phase = PhaseDone;
	[self closeSocket];
	[self failAllPendingWithPosix:ENOTCONN];
	[self moveTo:nw_connection_state_failed errorDomain:domain code:code];
}

- (void)cancelNow {
	if (cancelled)
		return;
	cancelled = true;
	phase = PhaseDone;
	[self closeSocket];
	[self failAllPendingWithPosix:DARLING_POSIX_ECANCELED];
	nw_error_t error = (nw_error_t)[(id)lastError retain];
	[self deliverState:nw_connection_state_cancelled error:error];
	[(id)error release];
	[self setStateHandler:NULL];
}

- (void)cancel {
	[self retain];
	dispatch_async(io, ^{ [self cancelNow]; [self release]; });
}

// --- start and connect ---

- (void)start {
	@synchronized(self) {
		// Starting needs a queue for the callbacks; without one nothing happens.
		if (started || userQueue == NULL)
			return;
		started = true;
	}
	[self retain];
	dispatch_async(io, ^{ [self begin]; [self release]; });
}

static int dns_code(int gai) {
	if (gai == EAI_NONAME)
		return DARLING_DNS_NO_SUCH_RECORD;
	if (gai == EAI_AGAIN)
		return DARLING_DNS_TIMEOUT;
	return DARLING_DNS_UNKNOWN;
}

- (void)begin {
	if (cancelled)
		return;
	[self moveTo:nw_connection_state_preparing errorDomain:nw_error_domain_posix code:0];
	addresses = [NSMutableArray new];
	if (nw_endpoint_get_type(endpoint) == nw_endpoint_type_address) {
		const struct sockaddr *sa = nw_endpoint_get_address(endpoint);
		[addresses addObject:[NSData dataWithBytes:sa length:sa->sa_len]];
		[self tryNextAddress];
		return;
	}
	phase = PhaseResolving;
	char *host = strdup(nw_endpoint_get_hostname(endpoint));
	char *port = NULL;
	asprintf(&port, "%u", nw_endpoint_get_port(endpoint));
	bool isUDP = udp;
	[self retain];
	dispatch_async(dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0), ^{
		struct addrinfo hints, *list = NULL;
		memset(&hints, 0, sizeof(hints));
		hints.ai_family = AF_UNSPEC;
		hints.ai_socktype = isUDP ? SOCK_DGRAM : SOCK_STREAM;
		int rc = getaddrinfo(host, port, &hints, &list);
		free(host);
		free(port);
		NSMutableArray *found = [NSMutableArray array];
		for (struct addrinfo *a = list; rc == 0 && a != NULL; a = a->ai_next)
			[found addObject:[NSData dataWithBytes:a->ai_addr length:a->ai_addrlen]];
		if (list != NULL)
			freeaddrinfo(list);
		dispatch_async(io, ^{
			[self resolved:found error:rc];
			[self release];
		});
	});
}

- (void)resolved:(NSArray *)found error:(int)rc {
	if (cancelled)
		return;
	if (rc != 0 || found.count == 0) {
		// Like the original, the connection waits for the problem to go away rather than failing.
		phase = PhaseIdle;
		[self moveTo:nw_connection_state_waiting errorDomain:nw_error_domain_dns code:dns_code(rc != 0 ? rc : EAI_NONAME)];
		return;
	}
	[addresses addObjectsFromArray:found];
	[self tryNextAddress];
}

- (void)tryNextAddress {
	while (addressIndex < addresses.count) {
		NSData *a = addresses[addressIndex++];
		const struct sockaddr *sa = a.bytes;
		int s = socket(sa->sa_family, udp ? SOCK_DGRAM : SOCK_STREAM, 0);
		if (s < 0) {
			lastErrno = errno;
			continue;
		}
		fcntl(s, F_SETFL, fcntl(s, F_GETFL) | O_NONBLOCK);
		int one = 1;
		setsockopt(s, SOL_SOCKET, SO_NOSIGPIPE, &one, sizeof(one));
		if (!udp && darling_nw_tcp_options_get_no_delay(darling_nw_parameters_get_transport_options(parameters)))
			setsockopt(s, IPPROTO_TCP, TCP_NODELAY, &one, sizeof(one));
		int rc = connect(s, sa, (socklen_t)a.length);
		if (rc != 0 && errno != EINPROGRESS) {
			lastErrno = errno;
			close(s);
			continue;
		}
		[self openSources:s];
		if (rc == 0) {
			[self connected];
		} else {
			phase = PhaseConnecting;
			[self updateSources];
		}
		return;
	}
	phase = PhaseIdle;
	[self moveTo:nw_connection_state_waiting errorDomain:nw_error_domain_posix code:lastErrno != 0 ? lastErrno : EHOSTUNREACH];
}

- (void)connectDone {
	int err = 0;
	socklen_t len = sizeof(err);
	getsockopt(fd, SOL_SOCKET, SO_ERROR, &err, &len);
	if (err != 0) {
		lastErrno = err;
		[self closeSocket];
		[self tryNextAddress];
		return;
	}
	[self connected];
}

- (void)connected {
	nw_protocol_options_t tlsOptions = darling_nw_parameters_get_tls(parameters);
	if (udp || tlsOptions == NULL) {
		[self becomeReady];
		return;
	}
	const char *host = nw_endpoint_get_hostname(endpoint);
	char *addressText = NULL;
	if (host == NULL)
		host = addressText = nw_endpoint_copy_address_string(endpoint);
	int32_t status = 0;
	tls = darling_nw_tls_create((void *)tlsOptions, fd, host, &status);
	free(addressText);
	if (tls == NULL) {
		[self failWithDomain:nw_error_domain_tls code:status];
		return;
	}
	phase = PhaseHandshaking;
	[self handshakeStep];
}

- (void)handshakeStep {
	int32_t r = darling_nw_tls_handshake(tls);
	if (r == TLS_WANT_POLLIN || r == TLS_WANT_POLLOUT) {
		tlsWant = r;
		[self updateSources];
		return;
	}
	if (r != 0) {
		[self failWithDomain:nw_error_domain_tls code:r];
		return;
	}
	phase = PhaseVerifying;
	[self updateSources];
	[self retain];
	darling_nw_tls_verify(tls, ^(bool trusted) {
		dispatch_async(io, ^{
			if (!cancelled && phase == PhaseVerifying) {
				if (trusted)
					[self becomeReady];
				else
					[self failWithDomain:nw_error_domain_tls code:errSSLXCertChainInvalid];
			}
			[self release];
		});
	});
}

- (void)becomeReady {
	phase = PhaseReady;
	[self moveTo:nw_connection_state_ready errorDomain:nw_error_domain_posix code:0];
	[self pumpWrites];
	[self pumpReads];
	[self updateSources];
}

// --- sockets and sources ---

- (void)openSources:(int)s {
	fd = s;
	__block int remaining = 2;
	int descriptor = s;
	dispatch_block_t closer = ^{ if (--remaining == 0) close(descriptor); };
	readSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_READ, s, 0, io);
	writeSource = dispatch_source_create(DISPATCH_SOURCE_TYPE_WRITE, s, 0, io);
	readSuspended = writeSuspended = true;
	dispatch_source_set_event_handler(readSource, ^{ [self readReady]; });
	dispatch_source_set_event_handler(writeSource, ^{ [self writeReady]; });
	dispatch_source_set_cancel_handler(readSource, closer);
	dispatch_source_set_cancel_handler(writeSource, closer);
}

- (void)closeSocket {
	if (tls != NULL) {
		darling_nw_tls_free(tls);
		tls = NULL;
	}
	if (fd < 0)
		return;
	dispatch_source_t sources[2] = { readSource, writeSource };
	bool suspended[2] = { readSuspended, writeSuspended };
	readSource = writeSource = NULL;
	fd = -1;
	for (int i = 0; i < 2; i++) {
		dispatch_source_cancel(sources[i]);
		if (suspended[i])
			dispatch_resume(sources[i]);
		dispatch_release(sources[i]);
	}
}

- (void)updateSources {
	if (fd < 0)
		return;
	bool wantRead = false, wantWrite = false;
	switch (phase) {
	case PhaseConnecting:
		wantWrite = true;
		break;
	case PhaseHandshaking:
		wantRead = tlsWant == TLS_WANT_POLLIN;
		wantWrite = tlsWant == TLS_WANT_POLLOUT;
		break;
	case PhaseReady:
		wantRead = receives.count > 0;
		wantWrite = sends.count > 0 && !udp;
		break;
	default:
		break;
	}
	if (wantRead == readSuspended) {
		readSuspended ? dispatch_resume(readSource) : dispatch_suspend(readSource);
		readSuspended = !readSuspended;
	}
	if (wantWrite == writeSuspended) {
		writeSuspended ? dispatch_resume(writeSource) : dispatch_suspend(writeSource);
		writeSuspended = !writeSuspended;
	}
}

- (void)readReady {
	if (phase == PhaseHandshaking)
		[self handshakeStep];
	else if (phase == PhaseReady)
		[self pumpReads];
}

- (void)writeReady {
	if (phase == PhaseConnecting)
		[self connectDone];
	else if (phase == PhaseHandshaking)
		[self handshakeStep];
	else if (phase == PhaseReady)
		[self pumpWrites];
}

// --- receive ---

// One read from the transport: bytes, 0 at end of stream, DARLING_IO_BLOCKED, or -1 with rerr* set.
- (ssize_t)readSome:(void *)buffer length:(size_t)length {
	if (tls != NULL) {
		ssize_t n = darling_nw_tls_read(tls, buffer, length);
		if (n == TLS_WANT_POLLIN || n == TLS_WANT_POLLOUT)
			return DARLING_IO_BLOCKED;
		if (n < 0) {
			rerrDomain = nw_error_domain_tls;
			rerrCode = errSSLClosedAbort;
		}
		return n;
	}
	ssize_t n = recv(fd, buffer, length, 0);
	if (n < 0) {
		if (errno == EAGAIN || errno == EINTR)
			return DARLING_IO_BLOCKED;
		rerrDomain = nw_error_domain_posix;
		rerrCode = errno;
	}
	return n;
}

- (nw_content_context_t)receiveContext {
	if (rxContext == NULL) {
		// QUIRK: received data carries a context with the identifier "socket"; on a stream it is a final
		// context, on a datagram connection it is not. Not documented. Evidence: black-box observation
		// on macOS 26.7.3 (tier 2). Test: nw_connection_tcp_echo / nw_connection_udp (received context finality).
		rxContext = darling_nw_content_context_create("socket", !udp);
	}
	return rxContext;
}

- (void)pumpReads {
	if (scratch == NULL)
		scratch = malloc(65536);
	while (!cancelled && phase == PhaseReady && receives.count > 0) {
		// Held until the iteration ends: the request leaves the array before its completion is delivered.
		__attribute__((cleanup(release_cleanup))) DarlingNWRx *rx = [receives[0] retain];
		uint32_t maximum = rx->maximum != 0 ? rx->maximum : UINT32_MAX;
		if (udp) {
			ssize_t n = rbuf.length > 0 ? 0 : recv(fd, scratch, 65536, 0);
			if (n < 0) {
				if (errno == EAGAIN || errno == EINTR)
					break;
				// A datagram error (for example ICMP unreachable) belongs to this receive only.
				int code = errno;
				[receives removeObjectAtIndex:0];
				[self completeRx:rx data:nil complete:false context:NULL domain:nw_error_domain_posix code:code];
				continue;
			}
			// QUIRK: a datagram larger than the receive maximum is delivered in pieces: the first `maximum`
			// bytes with is_complete false, the rest by the following receive. Not documented. Evidence:
			// black-box observation on macOS 26.7.3 (tier 2). Test: nw_connection_udp (small maximum).
			[rbuf appendBytes:scratch length:n];
			NSUInteger take = MIN((NSUInteger)maximum, rbuf.length);
			NSData *chunk = [rbuf subdataWithRange:NSMakeRange(0, take)];
			[rbuf replaceBytesInRange:NSMakeRange(0, take) withBytes:NULL length:0];
			[receives removeObjectAtIndex:0];
			// The remainder of an oversize datagram stays queued ahead of the next socket read.
			[self completeRx:rx data:chunk complete:rbuf.length == 0 context:[self receiveContext] domain:0 code:0];
			continue;
		}
		uint32_t need = rx->minimum != 0 ? rx->minimum : 1;
		while (rbuf.length < need && !eof && rerrCode == 0) {
			ssize_t n = [self readSome:scratch length:65536];
			if (n > 0)
				[rbuf appendBytes:scratch length:n];
			else if (n == 0)
				eof = true;
			else if (n == DARLING_IO_BLOCKED)
				break;
			else
				break;
		}
		if (rbuf.length < need && !eof && rerrCode == 0)
			break;
		[receives removeObjectAtIndex:0];
		if (rbuf.length > 0) {
			NSUInteger take = MIN((NSUInteger)maximum, rbuf.length);
			NSData *chunk = [rbuf subdataWithRange:NSMakeRange(0, take)];
			[rbuf replaceBytesInRange:NSMakeRange(0, take) withBytes:NULL length:0];
			if (rbuf.length == 0 && !eof && rerrCode == 0) {
				// See whether the end of the stream is already there, so it is reported with the data.
				ssize_t n = [self readSome:scratch length:65536];
				if (n > 0)
					[rbuf appendBytes:scratch length:n];
				else if (n == 0)
					eof = true;
			}
			bool complete = rx->message || (eof && rbuf.length == 0);
			if (eof && rbuf.length == 0)
				eofDelivered = true;
			[self completeRx:rx data:chunk complete:complete context:[self receiveContext] domain:0 code:0];
		} else if (rerrCode != 0) {
			[self completeRx:rx data:nil complete:false context:NULL domain:rerrDomain code:rerrCode];
			[self failWithDomain:rerrDomain code:rerrCode];
			return;
		} else if (!eofDelivered) {
			eofDelivered = true;
			[self completeRx:rx data:nil complete:true context:[self receiveContext] domain:0 code:0];
		} else {
			[self completeRx:rx data:nil complete:false context:NULL domain:nw_error_domain_posix code:DARLING_POSIX_ENODATA];
		}
	}
	[self updateSources];
}

- (void)addReceive:(DarlingNWRx *)rx {
	if (cancelled || phase == PhaseDone) {
		[self completeRx:rx data:nil complete:false context:NULL domain:nw_error_domain_posix code:cancelled ? DARLING_POSIX_ECANCELED : ENOTCONN];
		return;
	}
	[receives addObject:rx];
	if (phase == PhaseReady)
		[self pumpReads];
}

// --- send ---

- (void)pumpWrites {
	while (!cancelled && phase == PhaseReady && sends.count > 0) {
		__attribute__((cleanup(release_cleanup))) DarlingNWTx *tx = [sends[0] retain];
		const uint8_t *bytes = tx->data.bytes;
		size_t length = tx->data.length;
		while (tx->offset < length || (udp && length == 0 && tx->offset == 0)) {
			ssize_t n;
			if (tls != NULL)
				n = darling_nw_tls_write(tls, bytes + tx->offset, length - tx->offset);
			else
				n = send(fd, bytes + tx->offset, length - tx->offset, 0);
			if (n == TLS_WANT_POLLIN || n == TLS_WANT_POLLOUT || (tls == NULL && n < 0 && (errno == EAGAIN || errno == EINTR)) || (n < 0 && tls == NULL && errno == ENOBUFS)) {
				[self updateSources];
				return;
			}
			if (n < 0) {
				int code = tls != NULL ? ECONNRESET : errno;
				[sends removeObjectAtIndex:0];
				[self completeSend:tx code:code];
				if (!udp) {
					[self failWithDomain:tls != NULL ? nw_error_domain_tls : nw_error_domain_posix code:tls != NULL ? errSSLClosedAbort : code];
					return;
				}
				goto next;
			}
			tx->offset += n;
			if (udp)
				break;
		}
		[sends removeObjectAtIndex:0];
		if (tx->fin && !udp)
			shutdown(fd, SHUT_WR);
		[self completeSend:tx code:0];
	next:;
	}
	[self updateSources];
}

- (void)addSend:(NSData *)data context:(nw_content_context_t)context complete:(bool)complete completion:(nw_connection_send_completion_t)completion {
	DarlingNWTx *tx = [DarlingNWTx new];
	tx->completion = [completion copy];
	if (cancelled || phase == PhaseDone) {
		[self completeSend:tx code:cancelled ? DARLING_POSIX_ECANCELED : ENOTCONN];
		[tx release];
		return;
	}
	if (udp) {
		// A datagram is built from the sends up to the one that is complete.
		if (data != nil) {
			if (udpPending == nil)
				udpPending = [NSMutableData new];
			[udpPending appendData:data];
		}
		if (!complete) {
			[self completeSend:tx code:0];
			[tx release];
			return;
		}
		data = udpPending != nil ? [[udpPending copy] autorelease] : data;
		[udpPending release];
		udpPending = nil;
	}
	tx->data = [(data != nil ? data : [NSData data]) retain];
	// A complete send on a final context (the final message or the default stream context) closes the write
	// side of a stream once its content is sent; later sends fail with EPIPE.
	tx->fin = complete && context != NULL && nw_content_context_get_is_final(context);
	if (!udp && finSent) {
		[self completeSend:tx code:EPIPE];
		[tx release];
		return;
	}
	if (tx->fin)
		finSent = true;
	[sends addObject:tx];
	[tx release];
	if (phase == PhaseReady)
		[self pumpWrites];
}

@end

// --- public API ---

static NWConcrete_nw_connection *conn(nw_connection_t c) { return (NWConcrete_nw_connection *)c; }

nw_connection_t nw_connection_create(nw_endpoint_t endpoint, nw_parameters_t parameters) {
	return (nw_connection_t)[[NWConcrete_nw_connection alloc] initWithEndpoint:endpoint parameters:parameters];
}

nw_endpoint_t nw_connection_copy_endpoint(nw_connection_t connection) {
	return (nw_endpoint_t)[(id)[conn(connection) endpoint] retain];
}

void nw_connection_set_queue(nw_connection_t connection, dispatch_queue_t queue) {
	[conn(connection) setQueue:queue];
}

void nw_connection_set_state_changed_handler(nw_connection_t connection, nw_connection_state_changed_handler_t handler) {
	[conn(connection) setStateHandler:handler];
}

void nw_connection_start(nw_connection_t connection) {
	[conn(connection) start];
}

void nw_connection_cancel(nw_connection_t connection) {
	[conn(connection) cancel];
}

void nw_connection_force_cancel(nw_connection_t connection) {
	[conn(connection) cancel];
}

static NSData *flatten(dispatch_data_t content) {
	if (content == NULL)
		return nil;
	NSMutableData *flat = [NSMutableData dataWithCapacity:dispatch_data_get_size(content)];
	dispatch_data_apply(content, ^bool(dispatch_data_t region, size_t offset, const void *buffer, size_t size) {
		[flat appendBytes:buffer length:size];
		return true;
	});
	return flat;
}

void nw_connection_send(nw_connection_t connection, dispatch_data_t content, nw_content_context_t context, bool is_complete, nw_connection_send_completion_t completion_handler) {
	NWConcrete_nw_connection *c = conn(connection);
	NSData *data = flatten(content);
	[c retain];
	[(id)context retain];
	dispatch_async(c->io, ^{
		[c addSend:data context:context complete:is_complete completion:completion_handler];
		[(id)context release];
		[c release];
	});
}

static void receive(nw_connection_t connection, uint32_t minimum, uint32_t maximum, bool message, nw_connection_receive_completion_t completion) {
	NWConcrete_nw_connection *c = conn(connection);
	DarlingNWRx *rx = [DarlingNWRx new];
	rx->minimum = minimum;
	rx->maximum = maximum;
	rx->message = message;
	rx->completion = [completion copy];
	[c retain];
	dispatch_async(c->io, ^{
		[c addReceive:rx];
		[rx release];
		[c release];
	});
}

void nw_connection_receive(nw_connection_t connection, uint32_t minimum_length, uint32_t maximum_length, nw_connection_receive_completion_t completion_handler) {
	receive(connection, minimum_length, maximum_length, false, completion_handler);
}

void nw_connection_receive_message(nw_connection_t connection, nw_connection_receive_completion_t completion) {
	receive(connection, 1, UINT32_MAX, true, completion);
}
