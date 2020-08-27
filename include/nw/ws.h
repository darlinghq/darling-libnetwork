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

#ifndef _NW_WS_H_
#define _NW_WS_H_

void* nw_ws_copy_response_for_challenge(void);
void* nw_ws_create_client_request(void);
void* nw_ws_create_metadata(void);
void* nw_ws_create_options(void);
void* nw_ws_present_request_to_user(void);
void* nw_ws_validate_client_request(void);
void* nw_ws_validate_server_response(void);

void* nw_ws_metadata_copy_server_response(void);
void* nw_ws_metadata_get_close_code(void);
void* nw_ws_metadata_get_opcode(void);
void* nw_ws_metadata_set_close_code(void);
void* nw_ws_metadata_set_pong_handler(void);

void* nw_ws_options_add_additional_header(void);
void* nw_ws_options_add_protocol(void);
void* nw_ws_options_add_subprotocol(void);
void* nw_ws_options_set_auto_reply_ping(void);
void* nw_ws_options_set_client_request_handler(void);
void* nw_ws_options_set_maximum_message_size(void);
void* nw_ws_options_set_prepend_data(void);
void* nw_ws_options_set_skip_handshake(void);

#endif // _NW_WS_H_
