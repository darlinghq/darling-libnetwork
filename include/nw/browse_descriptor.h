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

#ifndef _NW_BROWSE_DESCRIPTOR_H_
#define _NW_BROWSE_DESCRIPTOR_H_

#include <nw/base.h>

_NW_OPAQUE(nw_browse_descriptor);

void* nw_browse_descriptor_copy_custom_browse_block(void);
void* nw_browse_descriptor_copy_custom_data(void);
void* nw_browse_descriptor_create_bonjour_service(void);
void* nw_browse_descriptor_create_custom(void);
void* nw_browse_descriptor_get_bonjour_service_domain(void);
void* nw_browse_descriptor_get_bonjour_service_type(void);
void* nw_browse_descriptor_get_description(void);
void* nw_browse_descriptor_get_include_txt_record(void);
void* nw_browse_descriptor_get_type(void);
void* nw_browse_descriptor_is_custom_type(void);
void* nw_browse_descriptor_set_include_txt_record(void);

#endif // _NW_BROWSE_DESCRIPTOR_H_
