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

// Plain C with blocks (no Foundation).
// TLS through nw_connection to a local `openssl s_server -www` with a self-signed
// certificate for "localhost". Usage: nw_tls_connection <port> <server-cert.pem>
// The cases follow the documented sec_protocol_options contract: the default evaluation
// rejects an untrusted chain, a verify block decides when set, and the name the chain is
// evaluated for is the TLS server name.

#include <CoreFoundation/CoreFoundation.h>
#include <dispatch/dispatch.h>
#include <stdlib.h>
#include <string.h>
#include <Network/Network.h>
#include <Security/Security.h>
#include <stdio.h>

static int failures;
#define CHECK(c, msg) do { if (!(c)) { printf("FAIL: %s\n", msg); failures++; } else printf("ok: %s\n", msg); } while (0)

static SecCertificateRef load_cert(const char *path)
{
	FILE *f = fopen(path, "r");
	if (f == NULL)
		return NULL;
	char text[8192];
	size_t n = fread(text, 1, sizeof(text) - 1, f);
	fclose(f);
	text[n] = 0;
	const char *a = strstr(text, "-----BEGIN CERTIFICATE-----");
	const char *b = strstr(text, "-----END CERTIFICATE-----");
	if (a == NULL || b == NULL)
		return NULL;
	a += strlen("-----BEGIN CERTIFICATE-----");
	uint8_t der[6144];
	size_t used = 0;
	uint32_t bits = 0;
	int count = 0;
	for (const char *c = a; c < b; c++) {
		const char *p = strchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", *c);
		if (*c == 0 || p == NULL)
			continue;
		bits = (bits << 6) | (uint32_t)(p - "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
		if (++count == 4) {
			der[used++] = bits >> 16;
			der[used++] = bits >> 8;
			der[used++] = bits;
			bits = 0;
			count = 0;
		}
	}
	if (count == 3) {
		der[used++] = bits >> 10;
		der[used++] = bits >> 2;
	} else if (count == 2) {
		der[used++] = bits >> 4;
	}
	CFDataRef data = CFDataCreate(NULL, der, used);
	SecCertificateRef cert = SecCertificateCreateWithData(NULL, data);
	CFRelease(data);
	return cert;
}

// mode 0: no verify block; 1: block accepts everything; 2: block evaluates against `anchor`.
static bool run(const char *host, uint16_t port, const char *server_name, int mode, SecCertificateRef anchor)
{
	dispatch_queue_t queue = dispatch_queue_create("tls-test", NULL);
	dispatch_semaphore_t done = dispatch_semaphore_create(0);
	__block bool ready = false, finished = false, got_reply = false;

	nw_parameters_t params = nw_parameters_create_secure_tcp(^(nw_protocol_options_t tls) {
		sec_protocol_options_t sec = nw_tls_copy_sec_protocol_options(tls);
		if (server_name != NULL)
			sec_protocol_options_set_tls_server_name(sec, server_name);
		if (mode > 0) {
			sec_protocol_options_set_verify_block(sec, ^(sec_protocol_metadata_t m, sec_trust_t trust, sec_protocol_verify_complete_t complete) {
				if (mode == 1) {
					complete(true);
					return;
				}
				SecTrustRef ref = sec_trust_copy_ref(trust);
				CFArrayRef anchors = CFArrayCreate(NULL, (const void **)&anchor, 1, &kCFTypeArrayCallBacks);
				SecTrustSetAnchorCertificates(ref, anchors);
				CFRelease(anchors);
				SecTrustSetAnchorCertificatesOnly(ref, true);
				complete(SecTrustEvaluateWithError(ref, NULL));
				CFRelease(ref);
			}, queue);
		}
	}, NW_PARAMETERS_DEFAULT_CONFIGURATION);

	char portstr[16];
	snprintf(portstr, sizeof(portstr), "%u", port);
	nw_endpoint_t ep = nw_endpoint_create_host(host, portstr);
	nw_connection_t conn = nw_connection_create(ep, params);
	nw_connection_set_queue(conn, queue);
	nw_connection_set_state_changed_handler(conn, ^(nw_connection_state_t state, nw_error_t error) {
		if (state == nw_connection_state_ready) {
			ready = true;
			dispatch_data_t req = dispatch_data_create("GET / HTTP/1.0\r\n\r\n", 18, queue, DISPATCH_DATA_DESTRUCTOR_DEFAULT);
			nw_connection_send(conn, req, NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT, true, ^(nw_error_t e) {});
			nw_connection_receive(conn, 1, 64, ^(dispatch_data_t content, nw_content_context_t ctx, bool complete, nw_error_t e) {
				got_reply = content != NULL && dispatch_data_get_size(content) > 0;
				nw_connection_cancel(conn);
			});
		} else if (state == nw_connection_state_waiting || state == nw_connection_state_failed) {
			// A failed handshake is reported as failed, or as waiting with the error.
			nw_connection_cancel(conn);
		} else if (state == nw_connection_state_cancelled) {
			if (!finished) {
				finished = true;
				dispatch_semaphore_signal(done);
			}
		}
	});
	nw_connection_start(conn);
	if (dispatch_semaphore_wait(done, dispatch_time(DISPATCH_TIME_NOW, 20 * NSEC_PER_SEC)) != 0) {
		printf("timeout\n");
		nw_connection_cancel(conn);
		return false;
	}
	return ready && got_reply;
}

int main(int argc, char **argv)
{
	{
		if (argc < 3)
			return 2;
		uint16_t port = (uint16_t)atoi(argv[1]);
		SecCertificateRef anchor = load_cert(argv[2]);
		CHECK(anchor != NULL, "server certificate loads");

		CHECK(!run("localhost", port, NULL, 0, NULL), "default evaluation rejects the untrusted self-signed chain");
		CHECK(run("localhost", port, NULL, 1, NULL), "a verify block that accepts lets the connection become ready and carry data");
		CHECK(run("localhost", port, "localhost", 2, anchor), "chain anchored at the server certificate passes for the matching name");
		CHECK(!run("localhost", port, "wrong.example", 2, anchor), "the same chain fails evaluation for a different TLS server name");
	}
	printf(failures ? "FAILED\n" : "PASSED\n");
	return failures != 0;
}
