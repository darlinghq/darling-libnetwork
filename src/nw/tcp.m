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

#include <nw/tcp.h>
#include <nw/internal/stubs.h>
DARLING_NW_STUB(nw_tcp_connection_copy_error);
DARLING_NW_STUB(nw_tcp_connection_set_tls_message_handler);
DARLING_NW_STUB(nw_tcp_connection_set_tls_prepare_handler);
DARLING_NW_STUB(nw_tcp_create_metadata);
DARLING_NW_STUB_FUNCTION(nw_protocol_options_t, nw_tcp_create_options, (void));
DARLING_NW_STUB_FUNCTION(uint32_t, nw_tcp_get_available_receive_buffer, (nw_protocol_metadata_t NW_NON_NULL metadata));
DARLING_NW_STUB_FUNCTION(uint32_t, nw_tcp_get_available_send_buffer, (nw_protocol_metadata_t NW_NON_NULL metadata));
DARLING_NW_STUB(nw_tcp_options_get_connection_timeout);
DARLING_NW_STUB(nw_tcp_options_get_disable_ack_stretching);
DARLING_NW_STUB(nw_tcp_options_get_disable_blackhole_detection);
DARLING_NW_STUB(nw_tcp_options_get_disable_ecn);
DARLING_NW_STUB(nw_tcp_options_get_enable_background_traffic_management);
DARLING_NW_STUB(nw_tcp_options_get_enable_fast_open);
DARLING_NW_STUB(nw_tcp_options_get_enable_keepalive);
DARLING_NW_STUB(nw_tcp_options_get_enable_keepalive_offload);
DARLING_NW_STUB(nw_tcp_options_get_fast_open_force_enable);
DARLING_NW_STUB(nw_tcp_options_get_keepalive_count);
DARLING_NW_STUB(nw_tcp_options_get_keepalive_idle_time);
DARLING_NW_STUB(nw_tcp_options_get_keepalive_interval);
DARLING_NW_STUB(nw_tcp_options_get_maximum_segment_size);
DARLING_NW_STUB(nw_tcp_options_get_no_delay);
DARLING_NW_STUB(nw_tcp_options_get_no_fast_open_cookie);
DARLING_NW_STUB(nw_tcp_options_get_no_options);
DARLING_NW_STUB(nw_tcp_options_get_no_push);
DARLING_NW_STUB(nw_tcp_options_get_no_timewait);
DARLING_NW_STUB(nw_tcp_options_get_persist_timeout);
DARLING_NW_STUB(nw_tcp_options_get_reduce_buffering);
DARLING_NW_STUB(nw_tcp_options_get_retransmit_connection_drop_time);
DARLING_NW_STUB(nw_tcp_options_get_retransmit_fin_drop);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_connection_timeout, (nw_protocol_options_t NW_NON_NULL options, uint32_t connection_timeout));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_disable_ack_stretching, (nw_protocol_options_t NW_NON_NULL options, bool disable_ack_stretching));
DARLING_NW_STUB(nw_tcp_options_set_disable_blackhole_detection);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_disable_ecn, (nw_protocol_options_t NW_NON_NULL options, bool disable_ecn));
DARLING_NW_STUB(nw_tcp_options_set_enable_background_traffic_management);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_enable_fast_open, (nw_protocol_options_t NW_NON_NULL options, bool enable_fast_open));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_enable_keepalive, (nw_protocol_options_t NW_NON_NULL options, bool enable_keepalive));
DARLING_NW_STUB(nw_tcp_options_set_enable_keepalive_offload);
DARLING_NW_STUB(nw_tcp_options_set_fast_open_force_enable);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_keepalive_count, (nw_protocol_options_t NW_NON_NULL options, uint32_t keepalive_count));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_keepalive_idle_time, (nw_protocol_options_t NW_NON_NULL options, uint32_t keepalive_idle_time));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_keepalive_interval, (nw_protocol_options_t NW_NON_NULL options, uint32_t keepalive_interval));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_maximum_segment_size, (nw_protocol_options_t NW_NON_NULL options, uint32_t maximum_segment_size));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_no_delay, (nw_protocol_options_t NW_NON_NULL options, bool no_delay));
DARLING_NW_STUB(nw_tcp_options_set_no_fast_open_cookie);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_no_options, (nw_protocol_options_t NW_NON_NULL options, bool no_options));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_no_push, (nw_protocol_options_t NW_NON_NULL options, bool no_push));
DARLING_NW_STUB(nw_tcp_options_set_no_timewait);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_persist_timeout, (nw_protocol_options_t NW_NON_NULL options, uint32_t persist_timeout));
DARLING_NW_STUB(nw_tcp_options_set_reduce_buffering);
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_retransmit_connection_drop_time, (nw_protocol_options_t NW_NON_NULL options, uint32_t retransmit_connection_drop_time));
DARLING_NW_STUB_VOID_FUNCTION(nw_tcp_options_set_retransmit_fin_drop, (nw_protocol_options_t NW_NON_NULL options, bool retransmit_fin_drop));
DARLING_NW_STUB(nw_tcp_set_callbacks);
