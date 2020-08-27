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

#ifndef _NW_NETWORKD_H_
#define _NW_NETWORKD_H_

void* networkd_privileged_reload_managed_network_settings(void);
void* networkd_privileged_set_agent_on_interface_internal(void);
void* networkd_privileged_set_constrained(void);
void* networkd_privileged_set_expensive(void);
void* networkd_privileged_setup_feth_pair(void);
void* networkd_privileged_teardown_feth_pair(void);
void* networkd_privileged_type_to_string(void);
void* networkd_settings_copy_value_of_type(void);
void* networkd_settings_get_bool(void);
void* networkd_settings_get_int64(void);
void* networkd_settings_get_int64_with_default(void);

#endif // _NW_NETWORKD_H_
