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

#ifndef _NW_ARRAY_H_
#define _NW_ARRAY_H_

#include <nw/base.h>

_NW_OS_OBJECT(nw_array);
_NW_OS_CONTAINER(nw_array);

void* nw_array_append(void);
void* nw_array_apply(void);
void* nw_array_contains_object(void);
void* nw_array_copy(void);
void* nw_array_create(void);
void* nw_array_create_by_removal(void);
void* nw_array_create_combined_array(void);
void* nw_array_duplicate_array_without_object(void);
void* nw_array_get_count(void);
void* nw_array_get_object_at_index(void);
void* nw_array_is_equal(void);

#endif // _NW_ARRAY_H_
