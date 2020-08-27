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

#import <nw/tcp_listener.h>
#include <nw/internal/stubs.h>

@implementation _NW_OS_OBJECT_IMPL(tcp_listener)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(tcp_listener_cancel);
DARLING_NW_STUB(tcp_listener_create);
DARLING_NW_STUB(tcp_listener_create_launchd);
DARLING_NW_STUB(tcp_listener_enable_coprocessor_interface);
DARLING_NW_STUB(tcp_listener_get_dns_service_ref);
DARLING_NW_STUB(tcp_listener_get_port);
DARLING_NW_STUB(tcp_listener_release);
DARLING_NW_STUB(tcp_listener_retain);
DARLING_NW_STUB(tcp_listener_set_accept_handler);
DARLING_NW_STUB(tcp_listener_set_accept_handler_f);
DARLING_NW_STUB(tcp_listener_set_error_handler);
DARLING_NW_STUB(tcp_listener_set_error_handler_f);
DARLING_NW_STUB(tcp_listener_set_interface);
DARLING_NW_STUB(tcp_listener_set_local_only);
DARLING_NW_STUB(tcp_listener_set_port);
DARLING_NW_STUB(tcp_listener_set_register_p2p);
DARLING_NW_STUB(tcp_listener_set_service);
DARLING_NW_STUB(tcp_listener_set_tfo);
DARLING_NW_STUB(tcp_listener_start);
