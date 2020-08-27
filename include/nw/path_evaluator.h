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

_NW_OPAQUE(nw_path_evaluator);

void* nw_path_evaluator_add_endpoint_to_necp_message(void);
void* nw_path_evaluator_cancel(void);
void* nw_path_evaluator_copy_description(void);
void* nw_path_evaluator_copy_path(void);
void* nw_path_evaluator_create_flow(void);
void* nw_path_evaluator_force_update(void);
void* nw_path_evaluator_get_client_id(void);
void* nw_path_evaluator_get_error_string(void);
void* nw_path_evaluator_request_nexus(void);
void* nw_path_evaluator_set_cancel_handler(void);
void* nw_path_evaluator_set_queue(void);
void* nw_path_evaluator_set_update_handler(void);
void* nw_path_evaluator_start(void);
void* nw_path_evaluator_trigger_agents(void);

#endif // _NW_PATH_EVALUATOR_H_
