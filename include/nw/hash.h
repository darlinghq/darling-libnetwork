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

#ifndef _NW_HASH_H_
#define _NW_HASH_H_

void* nw_hash_node_get_extra(void);
void* nw_hash_node_get_object(void);

void* nw_hash_table_add_object(void);
void* nw_hash_table_apply(void);
void* nw_hash_table_count(void);
void* nw_hash_table_create(void);
void* nw_hash_table_get_node(void);
void* nw_hash_table_get_some_node(void);
void* nw_hash_table_release(void);
void* nw_hash_table_release_all_objects(void);
void* nw_hash_table_remove_node(void);

#endif // _NW_HASH_H_
