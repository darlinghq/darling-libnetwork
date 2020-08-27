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

#ifndef _NW_PROTOCOL_OPTIONS_H_
#define _NW_PROTOCOL_OPTIONS_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_options);

void* nw_protocol_options_access_handle(void);
void* nw_protocol_options_copy(void);
void* nw_protocol_options_copy_definition(void);
void* nw_protocol_options_get_hash(void);
void* nw_protocol_options_get_log_id_num(void);
void* nw_protocol_options_get_log_id_str(void);
void* nw_protocol_options_is_quic(void);
void* nw_protocol_options_is_quic_connection(void);
void* nw_protocol_options_is_quic_stream(void);
void* nw_protocol_options_is_tcp(void);

#endif // _NW_PROTOCOL_OPTIONS_H_
