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

#ifndef _NW_PROTOCOL_DEFINITION_H_
#define _NW_PROTOCOL_DEFINITION_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_definition);

void* nw_protocol_definition_create(void);
void* nw_protocol_definition_create_named(void);
void* nw_protocol_definition_create_with_identifier(void);
void* nw_protocol_definition_get_identifier(void);
void* nw_protocol_definition_get_variant(void);
void* nw_protocol_definition_is_equal(void);
void* nw_protocol_definition_register(void);
void* nw_protocol_definition_set_cache_entry_deallocator(void);
void* nw_protocol_definition_set_copy_establishment_report(void);
void* nw_protocol_definition_set_copy_metadata(void);
void* nw_protocol_definition_set_custom_flow_map_key_size(void);
void* nw_protocol_definition_set_destroy(void);
void* nw_protocol_definition_set_flow_state_allocator(void);
void* nw_protocol_definition_set_globals_allocator(void);
void* nw_protocol_definition_set_handle_error(void);
void* nw_protocol_definition_set_handle_inbound(void);
void* nw_protocol_definition_set_handle_outbound(void);
void* nw_protocol_definition_set_inbound_events(void);
void* nw_protocol_definition_set_initialize(void);
void* nw_protocol_definition_set_instance_state_allocator(void);
void* nw_protocol_definition_set_link_state_update(void);
void* nw_protocol_definition_set_metadata_allocator(void);
void* nw_protocol_definition_set_metadata_copy_message_options(void);
void* nw_protocol_definition_set_metadata_copy_reply(void);
void* nw_protocol_definition_set_options_allocator(void);
void* nw_protocol_definition_set_options_equality_check(void);
void* nw_protocol_definition_set_outbound_events(void);
void* nw_protocol_definition_set_should_flush_cache_entry(void);
void* nw_protocol_definition_set_start(void);
void* nw_protocol_definition_set_stop(void);
void* nw_protocol_definition_unregister(void);

#endif // _NW_PROTOCOL_DEFINITION_H_
