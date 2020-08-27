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

#ifndef _NW_CONTEXT_H_
#define _NW_CONTEXT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_context);

void* nw_context_128k_buffer_length(void);
void* nw_context_128k_buffer_manager(void);
void* nw_context_16k_buffer_length(void);
void* nw_context_16k_buffer_manager(void);
void* nw_context_2k_buffer_length(void);
void* nw_context_2k_buffer_manager(void);
void* nw_context_64k_buffer_length(void);
void* nw_context_64k_buffer_manager(void);
void* nw_context_8k_buffer_length(void);
void* nw_context_8k_buffer_manager(void);
void* nw_context_activate(void);
void* nw_context_caches_are_shared(void);
void* nw_context_copy_implicit_context(void);
void* nw_context_create(void);
void* nw_context_get_globals_for_protocol(void);
void* nw_context_get_identifier(void);
void* nw_context_get_isolate_protocol_cache(void);
void* nw_context_get_isolate_protocol_stack(void);
void* nw_context_get_privacy_level(void);
void* nw_context_get_private_redacted(void);
void* nw_context_get_scheduling_mode(void);
void* nw_context_purge_all_endpoints(void);
void* nw_context_reset_timer_block(void);
void* nw_context_set_isolate_protocol_cache(void);
void* nw_context_set_isolate_protocol_stack(void);
void* nw_context_set_privacy_level(void);
void* nw_context_set_protocol_cache_limits(void);
void* nw_context_set_scheduling_mode(void);

#endif // _NW_CONTEXT_H_
