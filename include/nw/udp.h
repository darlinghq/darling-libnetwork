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

#ifndef _NW_UDP_H_
#define _NW_UDP_H_

#include <stdbool.h>
#include <stdint.h>

#include <nw/base.h>
#include <nw/protocol_options.h>
#include <nw/protocol_metadata.h>

NW_RETURNS_RETAINED nw_protocol_metadata_t NW_NON_NULL nw_udp_create_metadata(void) NW_AVAILABLE_2018;
NW_RETURNS_RETAINED nw_protocol_options_t NW_NON_NULL nw_udp_create_options(void) NW_AVAILABLE_2018;

void* nw_udp_options_get_no_metadata(void);
void* nw_udp_options_set_no_metadata(void);
void nw_udp_options_set_prefer_no_checksum(nw_protocol_options_t NW_NON_NULL options, bool prefer_no_checksum) NW_AVAILABLE_2018;

#endif // _NW_UDP_H_
