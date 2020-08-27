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

#ifndef _NW_PROTOCOL_STACK_H_
#define _NW_PROTOCOL_STACK_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_stack);

void* nw_protocol_stack_append_application_protocol(void);
void* nw_protocol_stack_clear_application_protocols(void);
void* nw_protocol_stack_copy_application_protocols(void);
void* nw_protocol_stack_copy_internet_protocol(void);
void* nw_protocol_stack_copy_transport_protocol(void);
void* nw_protocol_stack_create_empty(void);
void* nw_protocol_stack_includes_protocol(void);
void* nw_protocol_stack_iterate_application_protocols(void);
void* nw_protocol_stack_prepend_application_protocol(void);
void* nw_protocol_stack_remove_protocol(void);
void* nw_protocol_stack_set_application_protocols(void);
void* nw_protocol_stack_set_internet_protocol(void);
void* nw_protocol_stack_set_transport_protocol(void);

#endif // _NW_PROTOCOL_STACK_H_
