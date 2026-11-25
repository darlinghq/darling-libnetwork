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

#ifndef _NW_IP_H_
#define _NW_IP_H_

#include <stdbool.h>
#include <stdint.h>

#include <nw/base.h>
#include <nw/parameters.h>
#include <nw/protocol_options.h>
#include <nw/protocol_metadata.h>

typedef _NW_ENUM(unsigned int, nw_ip_version_t) {
	nw_ip_version_any = 0,
	nw_ip_version_4 = 4,
	nw_ip_version_6 = 6,
};

// Explicit congestion notification codepoint of an IP packet.
typedef _NW_ENUM(unsigned int, nw_ip_ecn_flag_t) {
	nw_ip_ecn_flag_non_ect = 0,
	nw_ip_ecn_flag_ect_0 = 2,
	nw_ip_ecn_flag_ect_1 = 1,
	nw_ip_ecn_flag_ce = 3,
};

NW_RETURNS_RETAINED nw_protocol_metadata_t NW_NON_NULL nw_ip_create_metadata(void) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_ip_create_options(void);
#endif // DARLING

nw_ip_ecn_flag_t nw_ip_metadata_get_ecn_flag(nw_protocol_metadata_t NW_NON_NULL metadata) NW_AVAILABLE_2018;
uint64_t nw_ip_metadata_get_receive_time(nw_protocol_metadata_t NW_NON_NULL metadata) NW_AVAILABLE_2018;
nw_service_class_t nw_ip_metadata_get_service_class(nw_protocol_metadata_t NW_NON_NULL metadata) NW_AVAILABLE_2018;
void nw_ip_metadata_set_ecn_flag(nw_protocol_metadata_t NW_NON_NULL metadata, nw_ip_ecn_flag_t ecn_flag) NW_AVAILABLE_2018;
void nw_ip_metadata_set_service_class(nw_protocol_metadata_t NW_NON_NULL metadata, nw_service_class_t service_class) NW_AVAILABLE_2018;

void nw_ip_options_set_calculate_receive_time(nw_protocol_options_t NW_NON_NULL options, bool calculate_receive_time) NW_AVAILABLE_2018;
void nw_ip_options_set_disable_fragmentation(nw_protocol_options_t NW_NON_NULL options, bool disable_fragmentation) NW_AVAILABLE_2018;
void nw_ip_options_set_hop_limit(nw_protocol_options_t NW_NON_NULL options, uint8_t hop_limit) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_ip_options_set_local_address_preference(void);
#endif // DARLING
void nw_ip_options_set_use_minimum_mtu(nw_protocol_options_t NW_NON_NULL options, bool use_minimum_mtu) NW_AVAILABLE_2018;
void nw_ip_options_set_version(nw_protocol_options_t NW_NON_NULL options, nw_ip_version_t version) NW_AVAILABLE_2018;

#endif // _NW_IP_H_
