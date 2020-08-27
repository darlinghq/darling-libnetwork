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

#ifndef _NW_QUIC_H_
#define _NW_QUIC_H_

void* nw_quic_connection_copy_sec_protocol_metadata(void);
void* nw_quic_connection_copy_sec_protocol_options(void);
void* nw_quic_connection_get_idle_timeout(void);
void* nw_quic_connection_get_initial_max_data(void);
void* nw_quic_connection_get_initial_max_stream_data_bidirectional_local(void);
void* nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(void);
void* nw_quic_connection_get_initial_max_stream_data_unidirectional(void);
void* nw_quic_connection_get_initial_max_streams_bidirectional(void);
void* nw_quic_connection_get_initial_max_streams_unidirectional(void);
void* nw_quic_connection_get_max_packet_size(void);
void* nw_quic_connection_get_max_streams_bidirectional(void);
void* nw_quic_connection_get_max_streams_bidirectional_handler(void);
void* nw_quic_connection_get_max_streams_unidirectional(void);
void* nw_quic_connection_get_max_streams_unidirectional_handler(void);
void* nw_quic_connection_metadata_set_stream_options(void);
void* nw_quic_connection_set_idle_timeout(void);
void* nw_quic_connection_set_initial_max_data(void);
void* nw_quic_connection_set_initial_max_stream_data_bidirectional_local(void);
void* nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(void);
void* nw_quic_connection_set_initial_max_stream_data_unidirectional(void);
void* nw_quic_connection_set_initial_max_streams_bidirectional(void);
void* nw_quic_connection_set_initial_max_streams_unidirectional(void);
void* nw_quic_connection_set_max_data(void);
void* nw_quic_connection_set_max_data_handler(void);
void* nw_quic_connection_set_max_packet_size(void);
void* nw_quic_connection_set_max_stream_data_bidirectional_local(void);
void* nw_quic_connection_set_max_stream_data_bidirectional_local_handler(void);
void* nw_quic_connection_set_max_stream_data_bidirectional_remote(void);
void* nw_quic_connection_set_max_stream_data_bidirectional_remote_handler(void);
void* nw_quic_connection_set_max_stream_data_unidirectional(void);
void* nw_quic_connection_set_max_stream_data_unidirectional_handler(void);
void* nw_quic_connection_set_max_streams_bidirectional(void);
void* nw_quic_connection_set_max_streams_bidirectional_handler(void);
void* nw_quic_connection_set_max_streams_unidirectional(void);
void* nw_quic_connection_set_max_streams_unidirectional_handler(void);
void* nw_quic_connection_set_sec_protocol_metadata(void);

void* nw_quic_create_connection_metadata(void);
void* nw_quic_create_connection_options(void);
void* nw_quic_create_stream_options(void);

void* nw_quic_metadata_copy_stream_options(void);
void* nw_quic_metadata_set_original(void);

void* nw_quic_stream_copy_shared_connection_options(void);
void* nw_quic_stream_get_is_unidirectional(void);
void* nw_quic_stream_set_is_unidirectional(void);

#endif // _NW_QUIC_H_
