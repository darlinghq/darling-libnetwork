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

#ifndef _NW_SOCKS5_SERVER_H_
#define _NW_SOCKS5_SERVER_H_

#include <nw/base.h>

_NW_OPAQUE(nw_socks5_server);

void* nw_socks5_server_cancel(void);
void* nw_socks5_server_copy_parameters(void);
void* nw_socks5_server_create(void);
void* nw_socks5_server_get_port(void);
void* nw_socks5_server_set_error_handler(void);
void* nw_socks5_server_set_state_changed_handler(void);
void* nw_socks5_server_start(void);

#endif // _NW_SOCKS5_SERVER_H_
