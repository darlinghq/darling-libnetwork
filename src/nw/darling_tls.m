/*
 This file is part of Darling.

 Copyright (C) 2026 Darling Developers

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

// TLS for the Network Swift overlay. Security's sec_protocol_options_* and
// sec_protocol_metadata_* functions keep their state in structs they reach through
// nw_protocol_options_access_handle and nw_protocol_metadata_access_handle, so the objects
// here hold those structs (Security's own definitions, from SecProtocolPriv.h) and the
// app's settings land in them. The handshake and records are LibreSSL's libtls over the
// connection's socket; the overlay drives it through the darling_nw_tls_* functions.

#import <Foundation/Foundation.h>
#include <Security/SecProtocolPriv.h>
#include <Security/SecProtocolTypes.h>
#include <Security/SecCertificate.h>
#include <Security/SecTrust.h>
#include <Security/SecPolicy.h>
#include <CoreFoundation/CoreFoundation.h>
#include <Block.h>
#include <Security/SecureTransport.h>
#include <Security/SecBase.h>
#include <string.h>
#include <stdlib.h>
#include <tls.h>
#include <xpc/xpc.h>
#include <dispatch/dispatch.h>

#define NW_EXPORT __attribute__((visibility("default")))

@protocol OS_nw_protocol_options <NSObject>
@end
@protocol OS_nw_protocol_metadata <NSObject>
@end

@interface DarlingNWTLSOptions : NSObject <OS_sec_protocol_options, OS_nw_protocol_options> {
@public
	struct sec_protocol_options_content content;
}
@end

@implementation DarlingNWTLSOptions

- (void)dealloc
{
	free(content.server_name);
	if (content.application_protocols != NULL)
		xpc_release(content.application_protocols);
	if (content.verify_block != NULL)
		Block_release(content.verify_block);
	if (content.verify_queue != NULL)
		dispatch_release(content.verify_queue);
	[super dealloc];
}

@end

@interface DarlingNWTLSMetadata : NSObject <OS_sec_protocol_metadata, OS_nw_protocol_metadata> {
@public
	struct sec_protocol_metadata_content content;
}
@end

@implementation DarlingNWTLSMetadata

- (void)dealloc
{
	free((void *)content.negotiated_protocol);
	free((void *)content.server_name);
	if (content.trust_ref != NULL)
		[(id)content.trust_ref release];
	[super dealloc];
}

@end

NW_EXPORT void *nw_tls_create_options(void)
{
	return [DarlingNWTLSOptions new];
}

// Network.framework's TLS options are the sec_protocol_options object itself.
NW_EXPORT sec_protocol_options_t nw_tls_copy_sec_protocol_options(void *options)
{
	if (![(id)options isKindOfClass:[DarlingNWTLSOptions class]])
		return NULL;
	return (sec_protocol_options_t)[(id)options retain];
}

NW_EXPORT sec_protocol_metadata_t nw_tls_copy_sec_protocol_metadata(void *metadata)
{
	if (![(id)metadata isKindOfClass:[DarlingNWTLSMetadata class]])
		return NULL;
	return (sec_protocol_metadata_t)[(id)metadata retain];
}

NW_EXPORT bool nw_protocol_options_access_handle(void *options, sec_access_block_t access_block)
{
	if (options == NULL || ![(id)options isKindOfClass:[DarlingNWTLSOptions class]])
		return false;
	return access_block(&((DarlingNWTLSOptions *)options)->content);
}

NW_EXPORT bool nw_protocol_metadata_access_handle(void *metadata, sec_access_block_t access_block)
{
	if (metadata == NULL || ![(id)metadata isKindOfClass:[DarlingNWTLSMetadata class]])
		return false;
	return access_block(&((DarlingNWTLSMetadata *)metadata)->content);
}

struct darling_nw_tls {
	struct tls *ctx;
	struct tls_config *config;
	DarlingNWTLSOptions *options;
	DarlingNWTLSMetadata *metadata;
	char *server_name;
	char error[256];
};
typedef struct darling_nw_tls *darling_nw_tls_t;

// The libtls protocol mask for the version range, or 0 when no version in the range can be
// spoken. LibreSSL 2.8's libtls speaks TLS 1.0 to 1.2: a range that asks for TLS 1.3 or newer
// only is not satisfied by a lower version, so it fails rather than silently downgrading.
static uint32_t protocol_mask(SSLProtocol min, SSLProtocol max)
{
	int low = min == kTLSProtocol11 ? 1 : (min == kTLSProtocol12 ? 2 : (min >= kTLSProtocol13 ? 3 : 0));
	int high = (max == kSSLProtocolUnknown || max >= kTLSProtocol12) ? 2 : max == kTLSProtocol11 ? 1 : 0;
	if (low > high)
		return 0;
	uint32_t mask = 0;
	for (int v = low; v <= high; v++)
		mask |= TLS_PROTOCOL_TLSv1_0 << v;
	return mask;
}

// The comma-separated ALPN list libtls takes, from the strings and (protocol, transport) tuples
// sec_protocol_options_add_tls_application_protocol and its transport-specific variant append.
static char *alpn_list(xpc_object_t protocols)
{
	if (protocols == NULL || xpc_get_type(protocols) != XPC_TYPE_ARRAY)
		return NULL;
	size_t count = xpc_array_get_count(protocols), length = 0;
	char *list = NULL;
	for (size_t i = 0; i < count; i++) {
		xpc_object_t entry = xpc_array_get_value(protocols, i);
		const char *name = NULL;
		if (xpc_get_type(entry) == XPC_TYPE_STRING)
			name = xpc_string_get_string_ptr(entry);
		else if (xpc_get_type(entry) == XPC_TYPE_ARRAY && xpc_array_get_count(entry) >= 2
				&& xpc_array_get_uint64(entry, 1) != 2 /* sec_protocol_transport_quic */)
			name = xpc_array_get_string(entry, 0);
		if (name == NULL || *name == '\0')
			continue;
		size_t add = strlen(name);
		char *grown = realloc(list, length + add + 2);
		if (grown == NULL)
			break;
		list = grown;
		if (length > 0)
			list[length++] = ',';
		memcpy(list + length, name, add + 1);
		length += add;
	}
	return list;
}

static int32_t fail(darling_nw_tls_t t, int32_t status, const char *what)
{
	snprintf(t->error, sizeof(t->error), "%s", what != NULL ? what : "TLS failure");
	return status;
}

// A client session over the connected socket `fd`. `host` is the name the connection was asked
// for, used for SNI and the certificate check unless the options name a server. On failure,
// returns NULL and stores the OSStatus in *status.
NW_EXPORT darling_nw_tls_t darling_nw_tls_create(sec_protocol_options_t options, int fd, const char *host, int32_t *status)
{
	if (![(id)options isKindOfClass:[DarlingNWTLSOptions class]]) {
		*status = errSSLBadConfiguration;
		return NULL;
	}
	darling_nw_tls_t t = calloc(1, sizeof(*t));
	if (t == NULL) {
		*status = errSSLInternal;
		return NULL;
	}
	t->options = [(DarlingNWTLSOptions *)options retain];
	struct sec_protocol_options_content *content = &t->options->content;

	t->config = tls_config_new();
	t->ctx = tls_client();
	if (t->config == NULL || t->ctx == NULL) {
		*status = errSSLInternal;
		goto failed;
	}
	uint32_t protocols = protocol_mask(content->min_version, content->max_version);
	if (protocols == 0) {
		*status = fail(t, errSSLBadConfiguration, "no TLS version in the requested range is supported");
		goto failed;
	}
	tls_config_set_protocols(t->config, protocols);
	char *alpn = alpn_list(content->application_protocols);
	if (alpn != NULL) {
		tls_config_set_alpn(t->config, alpn);
		free(alpn);
	}
	// Trust is settled after the handshake through Security (darling_nw_tls_verify), with the
	// system trust and the application's verify block when it set one, so libtls's own
	// certificate checks are not used. The session is not usable until that has succeeded.
	tls_config_insecure_noverifycert(t->config);
	tls_config_insecure_noverifyname(t->config);
	if (tls_configure(t->ctx, t->config) != 0) {
		*status = fail(t, errSSLBadConfiguration, tls_error(t->ctx));
		goto failed;
	}
	const char *name = content->server_name != NULL ? content->server_name : host;
	t->server_name = name != NULL ? strdup(name) : NULL;
	if (tls_connect_socket(t->ctx, fd, content->disable_sni ? NULL : t->server_name) != 0) {
		*status = fail(t, errSSLBadConfiguration, tls_error(t->ctx));
		goto failed;
	}
	t->metadata = [DarlingNWTLSMetadata new];
	return t;

failed:
	if (t->ctx != NULL)
		tls_free(t->ctx);
	if (t->config != NULL)
		tls_config_free(t->config);
	[t->options release];
	free(t->server_name);
	free(t);
	return NULL;
}

static void fill_metadata(darling_nw_tls_t t)
{
	struct sec_protocol_metadata_content *content = &t->metadata->content;
	const char *alpn = tls_conn_alpn_selected(t->ctx);
	if (alpn != NULL) {
		content->negotiated_protocol = strdup(alpn);
		content->alpn_used = 1;
	}
	if (t->server_name != NULL)
		content->server_name = strdup(t->server_name);
	const char *version = tls_conn_version(t->ctx);
	if (version != NULL) {
		if (strcmp(version, "TLSv1.2") == 0)
			content->negotiated_protocol_version = kTLSProtocol12;
		else if (strcmp(version, "TLSv1.1") == 0)
			content->negotiated_protocol_version = kTLSProtocol11;
		else if (strcmp(version, "TLSv1") == 0)
			content->negotiated_protocol_version = kTLSProtocol1;
	}
}

// One step of the handshake: 0 when it is done, TLS_WANT_POLLIN or TLS_WANT_POLLOUT when the
// socket has to become readable or writable first, or an OSStatus (negative, below -9000).
NW_EXPORT int32_t darling_nw_tls_handshake(darling_nw_tls_t t)
{
	int result = tls_handshake(t->ctx);
	if (result == TLS_WANT_POLLIN || result == TLS_WANT_POLLOUT)
		return result;
	if (result != 0) {
		const char *message = tls_error(t->ctx);
		int32_t status = errSSLHandshakeFail;
		if (message != NULL && (strstr(message, "certificate") != NULL || strstr(message, "verify") != NULL
				|| strstr(message, "name") != NULL))
			status = errSSLXCertChainInvalid;
		return fail(t, status, message);
	}
	fill_metadata(t);
	return 0;
}

// The DER certificates in a PEM chain, leaf first, as SecCertificates in a CFArray.
static CFArrayRef certificates_from_pem(const uint8_t *pem, size_t length)
{
	CFMutableArrayRef certificates = CFArrayCreateMutable(NULL, 0, &kCFTypeArrayCallBacks);
	if (pem == NULL)
		return certificates;
	static const char begin[] = "-----BEGIN CERTIFICATE-----", end[] = "-----END CERTIFICATE-----";
	const char *text = (const char *)pem, *limit = text + length;
	while (text < limit) {
		const char *start = memmem(text, limit - text, begin, sizeof(begin) - 1);
		if (start == NULL)
			break;
		start += sizeof(begin) - 1;
		const char *stop = memmem(start, limit - start, end, sizeof(end) - 1);
		if (stop == NULL)
			break;
		uint8_t *der = malloc((stop - start) * 3 / 4 + 3);
		size_t used = 0;
		uint32_t bits = 0;
		int count = 0;
		for (const char *c = start; c < stop; c++) {
			int value;
			if (*c >= 'A' && *c <= 'Z') value = *c - 'A';
			else if (*c >= 'a' && *c <= 'z') value = *c - 'a' + 26;
			else if (*c >= '0' && *c <= '9') value = *c - '0' + 52;
			else if (*c == '+') value = 62;
			else if (*c == '/') value = 63;
			else continue;
			bits = (bits << 6) | value;
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
		free(der);
		SecCertificateRef certificate = SecCertificateCreateWithData(NULL, data);
		CFRelease(data);
		if (certificate != NULL) {
			CFArrayAppendValue(certificates, certificate);
			CFRelease(certificate);
		}
		text = stop + sizeof(end) - 1;
	}
	return certificates;
}

// Settles trust once the handshake is done, through Security: the peer's chain is evaluated
// for the server name (SSL policy, system trust). With the application's verify block, the block
// receives the chain as a sec_trust_t and its answer decides; without one, the evaluation
// result decides. Calls `done` exactly once, so a session whose trust was not established is
// never reported as trusted.
NW_EXPORT void darling_nw_tls_verify(darling_nw_tls_t t, void (^done)(bool trusted))
{
	struct sec_protocol_options_content *content = &t->options->content;
	size_t length = 0;
	const uint8_t *pem = tls_peer_cert_chain_pem(t->ctx, &length);
	CFArrayRef certificates = certificates_from_pem(pem, length);
	CFStringRef host = t->server_name != NULL ? CFStringCreateWithCString(NULL, t->server_name, kCFStringEncodingUTF8) : NULL;
	SecPolicyRef policy = SecPolicyCreateSSL(true, host);
	SecTrustRef trust = NULL;
	OSStatus status = (policy != NULL && CFArrayGetCount(certificates) > 0)
		? SecTrustCreateWithCertificates(certificates, policy, &trust) : errSecParam;
	CFRelease(certificates);
	if (policy != NULL)
		CFRelease(policy);
	if (host != NULL)
		CFRelease(host);
	if (status != errSecSuccess || trust == NULL) {
		done(false);
		return;
	}

	void (^finish)(bool) = Block_copy(done);
	if (content->verify_block == NULL) {
		dispatch_async(dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0), ^{
			bool trusted = SecTrustEvaluateWithError(trust, NULL);
			CFRelease(trust);
			finish(trusted);
			Block_release(finish);
		});
		return;
	}

	sec_trust_t sec_trust = sec_trust_create(trust);
	CFRelease(trust);
	if (sec_trust == NULL) {
		finish(false);
		Block_release(finish);
		return;
	}
	t->metadata->content.trust_ref = (sec_trust_t)[(id)sec_trust retain];

	sec_protocol_verify_t verify_block = Block_copy(content->verify_block);
	dispatch_queue_t queue = content->verify_queue != NULL ? content->verify_queue
		: dispatch_get_global_queue(QOS_CLASS_DEFAULT, 0);
	DarlingNWTLSMetadata *metadata = [t->metadata retain];
	dispatch_async(queue, ^{
		verify_block((sec_protocol_metadata_t)metadata, sec_trust, ^(bool result) {
			finish(result);
			Block_release(finish);
		});
		Block_release(verify_block);
		[metadata release];
		[(id)sec_trust release];
	});
}

// tls_read and tls_write: bytes moved, 0 at the end of the stream (read), TLS_WANT_POLLIN or
// TLS_WANT_POLLOUT to wait for the socket, or -1 with darling_nw_tls_error set.
NW_EXPORT ssize_t darling_nw_tls_read(darling_nw_tls_t t, void *buffer, size_t length)
{
	ssize_t result = tls_read(t->ctx, buffer, length);
	if (result == -1)
		fail(t, errSSLClosedAbort, tls_error(t->ctx));
	return result;
}

NW_EXPORT ssize_t darling_nw_tls_write(darling_nw_tls_t t, const void *buffer, size_t length)
{
	ssize_t result = tls_write(t->ctx, buffer, length);
	if (result == -1)
		fail(t, errSSLClosedAbort, tls_error(t->ctx));
	return result;
}

NW_EXPORT const char *darling_nw_tls_error(darling_nw_tls_t t)
{
	return t->error;
}

// The session's sec_protocol_metadata_t, retained; NULL before the handshake is done.
NW_EXPORT sec_protocol_metadata_t darling_nw_tls_copy_metadata(darling_nw_tls_t t)
{
	return (sec_protocol_metadata_t)[(id)t->metadata retain];
}

// Sends close_notify (best effort: the socket is non-blocking) and frees the session. The
// socket itself is the caller's to close.
NW_EXPORT void darling_nw_tls_free(darling_nw_tls_t t)
{
	if (t == NULL)
		return;
	tls_close(t->ctx);
	tls_free(t->ctx);
	tls_config_free(t->config);
	[t->options release];
	[t->metadata release];
	free(t->server_name);
	free(t);
}
