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

#ifndef _NW_CONNECTION_H_
#define _NW_CONNECTION_H_

#include <stdbool.h>
#include <stdint.h>

#include <nw/base.h>

#include <dispatch/dispatch.h>

#include <nw/endpoint.h>
#include <nw/parameters.h>
#include <nw/error.h>
#include <nw/content_context.h>

extern const nw_content_context_t NW_CONNECTION_DEFAULT_MESSAGE_CONTEXT;
extern const nw_content_context_t NW_CONNECTION_DEFAULT_STREAM_CONTEXT;
extern const nw_content_context_t NW_CONNECTION_FINAL_MESSAGE_CONTEXT;

_NW_OPAQUE(nw_connection);

typedef _NW_ENUM(unsigned int, nw_connection_state_t) {
	nw_connection_state_invalid,
	nw_connection_state_waiting,
	nw_connection_state_preparing,
	nw_connection_state_ready,
	nw_connection_state_failed,
	nw_connection_state_cancelled,
};

#if _NW_BLOCKS
	typedef void (^nw_connection_send_completion_t)(nw_error_t error);
	typedef void (^nw_connection_receive_completion_t)(dispatch_data_t content, nw_content_context_t context, bool is_complete, nw_error_t error);
	typedef void (^nw_connection_state_changed_handler_t)(nw_connection_state_t connection_state, nw_error_t error);
#endif

void* nw_connection_access_establishment_report(void);
void* nw_connection_access_probe_connections(void);
void* nw_connection_add_client_event(void);
void* nw_connection_add_probe(void);
void* nw_connection_append_and_start_application_protocol(void);
void* nw_connection_batch(void);
void* nw_connection_better_path_available(void);
void* nw_connection_cancel_current_endpoint(void);
void* nw_connection_check_experimental_probe_options(void);
void* nw_connection_copy_attempted_endpoint_array(void);
void* nw_connection_copy_connected_local_endpoint(void);
void* nw_connection_copy_connected_path(void);
void* nw_connection_copy_connected_remote_endpoint(void);
void* nw_connection_copy_current_path(void);
void* nw_connection_copy_description(void);
void* nw_connection_copy_establishment_report_on_queue(void);
void* nw_connection_copy_host_endpoint(void);
void* nw_connection_copy_metadata(void);
void* nw_connection_copy_parameters(void);
void* nw_connection_copy_protocol_metadata(void);
void* nw_connection_copy_protocol_metadata_on_queue(void);
void* nw_connection_copy_tcp_info(void);
void* nw_connection_create_experimental_probe(void);
void* nw_connection_create_experimental_probe_configuration_block_for_protocol(void);
void* nw_connection_create_interface_status_monitor(void);
void* nw_connection_create_new_data_transfer_report(void);
void* nw_connection_create_with_client_id(void);
void* nw_connection_create_with_connected_socket(void);
void* nw_connection_create_with_connected_socket_and_parameters(void);
void* nw_connection_create_with_connection(void);
void* nw_connection_dump_timestamps(void);
void* nw_connection_end_activity(void);
void* nw_connection_fillout_tcp_connection_info(void);
void* nw_connection_fillout_tcp_statistics(void);
void* nw_connection_force_cancel(void);
void* nw_connection_get_connected_socket(void);
void* nw_connection_get_id(void);
void* nw_connection_get_maximum_datagram_size(void);
void* nw_connection_get_unsent_byte_count(void);
void* nw_connection_get_uuid(void);
void* nw_connection_has_proxy_attempt(void);
void* nw_connection_inject_up(void);
void* nw_connection_modify_connected_protocol_stack(void);
void* nw_connection_multipath_copy_subflow_counts(void);
void* nw_connection_multipath_get_primary_subflow_interface_index(void);
void* nw_connection_multipath_get_subflow_count(void);
void* nw_connection_read(void);
void* nw_connection_read_buffer(void);
void* nw_connection_read_multiple(void);
void* nw_connection_receive_message(void);
void* nw_connection_receive_message_with_context(void);
void* nw_connection_receive_with_context(void);
void* nw_connection_remove_probe(void);
void* nw_connection_reset_expected_progress_target(void);
void* nw_connection_reset_traffic_class(void);
void* nw_connection_restart(void);
void* nw_connection_send_reply(void);
void* nw_connection_set_adaptive_read_handler(void);
void* nw_connection_set_adaptive_write_handler(void);
void* nw_connection_set_alternate_path_state_handler(void);
void* nw_connection_set_better_path_available_handler(void);
void* nw_connection_set_cancel_handler(void);
void* nw_connection_set_event_handler(void);
void* nw_connection_set_excessive_keepalive_handler(void);
void* nw_connection_set_low_throughput_handler(void);
void* nw_connection_set_metadata_changed_handler(void);
void* nw_connection_set_path_changed_handler(void);
void* nw_connection_set_read_close_handler(void);
void* nw_connection_set_tls_message_handler(void);
void* nw_connection_set_tls_prepare_handler(void);
void* nw_connection_set_viability_changed_handler(void);
void* nw_connection_set_write_close_handler(void);
void* nw_connection_should_run_experimental_probe(void);
void* nw_connection_start_activity(void);
void* nw_connection_state_to_string(void);
void* nw_connection_tls_apply(void);
void* nw_connection_used_fallback(void);
void* nw_connection_used_tfo(void);
void* nw_connection_used_tls(void);
void* nw_connection_uses_multipath(void);
void* nw_connection_uses_sleep_proxy(void);
void* nw_connection_write(void);
void* nw_connection_write_close(void);
void* nw_connection_write_multiple(void);

nw_connection_t nw_connection_create(nw_endpoint_t endpoint, nw_parameters_t parameters);

void nw_connection_cancel(nw_connection_t connection);
void nw_connection_start(nw_connection_t connection);

nw_endpoint_t nw_connection_copy_endpoint(nw_connection_t connection);

void nw_connection_set_queue(nw_connection_t connection, dispatch_queue_t queue);

#if _NW_BLOCKS
	void nw_connection_send(nw_connection_t connection, dispatch_data_t content, nw_content_context_t context, bool is_complete, nw_connection_send_completion_t completion_handler);
	void nw_connection_receive(nw_connection_t connection, uint32_t minimum_length, uint32_t maximum_length, nw_connection_receive_completion_t completion_handler);

	void nw_connection_set_state_changed_handler(nw_connection_t connection, nw_connection_state_changed_handler_t handler);
#endif

#endif // _NW_CONNECTION_H_
