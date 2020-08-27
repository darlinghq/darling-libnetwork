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

#ifndef _NW_FRAME_H_
#define _NW_FRAME_H_

#include <nw/base.h>

_NW_OS_OBJECT(nw_frame);

void* nw_frame_check_validity(void);
void* nw_frame_claim(void);
void* nw_frame_collapse(void);
void* nw_frame_copy_external_data(void);
void* nw_frame_copy_metadata_for_protocol(void);
void* nw_frame_copy_metadata_uuid(void);
void* nw_frame_copy_unclaimed_data(void);
void* nw_frame_create(void);
void* nw_frame_create_external(void);
void* nw_frame_effective_length(void);
void* nw_frame_finalize(void);
void* nw_frame_foreach_protocol_metadata(void);
void* nw_frame_free_buffer(void);
void* nw_frame_get_buffer(void);
void* nw_frame_get_buffer_manager_with_context(void);
void* nw_frame_get_external_data(void);
void* nw_frame_get_finalizer_context(void);
void* nw_frame_get_flow_handler(void);
void* nw_frame_get_flow_id(void);
void* nw_frame_get_internet_checksum(void);
void* nw_frame_get_internet_checksum_handler(void);
void* nw_frame_get_manager_for_size(void);
void* nw_frame_get_metadata(void);
void* nw_frame_inherit_metadata(void);
void* nw_frame_is_connection_complete(void);
void* nw_frame_is_in_array(void);
void* nw_frame_is_metadata_complete(void);
void* nw_frame_reclassify(void);
void* nw_frame_reset(void);
void* nw_frame_set_buffer_used_malloc(void);
void* nw_frame_set_buffer_used_manager(void);
void* nw_frame_set_check_validity_handler(void);
void* nw_frame_set_connection_complete(void);
void* nw_frame_set_expire_time(void);
void* nw_frame_set_external_data(void);
void* nw_frame_set_flow_handler(void);
void* nw_frame_set_flow_id(void);
void* nw_frame_set_internet_checksum(void);
void* nw_frame_set_internet_checksum_handler(void);
void* nw_frame_set_metadata(void);
void* nw_frame_set_packet_id(void);
void* nw_frame_set_reclassifier(void);
void* nw_frame_unclaim(void);
void* nw_frame_unclaimed_bytes(void);
void* nw_frame_unclaimed_length(void);
void* nw_frame_uses_external_data(void);
void* nw_frame_will_free_buffer_externally(void);

// these might need their own header
void* nw_frame_array_append(void);
void* nw_frame_array_append_array(void);
void* nw_frame_array_check_length(void);
void* nw_frame_array_first(void);
void* nw_frame_array_foreach(void);
void* nw_frame_array_init(void);
void* nw_frame_array_insert_after(void);
void* nw_frame_array_is_empty(void);
void* nw_frame_array_last(void);
void* nw_frame_array_next(void);
void* nw_frame_array_prepend(void);
void* nw_frame_array_prepend_array(void);
void* nw_frame_array_remove(void);
void* nw_frame_array_unclaimed_length(void);

// same with these
void* nw_frame_buffer_get_manager(void);
void* nw_frame_buffer_used_malloc(void);
void* nw_frame_buffer_used_manager(void);

#endif // _NW_FRAME_H_
