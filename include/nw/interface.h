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

#ifndef _NW_INTERFACE_H_
#define _NW_INTERFACE_H_

#include <nw/base.h>
#include <stdint.h>

_NW_OPAQUE(nw_interface);

void* nw_interface_copy_delegate_interface(void);
void* nw_interface_copy_dictionary(void);
void* nw_interface_copy_ipv4_broadcast_endpoint(void);
void* nw_interface_copy_ipv4_netmask_endpoint(void);
void* nw_interface_create_from_dictionary(void);
void* nw_interface_create_from_necp(void);
void* nw_interface_create_static(void);
void* nw_interface_create_with_index_and_name(void);
void* nw_interface_create_with_name(void);
void* nw_interface_deep_compare(void);
void* nw_interface_functional_type_to_interface_subtype(void);
void* nw_interface_functional_type_to_interface_type(void);
void* nw_interface_get_active_state(void);
void* nw_interface_get_generation(void);
void* nw_interface_get_ipv4_broadcast(void);
void* nw_interface_get_ipv4_netmask(void);
void* nw_interface_get_ipv4_network_signature(void);
void* nw_interface_get_ipv6_network_signature(void);
void* nw_interface_get_mtu(void);
void* nw_interface_get_name(void);
void* nw_interface_get_shallow_hash(void);
void* nw_interface_get_subtype(void);
void* nw_interface_get_type(void);
void* nw_interface_is_constrained(void);
void* nw_interface_is_expensive(void);
void* nw_interface_is_multilayer_packet_logging_enabled(void);
void* nw_interface_query_lqm(void);
void* nw_interface_set_active(void);
void* nw_interface_shallow_compare(void);
void* nw_interface_subtype_get_description(void);
void* nw_interface_supports_ack_priority(void);
void* nw_interface_supports_carrier_aggregation(void);
void* nw_interface_supports_tx_start(void);
void* nw_interface_type_get_description(void);
void* nw_interface_type_to_functional_type(void);

nw_interface_t nw_interface_create_with_index(uint32_t index);

uint32_t nw_interface_get_index(nw_interface_t interface);

#endif // _NW_INTERFACE_H_
