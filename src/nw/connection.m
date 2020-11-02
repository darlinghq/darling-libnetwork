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

#include <nw/internal/connection.h>
#include <nw/internal/stubs.h>

// i have *zero* clue how Apple is statically creating Objective-C interface instances

const nw_content_context_t NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT = 1;
const nw_content_context_t NW_CONNECTION_DEFAULT_STREAM_CONTEXT = 2;
const nw_content_context_t NW_CONNECTION_FINAL_MESSAGE_CONTEXT = 3;

@implementation _NW_CONCRETE_IMPL(nw_connection)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_connection_access_establishment_report);
DARLING_NW_STUB(nw_connection_access_probe_connections);
DARLING_NW_STUB(nw_connection_add_client_event);
DARLING_NW_STUB(nw_connection_add_probe);
DARLING_NW_STUB(nw_connection_append_and_start_application_protocol);
DARLING_NW_STUB(nw_connection_batch);
DARLING_NW_STUB(nw_connection_better_path_available);
DARLING_NW_STUB(nw_connection_cancel_current_endpoint);
DARLING_NW_STUB(nw_connection_check_experimental_probe_options);
DARLING_NW_STUB(nw_connection_copy_attempted_endpoint_array);
DARLING_NW_STUB(nw_connection_copy_connected_local_endpoint);
DARLING_NW_STUB(nw_connection_copy_connected_path);
DARLING_NW_STUB(nw_connection_copy_connected_remote_endpoint);
DARLING_NW_STUB(nw_connection_copy_current_path);
DARLING_NW_STUB(nw_connection_copy_description);
DARLING_NW_STUB(nw_connection_copy_establishment_report_on_queue);
DARLING_NW_STUB(nw_connection_copy_host_endpoint);
DARLING_NW_STUB(nw_connection_copy_metadata);
DARLING_NW_STUB(nw_connection_copy_parameters);
DARLING_NW_STUB(nw_connection_copy_protocol_metadata);
DARLING_NW_STUB(nw_connection_copy_protocol_metadata_on_queue);
DARLING_NW_STUB(nw_connection_copy_tcp_info);
DARLING_NW_STUB(nw_connection_create_experimental_probe);
DARLING_NW_STUB(nw_connection_create_experimental_probe_configuration_block_for_protocol);
DARLING_NW_STUB(nw_connection_create_interface_status_monitor);
DARLING_NW_STUB(nw_connection_create_new_data_transfer_report);
DARLING_NW_STUB(nw_connection_create_with_client_id);
DARLING_NW_STUB(nw_connection_create_with_connected_socket);
DARLING_NW_STUB(nw_connection_create_with_connected_socket_and_parameters);
DARLING_NW_STUB(nw_connection_create_with_connection);
DARLING_NW_STUB(nw_connection_dump_timestamps);
DARLING_NW_STUB(nw_connection_end_activity);
DARLING_NW_STUB(nw_connection_fillout_tcp_connection_info);
DARLING_NW_STUB(nw_connection_fillout_tcp_statistics);
DARLING_NW_STUB(nw_connection_force_cancel);
DARLING_NW_STUB(nw_connection_get_connected_socket);
DARLING_NW_STUB(nw_connection_get_id);
DARLING_NW_STUB(nw_connection_get_maximum_datagram_size);
DARLING_NW_STUB(nw_connection_get_unsent_byte_count);
DARLING_NW_STUB(nw_connection_get_uuid);
DARLING_NW_STUB(nw_connection_has_proxy_attempt);
DARLING_NW_STUB(nw_connection_inject_up);
DARLING_NW_STUB(nw_connection_modify_connected_protocol_stack);
DARLING_NW_STUB(nw_connection_multipath_copy_subflow_counts);
DARLING_NW_STUB(nw_connection_multipath_get_primary_subflow_interface_index);
DARLING_NW_STUB(nw_connection_multipath_get_subflow_count);
DARLING_NW_STUB(nw_connection_read);
DARLING_NW_STUB(nw_connection_read_buffer);
DARLING_NW_STUB(nw_connection_read_multiple);
DARLING_NW_STUB(nw_connection_receive_message);
DARLING_NW_STUB(nw_connection_receive_message_with_context);
DARLING_NW_STUB(nw_connection_receive_with_context);
DARLING_NW_STUB(nw_connection_remove_probe);
DARLING_NW_STUB(nw_connection_reset_expected_progress_target);
DARLING_NW_STUB(nw_connection_reset_traffic_class);
DARLING_NW_STUB(nw_connection_restart);
DARLING_NW_STUB(nw_connection_send_reply);
DARLING_NW_STUB(nw_connection_set_adaptive_read_handler);
DARLING_NW_STUB(nw_connection_set_adaptive_write_handler);
DARLING_NW_STUB(nw_connection_set_alternate_path_state_handler);
DARLING_NW_STUB(nw_connection_set_better_path_available_handler);
DARLING_NW_STUB(nw_connection_set_cancel_handler);
DARLING_NW_STUB(nw_connection_set_event_handler);
DARLING_NW_STUB(nw_connection_set_excessive_keepalive_handler);
DARLING_NW_STUB(nw_connection_set_low_throughput_handler);
DARLING_NW_STUB(nw_connection_set_metadata_changed_handler);
DARLING_NW_STUB(nw_connection_set_path_changed_handler);
DARLING_NW_STUB(nw_connection_set_read_close_handler);
DARLING_NW_STUB(nw_connection_set_tls_message_handler);
DARLING_NW_STUB(nw_connection_set_tls_prepare_handler);
DARLING_NW_STUB(nw_connection_set_viability_changed_handler);
DARLING_NW_STUB(nw_connection_set_write_close_handler);
DARLING_NW_STUB(nw_connection_should_run_experimental_probe);
DARLING_NW_STUB(nw_connection_start_activity);
DARLING_NW_STUB(nw_connection_state_to_string);
DARLING_NW_STUB(nw_connection_tls_apply);
DARLING_NW_STUB(nw_connection_used_fallback);
DARLING_NW_STUB(nw_connection_used_tfo);
DARLING_NW_STUB(nw_connection_used_tls);
DARLING_NW_STUB(nw_connection_uses_multipath);
DARLING_NW_STUB(nw_connection_uses_sleep_proxy);
DARLING_NW_STUB(nw_connection_write);
DARLING_NW_STUB(nw_connection_write_close);
DARLING_NW_STUB(nw_connection_write_multiple);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */

nw_connection_t nw_connection_create(nw_endpoint_t endpoint, nw_parameters_t parameters) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

void nw_connection_cancel(nw_connection_t connection) {
	DARLING_NW_STUB_PRINT;
};

void nw_connection_start(nw_connection_t connection) {
	DARLING_NW_STUB_PRINT;
};

nw_endpoint_t nw_connection_copy_endpoint(nw_connection_t connection) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

void nw_connection_set_queue(nw_connection_t connection, dispatch_queue_t queue) {
	DARLING_NW_STUB_PRINT;
};

void nw_connection_set_state_changed_handler(nw_connection_t connection, nw_connection_state_changed_handler_t handler) {
	DARLING_NW_STUB_PRINT;
};

void nw_connection_send(nw_connection_t connection, dispatch_data_t content, nw_content_context_t context, bool is_complete, nw_connection_send_completion_t completion_handler) {
	DARLING_NW_STUB_PRINT;
};

void nw_connection_receive(nw_connection_t connection, uint32_t minimum_length, uint32_t maximum_length, nw_connection_receive_completion_t completion_handler) {
	DARLING_NW_STUB_PRINT;
};
