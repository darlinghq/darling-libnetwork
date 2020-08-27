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

#ifndef _NW_CONTENT_CONTEXT_H_
#define _NW_CONTENT_CONTEXT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_content_context);

void* nw_content_context_copy_antecedent(void);
void* nw_content_context_copy_protocol_metadata(void);
void* nw_content_context_create(void);
void* nw_content_context_foreach_protocol_metadata(void);
void* nw_content_context_get_expiration_milliseconds(void);
void* nw_content_context_get_identifier(void);
void* nw_content_context_get_is_final(void);
void* nw_content_context_get_relative_priority(void);
void* nw_content_context_set_antecedent(void);
void* nw_content_context_set_expiration_milliseconds(void);
void* nw_content_context_set_is_final(void);
void* nw_content_context_set_metadata_for_protocol(void);
void* nw_content_context_set_packet_id(void);
void* nw_content_context_set_relative_priority(void);

#endif // _NW_CONTENT_CONTEXT_H_
