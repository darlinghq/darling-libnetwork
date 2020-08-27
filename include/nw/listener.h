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

#ifndef _NW_LISTENER_H_
#define _NW_LISTENER_H_

#include <nw/base.h>

_NW_OPAQUE(nw_listener);

void* nw_listener_cancel(void);
void* nw_listener_copy_advertise_descriptor(void);
void* nw_listener_copy_local_endpoint(void);
void* nw_listener_create(void);
void* nw_listener_create_with_connection(void);
void* nw_listener_create_with_launchd_key(void);
void* nw_listener_create_with_port(void);
void* nw_listener_get_new_connection_limit(void);
void* nw_listener_get_port(void);
void* nw_listener_set_advertise_descriptor(void);
void* nw_listener_set_advertised_endpoint_changed_handler(void);
void* nw_listener_set_event_handler(void);
void* nw_listener_set_new_connection_handler(void);
void* nw_listener_set_new_connection_limit(void);
void* nw_listener_set_queue(void);
void* nw_listener_set_state_changed_handler(void);
void* nw_listener_start(void);

#endif // _NW_LISTENER_H_
