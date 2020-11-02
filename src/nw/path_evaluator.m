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

#include <nw/internal/path_evaluator.h>
#include <nw/internal/stubs.h>

@implementation _NW_CONCRETE_IMPL(nw_path_evaluator)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_path_create_default_evaluator);
DARLING_NW_STUB(nw_path_create_evaluator_for_advertise);
DARLING_NW_STUB(nw_path_create_evaluator_for_browse);
DARLING_NW_STUB(nw_path_create_evaluator_for_client_id);
DARLING_NW_STUB(nw_path_create_evaluator_for_custom_ether);
DARLING_NW_STUB(nw_path_create_evaluator_for_custom_ip);
DARLING_NW_STUB(nw_path_create_evaluator_for_interpose);
DARLING_NW_STUB(nw_path_create_evaluator_for_listener);

DARLING_NW_STUB(nw_path_evaluator_add_endpoint_to_necp_message);
DARLING_NW_STUB(nw_path_evaluator_copy_description);
DARLING_NW_STUB(nw_path_evaluator_create_flow);
DARLING_NW_STUB(nw_path_evaluator_force_update);
DARLING_NW_STUB(nw_path_evaluator_get_client_id);
DARLING_NW_STUB(nw_path_evaluator_get_error_string);
DARLING_NW_STUB(nw_path_evaluator_request_nexus);
DARLING_NW_STUB(nw_path_evaluator_set_queue);
DARLING_NW_STUB(nw_path_evaluator_trigger_agents);

nw_path_evaluator_t nw_path_create_evaluator_for_endpoint(nw_endpoint_t endpoint, nw_parameters_t parameters) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

nw_path_t nw_path_evaluator_copy_path(nw_path_evaluator_t evaluator) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

void nw_path_evaluator_cancel(nw_path_evaluator_t evaluator) {
	DARLING_NW_STUB_PRINT;
};

void nw_path_evaluator_start(nw_path_evaluator_t evaluator) {
	DARLING_NW_STUB_PRINT;
};

void nw_path_evaluator_set_cancel_handler(nw_path_evaluator_t evaluator, nw_path_evaluator_cancel_handler_t handler) {
	DARLING_NW_STUB_PRINT;
};

void nw_path_evaluator_set_update_handler(nw_path_evaluator_t evaluator, dispatch_queue_t queue, nw_path_evaluator_update_handler_t handler) {
	DARLING_NW_STUB_PRINT;
};
