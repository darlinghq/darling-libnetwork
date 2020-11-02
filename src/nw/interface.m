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

#include <nw/internal/interface.h>
#include <nw/internal/stubs.h>

@implementation _NW_CONCRETE_IMPL(nw_interface)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_interface_copy_delegate_interface);
DARLING_NW_STUB(nw_interface_copy_dictionary);
DARLING_NW_STUB(nw_interface_copy_ipv4_broadcast_endpoint);
DARLING_NW_STUB(nw_interface_copy_ipv4_netmask_endpoint);
DARLING_NW_STUB(nw_interface_create_from_dictionary);
DARLING_NW_STUB(nw_interface_create_from_necp);
DARLING_NW_STUB(nw_interface_create_static);
DARLING_NW_STUB(nw_interface_create_with_index_and_name);
DARLING_NW_STUB(nw_interface_create_with_name);
DARLING_NW_STUB(nw_interface_deep_compare);
DARLING_NW_STUB(nw_interface_functional_type_to_interface_subtype);
DARLING_NW_STUB(nw_interface_functional_type_to_interface_type);
DARLING_NW_STUB(nw_interface_get_active_state);
DARLING_NW_STUB(nw_interface_get_generation);
DARLING_NW_STUB(nw_interface_get_ipv4_broadcast);
DARLING_NW_STUB(nw_interface_get_ipv4_netmask);
DARLING_NW_STUB(nw_interface_get_ipv4_network_signature);
DARLING_NW_STUB(nw_interface_get_ipv6_network_signature);
DARLING_NW_STUB(nw_interface_get_mtu);
DARLING_NW_STUB(nw_interface_get_name);
DARLING_NW_STUB(nw_interface_get_shallow_hash);
DARLING_NW_STUB(nw_interface_get_subtype);
DARLING_NW_STUB(nw_interface_get_type);
DARLING_NW_STUB(nw_interface_is_constrained);
DARLING_NW_STUB(nw_interface_is_expensive);
DARLING_NW_STUB(nw_interface_is_multilayer_packet_logging_enabled);
DARLING_NW_STUB(nw_interface_query_lqm);
DARLING_NW_STUB(nw_interface_set_active);
DARLING_NW_STUB(nw_interface_shallow_compare);
DARLING_NW_STUB(nw_interface_subtype_get_description);
DARLING_NW_STUB(nw_interface_supports_ack_priority);
DARLING_NW_STUB(nw_interface_supports_carrier_aggregation);
DARLING_NW_STUB(nw_interface_supports_tx_start);
DARLING_NW_STUB(nw_interface_type_get_description);
DARLING_NW_STUB(nw_interface_type_to_functional_type);

nw_interface_t nw_interface_create_with_index(uint32_t index) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

uint32_t nw_interface_get_index(nw_interface_t interface) {
	DARLING_NW_STUB_PRINT;
	return 0;
};
