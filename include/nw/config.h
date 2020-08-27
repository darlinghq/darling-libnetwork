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

#ifndef _NW_CONFIG_H_
#define _NW_CONFIG_H_

void* network_config_cellular_blocked_observer_cancel(void);
void* network_config_cellular_blocked_observer_create(void);
void* network_config_cellular_failed_observer_create(void);
void* network_config_check_interface_settings(void);
void* network_config_copy_setting(void);
void* network_config_get_bool_setting(void);
void* network_config_get_bool_setting_with_default(void);
void* network_config_get_default_multipath_service_type(void);
void* network_config_get_int64_setting(void);
void* network_config_get_int64_setting_with_default(void);
void* network_config_get_multipath_allow_aggregation(void);
void* network_config_has_cellular_fallback_enabled_in_metrics_testing(void);
void* network_config_mptcp_cell_in_use(void);
void* network_config_mptcp_watcher_create(void);
void* network_config_mptcp_watcher_destroy(void);
void* network_config_open_kernel_network_advisory_socket(void);
void* network_config_register_boringssl_log_debug_updates(void);
void* network_config_register_quic_log_debug_updates(void);
void* network_config_set_bool_setting(void);
void* network_config_set_bool_sysctl_setting(void);
void* network_config_set_default_multipath_service_type(void);
void* network_config_set_int64_setting(void);
void* network_config_set_int_sysctl_setting(void);
void* network_config_set_interface_constrained(void);
void* network_config_set_interface_expensive(void);
void* network_config_set_multipath_allow_aggregation(void);
void* network_config_set_opportunistic_blocked(void);
void* network_config_set_persistent_interface(void);
void* network_config_set_setting(void);
void* network_config_wifi_blocked_observer_create(void);

#endif // _NW_CONFIG_H_
