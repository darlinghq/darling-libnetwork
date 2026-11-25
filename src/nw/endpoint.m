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

#include <nw/internal/endpoint.h>
#include <nw/internal/stubs.h>
#include <arpa/inet.h>
#include <netdb.h>
#include <netinet/in.h>
#include <string.h>
#include <sys/socket.h>

@implementation _NW_CONCRETE_IMPL(nw_endpoint)

DARLING_NW_CLASS_STUB;

- (void)dealloc {
	free(hostname);
	free(port_string);
	[super dealloc];
}

@end

DARLING_NW_STUB(nw_endpoint_address_endpoint_matches_address);
DARLING_NW_STUB(nw_endpoint_copy_association);
DARLING_NW_STUB(nw_endpoint_copy_custom_data);
DARLING_NW_STUB(nw_endpoint_copy_custom_resolver_block);
DARLING_NW_STUB(nw_endpoint_copy_dictionary);
DARLING_NW_STUB(nw_endpoint_copy_host_port_endpoint_for_url);
DARLING_NW_STUB_FUNCTION(nw_interface_t NW_NULLABLE, nw_endpoint_copy_interface, (nw_endpoint_t NW_NON_NULL endpoint));
DARLING_NW_STUB(nw_endpoint_copy_original_endpoint);
DARLING_NW_STUB(nw_endpoint_copy_parent_endpoint);
DARLING_NW_STUB(nw_endpoint_copy_port_string);
DARLING_NW_STUB(nw_endpoint_copy_proxy_original_endpoint);
DARLING_NW_STUB(nw_endpoint_copy_txt_record_object);
DARLING_NW_STUB(nw_endpoint_create_address_with_ethernet);
DARLING_NW_STUB(nw_endpoint_create_address_with_port);
DARLING_NW_STUB_FUNCTION(nw_endpoint_t NW_NULLABLE, nw_endpoint_create_bonjour_service, (const char * NW_NON_NULL name, const char * NW_NON_NULL type, const char * NW_NON_NULL domain));
DARLING_NW_STUB(nw_endpoint_create_custom);
DARLING_NW_STUB(nw_endpoint_create_from_dictionary);
DARLING_NW_STUB(nw_endpoint_create_host_with_numeric_port);
DARLING_NW_STUB(nw_endpoint_create_srv);
DARLING_NW_STUB_FUNCTION(nw_endpoint_t NW_NULLABLE, nw_endpoint_create_unix, (const char * NW_NON_NULL path));
DARLING_NW_STUB(nw_endpoint_create_url);
DARLING_NW_STUB(nw_endpoint_create_with_peer_name);
DARLING_NW_STUB(nw_endpoint_create_with_sock_name);
DARLING_NW_STUB(nw_endpoint_get_address_family);
DARLING_NW_STUB(nw_endpoint_get_alternate_port);
DARLING_NW_STUB(nw_endpoint_get_bonjour_fullname);
DARLING_NW_STUB_FUNCTION(const char * NW_NULLABLE, nw_endpoint_get_bonjour_service_domain, (nw_endpoint_t NW_NON_NULL endpoint));
DARLING_NW_STUB_FUNCTION(const char * NW_NULLABLE, nw_endpoint_get_bonjour_service_name, (nw_endpoint_t NW_NON_NULL endpoint));
DARLING_NW_STUB_FUNCTION(const char * NW_NULLABLE, nw_endpoint_get_bonjour_service_type, (nw_endpoint_t NW_NON_NULL endpoint));
DARLING_NW_STUB(nw_endpoint_get_custom_data_length);
DARLING_NW_STUB(nw_endpoint_get_description);
DARLING_NW_STUB(nw_endpoint_get_domain_for_policy);
DARLING_NW_STUB(nw_endpoint_get_ethernet_address);
DARLING_NW_STUB(nw_endpoint_get_hash);
DARLING_NW_STUB(nw_endpoint_get_logging_description);
DARLING_NW_STUB(nw_endpoint_get_parent_endpoint_domain);
DARLING_NW_STUB(nw_endpoint_get_priority);
DARLING_NW_STUB(nw_endpoint_get_sanitized_url);
DARLING_NW_STUB(nw_endpoint_get_srv_name);
DARLING_NW_STUB(nw_endpoint_get_url);
DARLING_NW_STUB(nw_endpoint_get_url_hash);
DARLING_NW_STUB(nw_endpoint_get_url_path);
DARLING_NW_STUB(nw_endpoint_get_url_scheme);
DARLING_NW_STUB(nw_endpoint_get_weight);
DARLING_NW_STUB(nw_endpoint_is_broadcast);
DARLING_NW_STUB(nw_endpoint_is_custom_type);
DARLING_NW_STUB(nw_endpoint_is_equal);
DARLING_NW_STUB(nw_endpoint_set_alternate_port);
DARLING_NW_STUB_VOID_FUNCTION(nw_endpoint_set_interface, (nw_endpoint_t NW_NON_NULL endpoint, nw_interface_t NW_NULLABLE interface));
DARLING_NW_STUB(nw_endpoint_set_priority);
DARLING_NW_STUB(nw_endpoint_set_txt_record_object);
DARLING_NW_STUB(nw_endpoint_set_weight);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */



nw_endpoint_t nw_endpoint_create_host(const char *hostname, const char *port) {
	NWConcrete_nw_endpoint *endpoint = [NWConcrete_nw_endpoint new];
	endpoint->type = nw_endpoint_type_host;
	endpoint->hostname = strdup(hostname);
	endpoint->port_string = strdup(port);
	return (nw_endpoint_t)endpoint;
}

nw_endpoint_t nw_endpoint_create_address(const struct sockaddr *address) {
	NWConcrete_nw_endpoint *endpoint = [NWConcrete_nw_endpoint new];
	endpoint->type = nw_endpoint_type_address;
	size_t length = address->sa_len;
	if (length > sizeof(endpoint->address))
		length = sizeof(endpoint->address);
	memcpy(&endpoint->address, address, length);
	return (nw_endpoint_t)endpoint;
}

nw_endpoint_type_t nw_endpoint_get_type(nw_endpoint_t endpoint) {
	return ((NWConcrete_nw_endpoint *)endpoint)->type;
}

const char *nw_endpoint_get_hostname(nw_endpoint_t endpoint) {
	return ((NWConcrete_nw_endpoint *)endpoint)->hostname;
}

// The name of the tracker an endpoint's host is known as, from the system's
// list of known trackers. Darling has no such list, so no endpoint is a known
// tracker and the answer is always NULL.
const char *nw_endpoint_get_known_tracker_name(nw_endpoint_t endpoint) {
	(void)endpoint;
	return NULL;
}

const struct sockaddr *nw_endpoint_get_address(nw_endpoint_t endpoint) {
	NWConcrete_nw_endpoint *e = (NWConcrete_nw_endpoint *)endpoint;
	return e->type == nw_endpoint_type_address ? (const struct sockaddr *)&e->address : NULL;
}

char *nw_endpoint_copy_address_string(nw_endpoint_t endpoint) {
	NWConcrete_nw_endpoint *e = (NWConcrete_nw_endpoint *)endpoint;
	if (e->type == nw_endpoint_type_host)
		return strdup(e->hostname);
	char text[INET6_ADDRSTRLEN] = "";
	if (e->address.ss_family == AF_INET)
		inet_ntop(AF_INET, &((struct sockaddr_in *)&e->address)->sin_addr, text, sizeof(text));
	else if (e->address.ss_family == AF_INET6)
		inet_ntop(AF_INET6, &((struct sockaddr_in6 *)&e->address)->sin6_addr, text, sizeof(text));
	else
		return NULL;
	return strdup(text);
}

// A numeric port string, or a service name (looked up for TCP).
uint16_t nw_endpoint_get_port(nw_endpoint_t endpoint) {
	NWConcrete_nw_endpoint *e = (NWConcrete_nw_endpoint *)endpoint;
	if (e->type == nw_endpoint_type_address) {
		if (e->address.ss_family == AF_INET)
			return ntohs(((struct sockaddr_in *)&e->address)->sin_port);
		if (e->address.ss_family == AF_INET6)
			return ntohs(((struct sockaddr_in6 *)&e->address)->sin6_port);
		return 0;
	}
	if (e->port_string == NULL)
		return 0;
	char *end = NULL;
	unsigned long value = strtoul(e->port_string, &end, 10);
	if (end != e->port_string && *end == '\0' && value <= 65535)
		return (uint16_t)value;
	struct servent *service = getservbyname(e->port_string, "tcp");
	return service != NULL ? ntohs((uint16_t)service->s_port) : 0;
}
