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

#ifndef _NW_TXT_RECORD_H_
#define _NW_TXT_RECORD_H_

#include <nw/base.h>

_NW_OPAQUE(nw_txt_record);

void* nw_txt_record_access_bytes(void);
void* nw_txt_record_access_key(void);
void* nw_txt_record_apply(void);
void* nw_txt_record_apply_internal_locked(void);
void* nw_txt_record_conforms_to_rfc_1464(void);
void* nw_txt_record_copy(void);
void* nw_txt_record_create_dictionary(void);
void* nw_txt_record_create_dictionary_with_initial_length(void);
void* nw_txt_record_create_with_bytes(void);
void* nw_txt_record_find_key(void);
void* nw_txt_record_find_start_of_key_locked(void);
void* nw_txt_record_get_bytes(void);
void* nw_txt_record_get_key(void);
void* nw_txt_record_get_key_count(void);
void* nw_txt_record_get_key_value_result(void);
void* nw_txt_record_get_length(void);
void* nw_txt_record_is_dictionary(void);
void* nw_txt_record_is_equal(void);
void* nw_txt_record_key_is_valid(void);
void* nw_txt_record_remove_key(void);
void* nw_txt_record_remove_key_locked(void);
void* nw_txt_record_set_key(void);

#endif // _NW_TXT_RECORD_H_
