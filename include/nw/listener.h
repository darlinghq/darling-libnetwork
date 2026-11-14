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

#include <stdbool.h>
#include <stdint.h>

#include <nw/base.h>
#include <nw/advertise_descriptor.h>
#include <nw/connection.h>
#include <nw/endpoint.h>
#include <nw/error.h>
#include <nw/parameters.h>

#include <dispatch/dispatch.h>

_NW_OPAQUE(nw_listener);

typedef _NW_ENUM(int, nw_listener_state_t) {
	nw_listener_state_invalid = 0,
	nw_listener_state_waiting = 1,
	nw_listener_state_ready = 2,
	nw_listener_state_failed = 3,
	nw_listener_state_cancelled = 4,
};

#if _NW_BLOCKS
	typedef void (^nw_listener_state_changed_handler_t)(nw_listener_state_t state, nw_error_t NW_NULLABLE error);
	typedef void (^nw_listener_new_connection_handler_t)(nw_connection_t NW_NON_NULL connection);
	typedef void (^nw_listener_advertised_endpoint_changed_handler_t)(nw_endpoint_t NW_NON_NULL advertised_endpoint, bool added);
#endif

void nw_listener_cancel(nw_listener_t NW_NON_NULL listener) NW_AVAILABLE_2018;
void* nw_listener_copy_advertise_descriptor(void);
void* nw_listener_copy_local_endpoint(void);
NW_RETURNS_RETAINED nw_listener_t NW_NULLABLE nw_listener_create(nw_parameters_t NW_NON_NULL parameters) NW_AVAILABLE_2018;
NW_RETURNS_RETAINED nw_listener_t NW_NULLABLE nw_listener_create_with_connection(nw_connection_t NW_NON_NULL connection, nw_parameters_t NW_NON_NULL parameters) NW_AVAILABLE_2018;
void* nw_listener_create_with_launchd_key(void);
NW_RETURNS_RETAINED nw_listener_t NW_NULLABLE nw_listener_create_with_port(const char * NW_NON_NULL port, nw_parameters_t NW_NON_NULL parameters) NW_AVAILABLE_2018;
void* nw_listener_get_new_connection_limit(void);
uint16_t nw_listener_get_port(nw_listener_t NW_NON_NULL listener) NW_AVAILABLE_2018;
void nw_listener_set_advertise_descriptor(nw_listener_t NW_NON_NULL listener, nw_advertise_descriptor_t NW_NULLABLE advertise_descriptor) NW_AVAILABLE_2018;
#if _NW_BLOCKS
	void nw_listener_set_advertised_endpoint_changed_handler(nw_listener_t NW_NON_NULL listener, nw_listener_advertised_endpoint_changed_handler_t NW_NULLABLE handler) NW_AVAILABLE_2018;
#endif
void* nw_listener_set_event_handler(void);
#if _NW_BLOCKS
	void nw_listener_set_new_connection_handler(nw_listener_t NW_NON_NULL listener, nw_listener_new_connection_handler_t NW_NULLABLE handler) NW_AVAILABLE_2018;
#endif
void* nw_listener_set_new_connection_limit(void);
void nw_listener_set_queue(nw_listener_t NW_NON_NULL listener, dispatch_queue_t NW_NON_NULL queue) NW_AVAILABLE_2018;
#if _NW_BLOCKS
	void nw_listener_set_state_changed_handler(nw_listener_t NW_NON_NULL listener, nw_listener_state_changed_handler_t NW_NULLABLE handler) NW_AVAILABLE_2018;
#endif
void nw_listener_start(nw_listener_t NW_NON_NULL listener) NW_AVAILABLE_2018;

#endif // _NW_LISTENER_H_
