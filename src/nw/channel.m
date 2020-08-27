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

#import <nw/channel.h>
#include <nw/internal/stubs.h>

@implementation _NW_OS_OBJECT_IMPL(nw_channel)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_channel_close);
DARLING_NW_STUB(nw_channel_create_with_attributes);
DARLING_NW_STUB(nw_channel_create_with_nexus);
DARLING_NW_STUB(nw_channel_get_advisory_region);
DARLING_NW_STUB(nw_channel_get_key);
DARLING_NW_STUB(nw_channel_get_nexus_instance);
DARLING_NW_STUB(nw_channel_get_protocol_handler);
DARLING_NW_STUB(nw_channel_get_stats_region);
DARLING_NW_STUB(nw_channel_has_partial_checksum_offload);
DARLING_NW_STUB(nw_channel_set_close_automatically);
DARLING_NW_STUB(nw_channel_set_defer_input_available);
DARLING_NW_STUB(nw_channel_set_protocol_level);
