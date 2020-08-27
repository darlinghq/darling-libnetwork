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

#ifndef _NW_DICTIONARY_H_
#define _NW_DICTIONARY_H_

#include <nw/base.h>

_NW_OS_OBJECT(nw_dictionary);
_NW_OS_CONTAINER(nw_dictionary);

void* nw_dictionary_apply(void);
void* nw_dictionary_copy(void);
void* nw_dictionary_copy_value(void);
void* nw_dictionary_create(void);
void* nw_dictionary_get_count(void);
void* nw_dictionary_set_value(void);

#endif // _NW_DICTIONARY_H_
