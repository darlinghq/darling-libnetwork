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

#ifndef _NW_NETWORK_AGENT_H_
#define _NW_NETWORK_AGENT_H_

void* nw_network_agent_add_persistent_agent_to_interface(void);
void* nw_network_agent_add_to_interface(void);
void* nw_network_agent_copy_dictionary_for_uuid(void);
void* nw_network_agent_copy_uuid(void);
void* nw_network_agent_create_agent_from_data(void);
void* nw_network_agent_ctl_copy_received_agent_message(void);
void* nw_network_agent_ctl_send_assign_message(void);
void* nw_network_agent_ctl_setsockopt(void);
void* nw_network_agent_get_agent_classs(void);
void* nw_network_agent_get_agent_from_dictionary(void);
void* nw_network_agent_get_data(void);
void* nw_network_agent_get_description(void);
void* nw_network_agent_get_domain(void);
void* nw_network_agent_get_type(void);
void* nw_network_agent_get_use_count(void);
void* nw_network_agent_is_active(void);
void* nw_network_agent_is_kernel_activated(void);
void* nw_network_agent_is_user_activated(void);
void* nw_network_agent_is_voluntary(void);
void* nw_network_agent_open_control_socket(void);
void* nw_network_agent_register(void);
void* nw_network_agent_release(void);
void* nw_network_agent_remove_from_interface(void);
void* nw_network_agent_set_use_count(void);
void* nw_network_agent_start(void);
void* nw_network_agent_stop(void);
void* nw_network_agent_unregister(void);
void* nw_network_agent_update_registration(void);

#endif // _NW_NETWORK_AGENT_H_
