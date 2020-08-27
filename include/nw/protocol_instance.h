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

#ifndef _NW_PROTOCOL_INSTANCE_H_
#define _NW_PROTOCOL_INSTANCE_H_

#include <nw/base.h>

_NW_OPAQUE(nw_protocol_instance);

void* nw_protocol_instance_access_cached_content(void);
void* nw_protocol_instance_access_flow_state(void);
void* nw_protocol_instance_access_globals(void);
void* nw_protocol_instance_access_state(void);
void* nw_protocol_instance_add_inbound(void);
void* nw_protocol_instance_add_new_flow(void);
void* nw_protocol_instance_add_outbound(void);
void* nw_protocol_instance_clear_flow_for_key(void);
void* nw_protocol_instance_copy_definition(void);
void* nw_protocol_instance_copy_options(void);
void* nw_protocol_instance_copy_path(void);
void* nw_protocol_instance_enumerate_flow_keys(void);
void* nw_protocol_instance_enumerate_flows(void);
void* nw_protocol_instance_get_flow_for_key(void);
void* nw_protocol_instance_get_stats(void);
void* nw_protocol_instance_get_stats_region(void);
void* nw_protocol_instance_notify_updated_metadata(void);
void* nw_protocol_instance_report_done(void);
void* nw_protocol_instance_report_ready(void);
void* nw_protocol_instance_schedule_wakeup(void);
void* nw_protocol_instance_set_allow_buffering(void);
void* nw_protocol_instance_set_cached_content(void);
void* nw_protocol_instance_set_flow_for_key(void);
void* nw_protocol_instance_set_is_datagram(void);
void* nw_protocol_instance_set_limit_outbound_data(void);
void* nw_protocol_instance_set_maximum_content_size(void);
void* nw_protocol_instance_set_reserve_footer_size(void);
void* nw_protocol_instance_set_reserve_header_size(void);
void* nw_protocol_instance_set_wakeup_handler(void);
void* nw_protocol_instance_update_outbound_data_limit(void);

#endif // _NW_PROTOCOL_INSTANCE_H_
