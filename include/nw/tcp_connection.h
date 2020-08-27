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

#ifndef _NW_TCP_CONNECTION_H_
#define _NW_TCP_CONNECTION_H_

#include <nw/base.h>

_NW_OPAQUE(tcp_connection);

void* tcp_connection_accept(void);
void* tcp_connection_add_event_adaptive_read_timeout(void);
void* tcp_connection_add_event_adaptive_write_timeout(void);
void* tcp_connection_add_event_excessive_keepalives(void);
void* tcp_connection_allow_client_socket_access(void);
void* tcp_connection_are_proxies_supported(void);
void* tcp_connection_cancel(void);
void* tcp_connection_conditions_get_unmet_reason(void);
void* tcp_connection_conditions_met(void);
void* tcp_connection_copy_connected_path(void);
void* tcp_connection_copy_context(void);
void* tcp_connection_copy_description(void);
void* tcp_connection_copy_endpoint(void);
void* tcp_connection_copy_metadata(void);
void* tcp_connection_copy_nw_connection(void);
void* tcp_connection_copy_parameters(void);
void* tcp_connection_copy_proxy(void);
void* tcp_connection_copy_socket(void);
void* tcp_connection_copy_tcp_info(void);
void* tcp_connection_create(void);
void* tcp_connection_create_inbound(void);
void* tcp_connection_create_upgrade(void);
void* tcp_connection_create_with_connected_fd(void);
void* tcp_connection_create_with_connection(void);
void* tcp_connection_create_with_endpoint_and_parameters(void);
void* tcp_connection_create_with_nw_connection(void);
void* tcp_connection_create_with_service(void);
void* tcp_connection_create_with_sockaddr(void);
void* tcp_connection_did_fallback(void);
void* tcp_connection_event_to_string(void);
void* tcp_connection_fallback_is_fast(void);
void* tcp_connection_fallback_watcher_create(void);
void* tcp_connection_fallback_watcher_destroy(void);
void* tcp_connection_fillout_tcp_connection_info(void);
void* tcp_connection_get_connection_quality(void);
void* tcp_connection_get_counts(void);
void* tcp_connection_get_error(void);
void* tcp_connection_get_hostname(void);
void* tcp_connection_get_interface(void);
void* tcp_connection_get_local(void);
void* tcp_connection_get_remote(void);
void* tcp_connection_get_socket(void);
void* tcp_connection_get_statistics(void);
void* tcp_connection_get_tfo_success(void);
void* tcp_connection_get_txtrecord(void);
void* tcp_connection_get_unsent_length(void);
void* tcp_connection_has_better_route(void);
void* tcp_connection_id(void);
void* tcp_connection_is_cellular(void);
void* tcp_connection_is_expensive(void);
void* tcp_connection_is_multipath(void);
void* tcp_connection_is_sleep_proxied(void);
void* tcp_connection_is_viable(void);
void* tcp_connection_log_event(void);
void* tcp_connection_multipath_copy_subflow_switch_counts(void);
void* tcp_connection_multipath_get_primary_subflow_ifindex(void);
void* tcp_connection_multipath_get_subflow_count(void);
void* tcp_connection_override_obscure(void);
void* tcp_connection_read(void);
void* tcp_connection_read_buffer(void);
void* tcp_connection_release(void);
void* tcp_connection_retain(void);
void* tcp_connection_retry(void);
void* tcp_connection_set_account_identifier(void);
void* tcp_connection_set_background_traffic_management(void);
void* tcp_connection_set_cancel_handler(void);
void* tcp_connection_set_cellular_service(void);
void* tcp_connection_set_connection_attempt_timeout(void);
void* tcp_connection_set_connection_pool(void);
void* tcp_connection_set_context(void);
void* tcp_connection_set_duet_conditional(void);
void* tcp_connection_set_ecn_enabled(void);
void* tcp_connection_set_event_handler(void);
void* tcp_connection_set_event_handler_f(void);
void* tcp_connection_set_extended_background_idle(void);
void* tcp_connection_set_fallback_fast(void);
void* tcp_connection_set_force_address_family(void);
void* tcp_connection_set_indefinite(void);
void* tcp_connection_set_initial_data_payload(void);
void* tcp_connection_set_interface_by_index(void);
void* tcp_connection_set_interface_by_name(void);
void* tcp_connection_set_keepalive(void);
void* tcp_connection_set_keepalive_offload(void);
void* tcp_connection_set_low_latency(void);
void* tcp_connection_set_metadata(void);
void* tcp_connection_set_minimum_throughput(void);
void* tcp_connection_set_multipath(void);
void* tcp_connection_set_multipath_service(void);
void* tcp_connection_set_no_cellular(void);
void* tcp_connection_set_no_delay(void);
void* tcp_connection_set_no_expensive(void);
void* tcp_connection_set_no_fallback(void);
void* tcp_connection_set_opportunistic(void);
void* tcp_connection_set_persistent(void);
void* tcp_connection_set_power_nap(void);
void* tcp_connection_set_preparesocket(void);
void* tcp_connection_set_prohibited_interface_subtypes(void);
void* tcp_connection_set_prohibited_interface_types(void);
void* tcp_connection_set_proxies(void);
void* tcp_connection_set_queue(void);
void* tcp_connection_set_read_buffer_size(void);
void* tcp_connection_set_receive_any_interface(void);
void* tcp_connection_set_requires_power(void);
void* tcp_connection_set_sleep_idle_interval(void);
void* tcp_connection_set_source_application(void);
void* tcp_connection_set_source_application_by_bundle(void);
void* tcp_connection_set_tfo(void);
void* tcp_connection_set_timeframe(void);
void* tcp_connection_set_tls(void);
void* tcp_connection_set_tls_handshake_message_handler(void);
void* tcp_connection_set_tls_mode(void);
void* tcp_connection_set_tls_prepare(void);
void* tcp_connection_set_traffic_class(void);
void* tcp_connection_set_url(void);
void* tcp_connection_set_usage_model(void);
void* tcp_connection_set_workload(void);
void* tcp_connection_start(void);
void* tcp_connection_write(void);
void* tcp_connection_write_buffer(void);
void* tcp_connection_write_eof(void);

#endif // _NW_TCP_CONNECTION_H_
