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

#ifndef _NW_NETCORE_H_
#define _NW_NETCORE_H_

void* netcore_append_format(void);
void* netcore_bool_to_string(void);
void* netcore_convert_to_timebase(void);
void* netcore_create_buffer_str_slow(void);
void* netcore_create_control_socket(void);
void* netcore_delta_ms(void);
void* netcore_delta_nanos(void);
void* netcore_dispatch_data_copyout(void);
void* netcore_dispatch_data_copyout_from_offset(void);
void* netcore_dispatch_data_to_iovec(void);
void* netcore_dispatch_data_to_iovec_partial(void);
void* netcore_get_future_continuous_time(void);
void* netcore_get_future_time_from(void);
void* netcore_is_cellular_fallback_enabled_in_metrics_testing(void);
void* netcore_is_ip_address(void);
void* netcore_mach_continuous_time(void);
void* netcore_queue(void);
void* netcore_stats_tcp_report_copy_description(void);
void* netcore_xpc_array_get_value_of_type(void);
void* netcore_xpc_dictionary_get_value_of_type(void);

#endif // _NW_NETCORE_H_
