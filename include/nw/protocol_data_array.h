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

#ifndef _NW_PROTOCOL_DATA_ARRAY_H_
#define _NW_PROTOCOL_DATA_ARRAY_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_data_array);

void* nw_protocol_data_array_append(void);
void* nw_protocol_data_array_apply(void);
void* nw_protocol_data_array_apppend_array(void);
void* nw_protocol_data_array_count(void);
void* nw_protocol_data_array_create(void);
void* nw_protocol_data_array_data_length(void);
void* nw_protocol_data_array_first(void);
void* nw_protocol_data_array_insert_after(void);
void* nw_protocol_data_array_is_empty(void);
void* nw_protocol_data_array_last(void);
void* nw_protocol_data_array_next(void);
void* nw_protocol_data_array_prepend(void);
void* nw_protocol_data_array_prepend_array(void);
void* nw_protocol_data_array_remove(void);

#endif // _NW_PROTOCOL_DATA_ARRAY_H_
