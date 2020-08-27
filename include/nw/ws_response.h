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

#ifndef _NW_WS_RESPONSE_H_
#define _NW_WS_RESPONSE_H_

#include <nw/base.h>

_NW_OPAQUE(nw_ws_response);

void* nw_ws_response_add_additional_header(void);
void* nw_ws_response_create(void);
void* nw_ws_response_enumerate_additional_headers(void);
void* nw_ws_response_get_selected_subprotocol(void);
void* nw_ws_response_get_status(void);

#endif // _NW_WS_RESPONSE_H_
