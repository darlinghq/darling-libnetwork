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

#ifndef _NW_BROWSE_RESULT_H_
#define _NW_BROWSE_RESULT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_browse_result);

void* nw_browse_result_copy_endpoint(void);
void* nw_browse_result_copy_txt_record_object(void);
void* nw_browse_result_create(void);
void* nw_browse_result_create_mutable_copy(void);
void* nw_browse_result_enumerate_interfaces(void);
void* nw_browse_result_get_change_description(void);
void* nw_browse_result_get_changes(void);
void* nw_browse_result_get_description(void);
void* nw_browse_result_get_interfaces_count(void);
void* nw_browse_result_insert_interface(void);
void* nw_browse_result_mark_immutable(void);
void* nw_browse_result_remove_interface(void);
void* nw_browse_result_set_txt_record_object(void);

#endif // _NW_BROWSE_RESULT_H_
