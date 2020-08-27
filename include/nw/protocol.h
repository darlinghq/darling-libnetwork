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

#ifndef _NW_PROTOCOL_H_
#define _NW_PROTOCOL_H_

void* nw_protocol_can_join_existing(void);
void* nw_protocol_copy_ip_definition(void);
void* nw_protocol_copy_quic_connection_definition(void);
void* nw_protocol_copy_quic_stream_definition(void);
void* nw_protocol_copy_subdata(void);
void* nw_protocol_copy_superdata(void);
void* nw_protocol_copy_tcp_definition(void);
void* nw_protocol_copy_tls_definition(void);
void* nw_protocol_copy_udp_definition(void);
void* nw_protocol_copy_ws_definition(void);
void* nw_protocol_create(void);
void* nw_protocol_create_inbound_data(void);
void* nw_protocol_create_options(void);
void* nw_protocol_data_access_buffer(void);
void* nw_protocol_data_get_size(void);
void* nw_protocol_data_is_in_array(void);
void* nw_protocol_data_trim(void);
void* nw_protocol_find_instance_to_join(void);
void* nw_protocol_get_quic_connection_protocol_identifier(void);
void* nw_protocol_get_quic_stream_protocol_identifier(void);
void* nw_protocol_get_tcp_identifier(void);
void* nw_protocol_hash_table_create(void);
void* nw_protocol_http2_transport_identifier(void);
void* nw_protocol_http2_transport_parameters_set_connection_receive_window_size(void);
void* nw_protocol_http2_transport_parameters_set_stream_receive_window_size(void);
void* nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay(void);
void* nw_protocol_input_handler_is_connection_flow(void);
void* nw_protocol_is_registered(void);
void* nw_protocol_modify_parameters(void);
void* nw_protocol_notification_type_to_string(void);
void* nw_protocol_option_is_equal(void);
void* nw_protocol_recorder_identifier(void);
void* nw_protocol_register(void);
void* nw_protocol_register_extended(void);
void* nw_protocol_register_handle(void);
void* nw_protocol_register_many_to_one(void);
void* nw_protocol_register_parameter_modifier(void);
void* nw_protocol_remove_instance(void);
void* nw_protocol_request_outbound_data(void);
void* nw_protocol_set_default_one_to_one_callbacks(void);
void* nw_protocol_tcp_not_available(void);
void* nw_protocol_udp_identifier(void);
void* nw_protocol_unregister(void);
void* nw_protocols_are_equal(void);

void* nw_protocol_parameters_copy_value(void);
void* nw_protocol_parameters_get_identifier(void);
void* nw_protocol_parameters_iterate_stack(void);

void* nw_protocol_trainer_bottom_check_output(void);
void* nw_protocol_trainer_bottom_identifier(void);
void* nw_protocol_trainer_bottom_inject_input(void);
void* nw_protocol_trainer_bottom_notify_input(void);
void* nw_protocol_trainer_bottom_set_output_style(void);
void* nw_protocol_trainer_expect_frames_consumed(void);
void* nw_protocol_trainer_set_local(void);
void* nw_protocol_trainer_top_check_input(void);
void* nw_protocol_trainer_top_connect(void);
void* nw_protocol_trainer_top_disconnect(void);
void* nw_protocol_trainer_top_expect_connected(void);
void* nw_protocol_trainer_top_expect_disconnected(void);
void* nw_protocol_trainer_top_flush_output(void);
void* nw_protocol_trainer_top_identifier(void);
void* nw_protocol_trainer_top_inject_output(void);

#endif // _NW_PROTOCOL_H_
