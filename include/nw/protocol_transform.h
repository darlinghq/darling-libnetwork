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

#ifndef _NW_PROTOCOL_TRANSFORM_H_
#define _NW_PROTOCOL_TRANSFORM_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_transform);

void* nw_protocol_transform_append_protocol(void);
void* nw_protocol_transform_clear_protocols_at_level(void);
void* nw_protocol_transform_copy(void);
void* nw_protocol_transform_copy_endpoint(void);
void* nw_protocol_transform_create(void);
void* nw_protocol_transform_disable_protocol(void);
void* nw_protocol_transform_get_data_mode(void);
void* nw_protocol_transform_get_fallback_mode(void);
void* nw_protocol_transform_get_fast_open_force_enable(void);
void* nw_protocol_transform_get_hash(void);
void* nw_protocol_transform_get_multipath_service(void);
void* nw_protocol_transform_get_no_path_fallback(void);
void* nw_protocol_transform_get_no_proxy(void);
void* nw_protocol_transform_get_prohibit_direct(void);
void* nw_protocol_transform_get_tfo(void);
void* nw_protocol_transform_get_tfo_no_cookie(void);
void* nw_protocol_transform_get_use_tfo_heuristics(void);
void* nw_protocol_transform_is_equal(void);
void* nw_protocol_transform_modify_parameters(void);
void* nw_protocol_transform_replace_endpoint(void);
void* nw_protocol_transform_set_data_mode(void);
void* nw_protocol_transform_set_fallback_mode(void);
void* nw_protocol_transform_set_fast_open_force_enable(void);
void* nw_protocol_transform_set_multipath_service(void);
void* nw_protocol_transform_set_no_path_fallback(void);
void* nw_protocol_transform_set_no_proxy(void);
void* nw_protocol_transform_set_prohibit_direct(void);
void* nw_protocol_transform_set_tfo(void);
void* nw_protocol_transform_set_tfo_no_cookie(void);
void* nw_protocol_transform_set_use_tfo_heuristics(void);

#endif // _NW_PROTOCOL_TRANSFORM_H_
