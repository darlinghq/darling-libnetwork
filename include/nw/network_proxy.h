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

#ifndef _NW_NETWORK_PROXY_H_
#define _NW_NETWORK_PROXY_H_

#include <nw/base.h>

_NW_OS_OBJECT(network_proxy);

void* network_proxy_copy_host(void);
void* network_proxy_copy_password(void);
void* network_proxy_copy_user(void);
void* network_proxy_create_from_parameters(void);
void* network_proxy_get_port(void);
void* network_proxy_get_type(void);
void* network_proxy_is_transparent(void);

#endif // _NW_NETWORK_PROXY_H_
