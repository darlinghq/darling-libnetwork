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

#include <nw/internal/listener.h>
#include <nw/internal/stubs.h>

@implementation _NW_CONCRETE_IMPL(nw_listener)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB_VOID_FUNCTION(nw_listener_cancel, (nw_listener_t NW_NON_NULL listener));
DARLING_NW_STUB(nw_listener_copy_advertise_descriptor);
DARLING_NW_STUB(nw_listener_copy_local_endpoint);
DARLING_NW_STUB_FUNCTION(nw_listener_t NW_NULLABLE, nw_listener_create, (nw_parameters_t NW_NON_NULL parameters));
DARLING_NW_STUB_FUNCTION(nw_listener_t NW_NULLABLE, nw_listener_create_with_connection, (nw_connection_t NW_NON_NULL connection, nw_parameters_t NW_NON_NULL parameters));
DARLING_NW_STUB(nw_listener_create_with_launchd_key);
DARLING_NW_STUB_FUNCTION(nw_listener_t NW_NULLABLE, nw_listener_create_with_port, (const char * NW_NON_NULL port, nw_parameters_t NW_NON_NULL parameters));
DARLING_NW_STUB(nw_listener_get_new_connection_limit);
DARLING_NW_STUB_FUNCTION(uint16_t, nw_listener_get_port, (nw_listener_t NW_NON_NULL listener));
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_set_advertise_descriptor, (nw_listener_t NW_NON_NULL listener, nw_advertise_descriptor_t NW_NULLABLE advertise_descriptor));
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_set_advertised_endpoint_changed_handler, (nw_listener_t NW_NON_NULL listener, nw_listener_advertised_endpoint_changed_handler_t NW_NULLABLE handler));
DARLING_NW_STUB(nw_listener_set_event_handler);
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_set_new_connection_handler, (nw_listener_t NW_NON_NULL listener, nw_listener_new_connection_handler_t NW_NULLABLE handler));
DARLING_NW_STUB(nw_listener_set_new_connection_limit);
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_set_queue, (nw_listener_t NW_NON_NULL listener, dispatch_queue_t NW_NON_NULL queue));
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_set_state_changed_handler, (nw_listener_t NW_NON_NULL listener, nw_listener_state_changed_handler_t NW_NULLABLE handler));
DARLING_NW_STUB_VOID_FUNCTION(nw_listener_start, (nw_listener_t NW_NON_NULL listener));
