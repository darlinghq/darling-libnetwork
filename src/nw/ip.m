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

#include <nw/ip.h>
#include <nw/internal/stubs.h>
DARLING_NW_STUB_FUNCTION(nw_protocol_metadata_t, nw_ip_create_metadata, (void));
DARLING_NW_STUB(nw_ip_create_options);
DARLING_NW_STUB_FUNCTION(nw_ip_ecn_flag_t, nw_ip_metadata_get_ecn_flag, (nw_protocol_metadata_t NW_NON_NULL metadata));
DARLING_NW_STUB_FUNCTION(uint64_t, nw_ip_metadata_get_receive_time, (nw_protocol_metadata_t NW_NON_NULL metadata));
DARLING_NW_STUB_FUNCTION(nw_service_class_t, nw_ip_metadata_get_service_class, (nw_protocol_metadata_t NW_NON_NULL metadata));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_metadata_set_ecn_flag, (nw_protocol_metadata_t NW_NON_NULL metadata, nw_ip_ecn_flag_t ecn_flag));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_metadata_set_service_class, (nw_protocol_metadata_t NW_NON_NULL metadata, nw_service_class_t service_class));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_options_set_calculate_receive_time, (nw_protocol_options_t NW_NON_NULL options, bool calculate_receive_time));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_options_set_disable_fragmentation, (nw_protocol_options_t NW_NON_NULL options, bool disable_fragmentation));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_options_set_hop_limit, (nw_protocol_options_t NW_NON_NULL options, uint8_t hop_limit));
DARLING_NW_STUB(nw_ip_options_set_local_address_preference);
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_options_set_use_minimum_mtu, (nw_protocol_options_t NW_NON_NULL options, bool use_minimum_mtu));
DARLING_NW_STUB_VOID_FUNCTION(nw_ip_options_set_version, (nw_protocol_options_t NW_NON_NULL options, nw_ip_version_t version));
