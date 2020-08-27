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

#ifndef _NW_PATH_FLOW_REGISTRATION_H_
#define _NW_PATH_FLOW_REGISTRATION_H_

#include <nw/base.h>

_NW_OPAQUE(nw_path_flow_registration);

void* nw_path_flow_registration_access_interface_stats(void);
void* nw_path_flow_registration_clear_stats_regions(void);
void* nw_path_flow_registration_close(void);
void* nw_path_flow_registration_copy_description(void);
void* nw_path_flow_registration_ecn_enabled(void);
void* nw_path_flow_registration_fast_open_blocked(void);
void* nw_path_flow_registration_get_advisory_region(void);
void* nw_path_flow_registration_get_ctl_command(void);
void* nw_path_flow_registration_get_id(void);
void* nw_path_flow_registration_get_nexus_flow_index(void);
void* nw_path_flow_registration_get_nexus_instance(void);
void* nw_path_flow_registration_get_nexus_key(void);
void* nw_path_flow_registration_get_partial_checksum_offload(void);
void* nw_path_flow_registration_get_stats_area(void);
void* nw_path_flow_registration_get_stats_region(void);
void* nw_path_flow_registration_get_tfo_cookie(void);
void* nw_path_flow_registration_get_tfo_cookie_len(void);
void* nw_path_flow_registration_override_interface_types(void);
void* nw_path_flow_registration_override_traffic_class(void);
void* nw_path_flow_registration_set_advisory_region(void);
void* nw_path_flow_registration_set_ecn_cache(void);
void* nw_path_flow_registration_set_partial_checksum_offload(void);
void* nw_path_flow_registration_set_stats_region(void);
void* nw_path_flow_registration_set_tfo_cache(void);
void* nw_path_flow_registration_uses_nexus(void);

#endif // _NW_PATH_FLOW_REGISTRATION_H_
