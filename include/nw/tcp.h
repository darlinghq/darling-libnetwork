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

#ifndef _NW_TCP_H_
#define _NW_TCP_H_

void* nw_tcp_create_metadata(void);
void* nw_tcp_create_options(void);
void* nw_tcp_get_available_receive_buffer(void);
void* nw_tcp_get_available_send_buffer(void);
void* nw_tcp_set_callbacks(void);

void* nw_tcp_connection_copy_error(void);
void* nw_tcp_connection_set_tls_message_handler(void);
void* nw_tcp_connection_set_tls_prepare_handler(void);

void* nw_tcp_options_get_connection_timeout(void);
void* nw_tcp_options_get_disable_ack_stretching(void);
void* nw_tcp_options_get_disable_blackhole_detection(void);
void* nw_tcp_options_get_disable_ecn(void);
void* nw_tcp_options_get_enable_background_traffic_management(void);
void* nw_tcp_options_get_enable_fast_open(void);
void* nw_tcp_options_get_enable_keepalive(void);
void* nw_tcp_options_get_enable_keepalive_offload(void);
void* nw_tcp_options_get_fast_open_force_enable(void);
void* nw_tcp_options_get_keepalive_count(void);
void* nw_tcp_options_get_keepalive_idle_time(void);
void* nw_tcp_options_get_keepalive_interval(void);
void* nw_tcp_options_get_maximum_segment_size(void);
void* nw_tcp_options_get_no_delay(void);
void* nw_tcp_options_get_no_fast_open_cookie(void);
void* nw_tcp_options_get_no_options(void);
void* nw_tcp_options_get_no_push(void);
void* nw_tcp_options_get_no_timewait(void);
void* nw_tcp_options_get_persist_timeout(void);
void* nw_tcp_options_get_reduce_buffering(void);
void* nw_tcp_options_get_retransmit_connection_drop_time(void);
void* nw_tcp_options_get_retransmit_fin_drop(void);
void* nw_tcp_options_set_connection_timeout(void);
void* nw_tcp_options_set_disable_ack_stretching(void);
void* nw_tcp_options_set_disable_blackhole_detection(void);
void* nw_tcp_options_set_disable_ecn(void);
void* nw_tcp_options_set_enable_background_traffic_management(void);
void* nw_tcp_options_set_enable_fast_open(void);
void* nw_tcp_options_set_enable_keepalive(void);
void* nw_tcp_options_set_enable_keepalive_offload(void);
void* nw_tcp_options_set_fast_open_force_enable(void);
void* nw_tcp_options_set_keepalive_count(void);
void* nw_tcp_options_set_keepalive_idle_time(void);
void* nw_tcp_options_set_keepalive_interval(void);
void* nw_tcp_options_set_maximum_segment_size(void);
void* nw_tcp_options_set_no_delay(void);
void* nw_tcp_options_set_no_fast_open_cookie(void);
void* nw_tcp_options_set_no_options(void);
void* nw_tcp_options_set_no_push(void);
void* nw_tcp_options_set_no_timewait(void);
void* nw_tcp_options_set_persist_timeout(void);
void* nw_tcp_options_set_reduce_buffering(void);
void* nw_tcp_options_set_retransmit_connection_drop_time(void);
void* nw_tcp_options_set_retransmit_fin_drop(void);

#endif // _NW_TCP_H_
