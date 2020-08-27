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

#ifndef _NW_DATA_TRANSFER_REPORT_H_
#define _NW_DATA_TRANSFER_REPORT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_data_transfer_report);

void* nw_data_transfer_report_collect(void);
void* nw_data_transfer_report_copy_dictionary(void);
void* nw_data_transfer_report_copy_path_interface(void);
void* nw_data_transfer_report_create_from_dictionary(void);
void* nw_data_transfer_report_get_duration_milliseconds(void);
void* nw_data_transfer_report_get_path_count(void);
void* nw_data_transfer_report_get_received_application_byte_count(void);
void* nw_data_transfer_report_get_received_ip_packet_count(void);
void* nw_data_transfer_report_get_received_transport_byte_count(void);
void* nw_data_transfer_report_get_received_transport_duplicate_byte_count(void);
void* nw_data_transfer_report_get_received_transport_out_of_order_byte_count(void);
void* nw_data_transfer_report_get_sent_application_byte_count(void);
void* nw_data_transfer_report_get_sent_ip_packet_count(void);
void* nw_data_transfer_report_get_sent_transport_byte_count(void);
void* nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(void);
void* nw_data_transfer_report_get_state(void);
void* nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(void);
void* nw_data_transfer_report_get_transport_rtt_variance(void);
void* nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(void);

#endif // _NW_DATA_TRANSFER_REPORT_H_
