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

#ifndef _NW_PARALLEL_ARRAY_H_
#define _NW_PARALLEL_ARRAY_H_

#include <nw/base.h>

_NW_OS_OBJECT(nw_parallel_array);
// strangely, not an `_NW_OS_CONTAINER`

void* nw_parallel_array_append(void);
void* nw_parallel_array_apply(void);
void* nw_parallel_array_apply_with_range(void);
void* nw_parallel_array_contains(void);
void* nw_parallel_array_copy(void);
void* nw_parallel_array_create(void);
void* nw_parallel_array_find(void);
void* nw_parallel_array_get_at_index(void);
void* nw_parallel_array_get_count(void);
void* nw_parallel_array_is_equal(void);
void* nw_parallel_array_remove_at_index(void);

#endif // _NW_PARALLEL_ARRAY_H_
