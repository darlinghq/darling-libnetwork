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

#ifndef _NW_PATH_FLOW_H_
#define _NW_PATH_FLOW_H_

#include <nw/base.h>

_NW_OPAQUE(nw_path_flow);

void* nw_path_flow_copy_description(void);
void* nw_path_flow_copy_interface(void);
void* nw_path_flow_copy_local_endpoint(void);
void* nw_path_flow_copy_remote_endpoint(void);
void* nw_path_flow_create(void);
void* nw_path_flow_ecn_enabled(void);
void* nw_path_flow_fast_open_blocked(void);
void* nw_path_flow_get_id(void);
void* nw_path_flow_get_nexus_agent_uuid(void);
void* nw_path_flow_get_nexus_instance(void);
void* nw_path_flow_get_nexus_key(void);
void* nw_path_flow_has_ipv4(void);
void* nw_path_flow_has_ipv6(void);
void* nw_path_flow_ids_are_equal(void);
void* nw_path_flow_is_assigned(void);
void* nw_path_flow_is_defunct(void);
void* nw_path_flow_is_direct(void);
void* nw_path_flow_is_equal(void);
void* nw_path_flow_is_local(void);
void* nw_path_flow_is_viable(void);

// i think these might belong elsewhere
void* nw_path_flow_nexus_can_support_user_packet_pool(void);
void* nw_path_flow_nexus_should_use_event_ring(void);

#endif // _NW_PATH_FLOW_H_
