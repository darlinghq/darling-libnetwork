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

#ifndef _NW_PATH_EVALUATOR_H_
#define _NW_PATH_EVALUATOR_H_

#include <nw/base.h>
#include <nw/parameters.h>
#include <nw/endpoint.h>
#include <nw/path.h>

#include <dispatch/dispatch.h>

_NW_OPAQUE(nw_path_evaluator);

#if _NW_BLOCKS
	// these type names are guesses
	typedef void (^nw_path_evaluator_cancel_handler_t)(void);
	typedef void (^nw_path_evaluator_update_handler_t)(nw_path_t path);
#endif

void* nw_path_create_default_evaluator(void);
void* nw_path_create_evaluator_for_advertise(void);
void* nw_path_create_evaluator_for_browse(void);
void* nw_path_create_evaluator_for_client_id(void);
void* nw_path_create_evaluator_for_custom_ether(void);
void* nw_path_create_evaluator_for_custom_ip(void);
void* nw_path_create_evaluator_for_interpose(void);
void* nw_path_create_evaluator_for_listener(void);

void* nw_path_evaluator_add_endpoint_to_necp_message(void);
void* nw_path_evaluator_copy_description(void);
void* nw_path_evaluator_create_flow(void);
void* nw_path_evaluator_force_update(void);
void* nw_path_evaluator_get_client_id(void);
void* nw_path_evaluator_get_error_string(void);
void* nw_path_evaluator_request_nexus(void);
void* nw_path_evaluator_set_queue(void);
void* nw_path_evaluator_trigger_agents(void);

nw_path_evaluator_t nw_path_create_evaluator_for_endpoint(nw_endpoint_t endpoint, nw_parameters_t parameters);

nw_path_t nw_path_evaluator_copy_path(nw_path_evaluator_t evaluator);

void nw_path_evaluator_start(nw_path_evaluator_t evaluator);
void nw_path_evaluator_cancel(nw_path_evaluator_t evaluator);

#if _NW_BLOCKS
	void nw_path_evaluator_set_cancel_handler(nw_path_evaluator_t evaluator, nw_path_evaluator_cancel_handler_t handler);
	void nw_path_evaluator_set_update_handler(nw_path_evaluator_t evaluator, dispatch_queue_t queue, nw_path_evaluator_update_handler_t handler);
#endif

#endif // _NW_PATH_EVALUATOR_H_
