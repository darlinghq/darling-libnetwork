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

#ifndef _NW_PROTOCOL_METADATA_H_
#define _NW_PROTOCOL_METADATA_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_metadata);

void* nw_protocol_metadata_access_handle(void);
void* nw_protocol_metadata_copy_definition(void);
void* nw_protocol_metadata_copy_identifier(void);
void* nw_protocol_metadata_copy_message_options(void);
void* nw_protocol_metadata_copy_original(void);
void* nw_protocol_metadata_create(void);
void* nw_protocol_metadata_create_reply(void);
void* nw_protocol_metadata_create_singleton(void);
void* nw_protocol_metadata_is_framer_message(void);
void* nw_protocol_metadata_is_ip(void);
void* nw_protocol_metadata_is_quic_connection(void);
void* nw_protocol_metadata_is_quic_stream(void);
void* nw_protocol_metadata_is_tcp(void);
void* nw_protocol_metadata_is_tls(void);
void* nw_protocol_metadata_is_udp(void);
void* nw_protocol_metadata_is_ws(void);
void* nw_protocol_metadata_set_original(void);
void* nw_protocol_metadata_supports_replies(void);

#endif // _NW_PROTOCOL_METADATA_H_
