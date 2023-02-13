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

#ifndef _NW_NW_H_
#define _NW_NW_H_

// mDNSResponder expects libnetwork to have this include somewhere
#include <net/if.h>

#include <nw/base.h>

#include <nw/activity.h>
#include <nw/advertise_descriptor.h>
#include <nw/array.h>
#include <nw/association.h>
#include <nw/authentication_challenge.h>
#include <nw/authentication_credential.h>
#include <nw/authentication_protection_space.h>
#include <nw/browse_descriptor.h>
#include <nw/browse_result.h>
#include <nw/browser.h>
#include <nw/channel.h>
#include <nw/connection.h>
#include <nw/conn_lib.h>
#include <nw/content_context.h>
#include <nw/context.h>
#include <nw/dictionary.h>
#include <nw/data_transfer_report.h>
#include <nw/endpoint.h>
#include <nw/endpoint_fallback.h>
#include <nw/endpoint_flow.h>
#include <nw/endpoint_handler.h>
#include <nw/endpoint_proxy.h>
#include <nw/endpoint_resolver.h>
#include <nw/endpoint_transform.h>
#include <nw/error.h>
#include <nw/establishment_report.h>
#include <nw/ethernet_channel.h>
#include <nw/fd_wrapper.h>
#include <nw/frame.h>
#include <nw/framer.h>
#include <nw/hash.h>
#include <nw/interface.h>
#include <nw/interface_status_monitor.h>
#include <nw/interpose.h>
#include <nw/interpose_flow.h>
#include <nw/ip.h>
#include <nw/ip_channel_inbox.h>
#include <nw/link_info.h>
#include <nw/listener.h>
#include <nw/listener_inbox.h>
#include <nw/listener_inbox_delegate.h>
#include <nw/listener_inbox_protocol.h>
#include <nw/listener_inbox_socket.h>
#include <nw/log.h>
#include <nw/nat64.h>
#include <nw/nat64_prefixes_resolver.h>
#include <nw/netcore.h>
#include <nw/network_agent.h>
#include <nw/network_proxy.h>
#include <nw/networkd.h>
#include <nw/nexus.h>
#include <nw/pac_resolver.h>
#include <nw/parallel_array.h>
#include <nw/parameters.h>
#include <nw/path.h>
#include <nw/path_evaluator.h>
#include <nw/path_flow.h>
#include <nw/path_flow_registration.h>
#include <nw/path_observer.h>
#include <nw/path_parameters.h>
#include <nw/protocol.h>
#include <nw/protocol_data_array.h>
#include <nw/protocol_definition.h>
#include <nw/protocol_establishment_report.h>
#include <nw/protocol_instance.h>
#include <nw/protocol_instance_stub.h>
#include <nw/protocol_metadata.h>
#include <nw/protocol_options.h>
#include <nw/protocol_socket.h>
#include <nw/protocol_stack.h>
#include <nw/protocol_transform.h>
#include <nw/proxy.h>
#include <nw/queue.h>
#include <nw/quic.h>
#include <nw/read_request.h>
#include <nw/resolver.h>
#include <nw/service_connector.h>
#include <nw/shoes_server.h>
#include <nw/socks5_connection.h>
#include <nw/socks5_server.h>
#include <nw/tcp.h>
#include <nw/tcp_connection.h>
#include <nw/tcp_listener.h>
#include <nw/tls.h>
#include <nw/txt_record.h>
#include <nw/udp.h>
#include <nw/unique_connection.h>
#include <nw/unique_connection_request.h>
#include <nw/utilities.h>
#include <nw/write_request.h>
#include <nw/ws.h>
#include <nw/ws_ping_request.h>
#include <nw/ws_request.h>
#include <nw/ws_response.h>

#include <nw/NW_URL_ENDPOINT_CLS.h>

void* __nw_create_backtrace_string(void);
void* __nw_should_simulate_crash(void);

void* copymptcpinfo(void);
void* freemptcpinfo(void);
void* in6_pseudo(void);
void* in_addword(void);
void* in_adjust_cksum(void);
void* in_finalize_cksum(void);
void* in_pseudo(void);
void* inet_cksum(void);

void* nw_SSLAllocBuffer(void);
void* nw_SSLCopyBuffer(void);
void* nw_SSLCopyBufferFromData(void);
void* nw_SSLFreeBuffer(void);
void* nw_allow_use_of_dispatch(void);
void* nw_allow_use_of_dispatch_internal(void);
void* nw_data_mode_to_string(void);
void* nw_dispatch_data_is_equal(void);
void* nw_is_dispatch_allowed(void);
void* nw_link_get_flow_control_status(void);
void* nw_link_set_flow_control_status(void);
void* nw_mem_buffer_allocate(void);
void* nw_mem_buffer_free(void);
void* nw_mpkl_child_has_forked(void);
void* nw_mpkl_copy_log_object(void);
void* nw_packet_hash_table_create(void);
void* nw_settings_register_boringssl_log_debug_updates(void);
void* nw_settings_register_networkd_privileged(void);
void* nw_settings_register_quic_log_debug_updates(void);
void* nw_settings_setup_atfork(void);
void* nw_socket_protocol_identifier(void);
void* nw_unordered_xpc_array_is_equal(void);
void* nw_utf8_validator_init(void);
void* nw_utf8_validator_is_parsing(void);
void* nw_utf8_validator_parse(void);

void* sa_dst_compare(void);
void* sa_dst_compare_no_dependencies(void);
void* sa_dst_compare_no_stats(void);

void* tcp_fallback_watcher_fallback_inuse(void);
void* udp_validate_cksum(void);
void* validate_tcp_cksum(void);

void* network_retain(void* network_object);
void network_release(void* network_object);

void* nw_retain(void* nw_object);
void nw_release(void* nw_object);

#endif // _NW_NW_H_
