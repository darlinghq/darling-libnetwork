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

#ifndef _NW_CHANNEL_H_
#define _NW_CHANNEL_H_

#include <nw/base.h>

_NW_OS_OBJECT(nw_channel);

void* nw_channel_close(void);
void* nw_channel_create_with_attributes(void);
void* nw_channel_create_with_nexus(void);
void* nw_channel_get_advisory_region(void);
void* nw_channel_get_key(void);
void* nw_channel_get_nexus_instance(void);
void* nw_channel_get_protocol_handler(void);
void* nw_channel_get_stats_region(void);
void* nw_channel_has_partial_checksum_offload(void);
void* nw_channel_set_close_automatically(void);
void* nw_channel_set_defer_input_available(void);
void* nw_channel_set_protocol_level(void);

#endif // _NW_CHANNEL_H_
