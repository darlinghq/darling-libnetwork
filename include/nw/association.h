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

#ifndef _NW_ASSOCIATION_H_
#define _NW_ASSOCIATION_H_

#include <nw/base.h>

_NW_OPAQUE(nw_association);

void* nw_association_clear_cached_content_for_protocol(void);
void* nw_association_copy_current_path(void);
void* nw_association_copy_endpoint(void);
void* nw_association_create(void);
void* nw_association_create_flow(void);
void* nw_association_force_update(void);
void* nw_association_get_cached_content_for_protocol(void);
void* nw_association_get_connected_flow_count(void);
void* nw_association_is_empty(void);
void* nw_association_mark_flow_connected(void);
void* nw_association_mark_flow_disconnected(void);
void* nw_association_register(void);
void* nw_association_set_cached_content_for_protocol(void);
void* nw_association_unregister(void);

#endif // _NW_ASSOCIATION_H_
