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

#ifndef _NW_ENDPOINT_H_
#define _NW_ENDPOINT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_endpoint);

void* nw_endpoint_copy_address_string(void);
void* nw_endpoint_copy_association(void);
void* nw_endpoint_copy_custom_data(void);
void* nw_endpoint_copy_custom_resolver_block(void);
void* nw_endpoint_copy_dictionary(void);
void* nw_endpoint_copy_host_port_endpoint_for_url(void);
void* nw_endpoint_copy_interface(void);
void* nw_endpoint_copy_original_endpoint(void);
void* nw_endpoint_copy_parent_endpoint(void);
void* nw_endpoint_copy_port_string(void);
void* nw_endpoint_copy_proxy_original_endpoint(void);
void* nw_endpoint_copy_txt_record_object(void);
void* nw_endpoint_create_address(void);
void* nw_endpoint_create_address_with_ethernet(void);
void* nw_endpoint_create_address_with_port(void);
void* nw_endpoint_create_bonjour_service(void);
void* nw_endpoint_create_custom(void);
void* nw_endpoint_create_from_dictionary(void);
void* nw_endpoint_create_host_with_numeric_port(void);
void* nw_endpoint_create_srv(void);
void* nw_endpoint_create_unix(void);
void* nw_endpoint_create_url(void);
void* nw_endpoint_create_with_peer_name(void);
void* nw_endpoint_create_with_sock_name(void);
void* nw_endpoint_get_address(void);
void* nw_endpoint_get_address_family(void);
void* nw_endpoint_get_alternate_port(void);
void* nw_endpoint_get_bonjour_fullname(void);
void* nw_endpoint_get_bonjour_service_domain(void);
void* nw_endpoint_get_bonjour_service_name(void);
void* nw_endpoint_get_bonjour_service_type(void);
void* nw_endpoint_get_custom_data_length(void);
void* nw_endpoint_get_description(void);
void* nw_endpoint_get_domain_for_policy(void);
void* nw_endpoint_get_ethernet_address(void);
void* nw_endpoint_get_hash(void);
void* nw_endpoint_get_logging_description(void);
void* nw_endpoint_get_parent_endpoint_domain(void);
void* nw_endpoint_get_priority(void);
void* nw_endpoint_get_sanitized_url(void);
void* nw_endpoint_get_srv_name(void);
void* nw_endpoint_get_type(void);
void* nw_endpoint_get_url(void);
void* nw_endpoint_get_url_hash(void);
void* nw_endpoint_get_url_path(void);
void* nw_endpoint_get_url_scheme(void);
void* nw_endpoint_get_weight(void);
void* nw_endpoint_is_broadcast(void);
void* nw_endpoint_is_custom_type(void);
void* nw_endpoint_is_equal(void);
void* nw_endpoint_set_alternate_port(void);
void* nw_endpoint_set_interface(void);
void* nw_endpoint_set_priority(void);
void* nw_endpoint_set_txt_record_object(void);
void* nw_endpoint_set_weight(void);

nw_endpoint_t nw_endpoint_create_host(const char* hostname, const char* port);

const char* nw_endpoint_get_hostname(nw_endpoint_t endpoint);
uint16_t nw_endpoint_get_port(nw_endpoint_t endpoint);

#endif // _NW_ENDPOINT_H_
