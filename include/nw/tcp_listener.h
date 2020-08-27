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

#ifndef _NW_TCP_LISTENER_H_
#define _NW_TCP_LISTENER_H_

#include <nw/base.h>

_NW_OS_OBJECT(tcp_listener);

void* tcp_listener_cancel(void);
void* tcp_listener_create(void);
void* tcp_listener_create_launchd(void);
void* tcp_listener_enable_coprocessor_interface(void);
void* tcp_listener_get_dns_service_ref(void);
void* tcp_listener_get_port(void);
void* tcp_listener_release(void);
void* tcp_listener_retain(void);
void* tcp_listener_set_accept_handler(void);
void* tcp_listener_set_accept_handler_f(void);
void* tcp_listener_set_error_handler(void);
void* tcp_listener_set_error_handler_f(void);
void* tcp_listener_set_interface(void);
void* tcp_listener_set_local_only(void);
void* tcp_listener_set_port(void);
void* tcp_listener_set_register_p2p(void);
void* tcp_listener_set_service(void);
void* tcp_listener_set_tfo(void);
void* tcp_listener_start(void);

#endif // _NW_TCP_LISTENER_H_
