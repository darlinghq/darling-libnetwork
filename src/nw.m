/*
 This file is part of Darling.

 Copyright (C) 2019 Lubos Dolezel

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


#include <nw/network.h>
#include <stdlib.h>
#include <stdio.h>

static int verbose = 0;

__attribute__((constructor))
static void initme(void) {
    verbose = getenv("STUB_VERBOSE") != NULL;
}

void* __nw_create_backtrace_string(void)
{
    if (verbose) puts("STUB: __nw_create_backtrace_string called");
    return NULL;
}

void* __nw_should_simulate_crash(void)
{
    if (verbose) puts("STUB: __nw_should_simulate_crash called");
    return NULL;
}

void* __nwlog_create_hash_from_private_string(void)
{
    if (verbose) puts("STUB: __nwlog_create_hash_from_private_string called");
    return NULL;
}

void* __nwlog_disable_simulate_crash_block(void)
{
    if (verbose) puts("STUB: __nwlog_disable_simulate_crash_block called");
    return NULL;
}

void* __nwlog_dump_to_fd(void)
{
    if (verbose) puts("STUB: __nwlog_dump_to_fd called");
    return NULL;
}

void* __nwlog_err_simulate_crash(void)
{
    if (verbose) puts("STUB: __nwlog_err_simulate_crash called");
    return NULL;
}

void* __nwlog_is_datapath_logging_enabled(void)
{
    if (verbose) puts("STUB: __nwlog_is_datapath_logging_enabled called");
    return NULL;
}

void* __nwlog_level_enabled(void)
{
    if (verbose) puts("STUB: __nwlog_level_enabled called");
    return NULL;
}

void* __nwlog_obj(void)
{
    if (verbose) puts("STUB: __nwlog_obj called");
    return NULL;
}

void* __nwlog_override_fd(void)
{
    if (verbose) puts("STUB: __nwlog_override_fd called");
    return NULL;
}

void* __nwlog_override_simulate_crash_block(void)
{
    if (verbose) puts("STUB: __nwlog_override_simulate_crash_block called");
    return NULL;
}

void* __nwlog_pack(void)
{
    if (verbose) puts("STUB: __nwlog_pack called");
    return NULL;
}

void* __nwlog_register_helper(void)
{
    if (verbose) puts("STUB: __nwlog_register_helper called");
    return NULL;
}

void* __nwlog_run_with_lock(void)
{
    if (verbose) puts("STUB: __nwlog_run_with_lock called");
    return NULL;
}

void* __nwlog_salted_hash(void)
{
    if (verbose) puts("STUB: __nwlog_salted_hash called");
    return NULL;
}

void* __nwlog_salted_hostname_hash(void)
{
    if (verbose) puts("STUB: __nwlog_salted_hostname_hash called");
    return NULL;
}

void* __nwlog_snprintf_pack(void)
{
    if (verbose) puts("STUB: __nwlog_snprintf_pack called");
    return NULL;
}

void* copyassocids(void)
{
    if (verbose) puts("STUB: copyassocids called");
    return NULL;
}

void* copyconnids(void)
{
    if (verbose) puts("STUB: copyconnids called");
    return NULL;
}

void* copyconninfo(void)
{
    if (verbose) puts("STUB: copyconninfo called");
    return NULL;
}

void* copymptcpinfo(void)
{
    if (verbose) puts("STUB: copymptcpinfo called");
    return NULL;
}

void* freeassocids(void)
{
    if (verbose) puts("STUB: freeassocids called");
    return NULL;
}

void* freeconnids(void)
{
    if (verbose) puts("STUB: freeconnids called");
    return NULL;
}

void* freeconninfo(void)
{
    if (verbose) puts("STUB: freeconninfo called");
    return NULL;
}

void* freemptcpinfo(void)
{
    if (verbose) puts("STUB: freemptcpinfo called");
    return NULL;
}

void* in6_pseudo(void)
{
    if (verbose) puts("STUB: in6_pseudo called");
    return NULL;
}

void* in_addword(void)
{
    if (verbose) puts("STUB: in_addword called");
    return NULL;
}

void* in_adjust_cksum(void)
{
    if (verbose) puts("STUB: in_adjust_cksum called");
    return NULL;
}

void* in_finalize_cksum(void)
{
    if (verbose) puts("STUB: in_finalize_cksum called");
    return NULL;
}

void* in_pseudo(void)
{
    if (verbose) puts("STUB: in_pseudo called");
    return NULL;
}

void* inet_cksum(void)
{
    if (verbose) puts("STUB: inet_cksum called");
    return NULL;
}

void* netcore_append_format(void)
{
    if (verbose) puts("STUB: netcore_append_format called");
    return NULL;
}

void* netcore_bool_to_string(void)
{
    if (verbose) puts("STUB: netcore_bool_to_string called");
    return NULL;
}

void* netcore_convert_to_timebase(void)
{
    if (verbose) puts("STUB: netcore_convert_to_timebase called");
    return NULL;
}

void* netcore_create_buffer_str_slow(void)
{
    if (verbose) puts("STUB: netcore_create_buffer_str_slow called");
    return NULL;
}

void* netcore_create_control_socket(void)
{
    if (verbose) puts("STUB: netcore_create_control_socket called");
    return NULL;
}

void* netcore_delta_ms(void)
{
    if (verbose) puts("STUB: netcore_delta_ms called");
    return NULL;
}

void* netcore_delta_nanos(void)
{
    if (verbose) puts("STUB: netcore_delta_nanos called");
    return NULL;
}

void* netcore_dispatch_data_copyout(void)
{
    if (verbose) puts("STUB: netcore_dispatch_data_copyout called");
    return NULL;
}

void* netcore_dispatch_data_copyout_from_offset(void)
{
    if (verbose) puts("STUB: netcore_dispatch_data_copyout_from_offset called");
    return NULL;
}

void* netcore_dispatch_data_to_iovec(void)
{
    if (verbose) puts("STUB: netcore_dispatch_data_to_iovec called");
    return NULL;
}

void* netcore_dispatch_data_to_iovec_partial(void)
{
    if (verbose) puts("STUB: netcore_dispatch_data_to_iovec_partial called");
    return NULL;
}

void* netcore_get_future_continuous_time(void)
{
    if (verbose) puts("STUB: netcore_get_future_continuous_time called");
    return NULL;
}

void* netcore_get_future_time_from(void)
{
    if (verbose) puts("STUB: netcore_get_future_time_from called");
    return NULL;
}

void* netcore_is_cellular_fallback_enabled_in_metrics_testing(void)
{
    if (verbose) puts("STUB: netcore_is_cellular_fallback_enabled_in_metrics_testing called");
    return NULL;
}

void* netcore_is_ip_address(void)
{
    if (verbose) puts("STUB: netcore_is_ip_address called");
    return NULL;
}

void* netcore_mach_continuous_time(void)
{
    if (verbose) puts("STUB: netcore_mach_continuous_time called");
    return NULL;
}

void* netcore_queue(void)
{
    if (verbose) puts("STUB: netcore_queue called");
    return NULL;
}

void* netcore_stats_tcp_report_copy_description(void)
{
    if (verbose) puts("STUB: netcore_stats_tcp_report_copy_description called");
    return NULL;
}

void* netcore_xpc_array_get_value_of_type(void)
{
    if (verbose) puts("STUB: netcore_xpc_array_get_value_of_type called");
    return NULL;
}

void* netcore_xpc_dictionary_get_value_of_type(void)
{
    if (verbose) puts("STUB: netcore_xpc_dictionary_get_value_of_type called");
    return NULL;
}

void* network_config_cellular_blocked_observer_cancel(void)
{
    if (verbose) puts("STUB: network_config_cellular_blocked_observer_cancel called");
    return NULL;
}

void* network_config_cellular_blocked_observer_create(void)
{
    if (verbose) puts("STUB: network_config_cellular_blocked_observer_create called");
    return NULL;
}

void* network_config_cellular_failed_observer_create(void)
{
    if (verbose) puts("STUB: network_config_cellular_failed_observer_create called");
    return NULL;
}

void* network_config_check_interface_settings(void)
{
    if (verbose) puts("STUB: network_config_check_interface_settings called");
    return NULL;
}

void* network_config_copy_setting(void)
{
    if (verbose) puts("STUB: network_config_copy_setting called");
    return NULL;
}

void* network_config_get_bool_setting(void)
{
    if (verbose) puts("STUB: network_config_get_bool_setting called");
    return NULL;
}

void* network_config_get_bool_setting_with_default(void)
{
    if (verbose) puts("STUB: network_config_get_bool_setting_with_default called");
    return NULL;
}

void* network_config_get_default_multipath_service_type(void)
{
    if (verbose) puts("STUB: network_config_get_default_multipath_service_type called");
    return NULL;
}

void* network_config_get_int64_setting(void)
{
    if (verbose) puts("STUB: network_config_get_int64_setting called");
    return NULL;
}

void* network_config_get_int64_setting_with_default(void)
{
    if (verbose) puts("STUB: network_config_get_int64_setting_with_default called");
    return NULL;
}

void* network_config_get_multipath_allow_aggregation(void)
{
    if (verbose) puts("STUB: network_config_get_multipath_allow_aggregation called");
    return NULL;
}

void* network_config_has_cellular_fallback_enabled_in_metrics_testing(void)
{
    if (verbose) puts("STUB: network_config_has_cellular_fallback_enabled_in_metrics_testing called");
    return NULL;
}

void* network_config_mptcp_cell_in_use(void)
{
    if (verbose) puts("STUB: network_config_mptcp_cell_in_use called");
    return NULL;
}

void* network_config_mptcp_watcher_create(void)
{
    if (verbose) puts("STUB: network_config_mptcp_watcher_create called");
    return NULL;
}

void* network_config_mptcp_watcher_destroy(void)
{
    if (verbose) puts("STUB: network_config_mptcp_watcher_destroy called");
    return NULL;
}

void* network_config_open_kernel_network_advisory_socket(void)
{
    if (verbose) puts("STUB: network_config_open_kernel_network_advisory_socket called");
    return NULL;
}

void* network_config_register_boringssl_log_debug_updates(void)
{
    if (verbose) puts("STUB: network_config_register_boringssl_log_debug_updates called");
    return NULL;
}

void* network_config_register_quic_log_debug_updates(void)
{
    if (verbose) puts("STUB: network_config_register_quic_log_debug_updates called");
    return NULL;
}

void* network_config_set_bool_setting(void)
{
    if (verbose) puts("STUB: network_config_set_bool_setting called");
    return NULL;
}

void* network_config_set_bool_sysctl_setting(void)
{
    if (verbose) puts("STUB: network_config_set_bool_sysctl_setting called");
    return NULL;
}

void* network_config_set_default_multipath_service_type(void)
{
    if (verbose) puts("STUB: network_config_set_default_multipath_service_type called");
    return NULL;
}

void* network_config_set_int64_setting(void)
{
    if (verbose) puts("STUB: network_config_set_int64_setting called");
    return NULL;
}

void* network_config_set_int_sysctl_setting(void)
{
    if (verbose) puts("STUB: network_config_set_int_sysctl_setting called");
    return NULL;
}

void* network_config_set_interface_constrained(void)
{
    if (verbose) puts("STUB: network_config_set_interface_constrained called");
    return NULL;
}

void* network_config_set_interface_expensive(void)
{
    if (verbose) puts("STUB: network_config_set_interface_expensive called");
    return NULL;
}

void* network_config_set_multipath_allow_aggregation(void)
{
    if (verbose) puts("STUB: network_config_set_multipath_allow_aggregation called");
    return NULL;
}

void* network_config_set_opportunistic_blocked(void)
{
    if (verbose) puts("STUB: network_config_set_opportunistic_blocked called");
    return NULL;
}

void* network_config_set_persistent_interface(void)
{
    if (verbose) puts("STUB: network_config_set_persistent_interface called");
    return NULL;
}

void* network_config_set_setting(void)
{
    if (verbose) puts("STUB: network_config_set_setting called");
    return NULL;
}

void* network_config_wifi_blocked_observer_create(void)
{
    if (verbose) puts("STUB: network_config_wifi_blocked_observer_create called");
    return NULL;
}

void* network_proxy_copy_host(void)
{
    if (verbose) puts("STUB: network_proxy_copy_host called");
    return NULL;
}

void* network_proxy_copy_password(void)
{
    if (verbose) puts("STUB: network_proxy_copy_password called");
    return NULL;
}

void* network_proxy_copy_user(void)
{
    if (verbose) puts("STUB: network_proxy_copy_user called");
    return NULL;
}

void* network_proxy_create_from_parameters(void)
{
    if (verbose) puts("STUB: network_proxy_create_from_parameters called");
    return NULL;
}

void* network_proxy_get_port(void)
{
    if (verbose) puts("STUB: network_proxy_get_port called");
    return NULL;
}

void* network_proxy_get_type(void)
{
    if (verbose) puts("STUB: network_proxy_get_type called");
    return NULL;
}

void* network_proxy_is_transparent(void)
{
    if (verbose) puts("STUB: network_proxy_is_transparent called");
    return NULL;
}

void* network_release(void)
{
    if (verbose) puts("STUB: network_release called");
    return NULL;
}

void* network_retain(void)
{
    if (verbose) puts("STUB: network_retain called");
    return NULL;
}

void* networkd_privileged_reload_managed_network_settings(void)
{
    if (verbose) puts("STUB: networkd_privileged_reload_managed_network_settings called");
    return NULL;
}

void* networkd_privileged_set_agent_on_interface_internal(void)
{
    if (verbose) puts("STUB: networkd_privileged_set_agent_on_interface_internal called");
    return NULL;
}

void* networkd_privileged_set_constrained(void)
{
    if (verbose) puts("STUB: networkd_privileged_set_constrained called");
    return NULL;
}

void* networkd_privileged_set_expensive(void)
{
    if (verbose) puts("STUB: networkd_privileged_set_expensive called");
    return NULL;
}

void* networkd_privileged_setup_feth_pair(void)
{
    if (verbose) puts("STUB: networkd_privileged_setup_feth_pair called");
    return NULL;
}

void* networkd_privileged_teardown_feth_pair(void)
{
    if (verbose) puts("STUB: networkd_privileged_teardown_feth_pair called");
    return NULL;
}

void* networkd_privileged_type_to_string(void)
{
    if (verbose) puts("STUB: networkd_privileged_type_to_string called");
    return NULL;
}

void* networkd_settings_copy_value_of_type(void)
{
    if (verbose) puts("STUB: networkd_settings_copy_value_of_type called");
    return NULL;
}

void* networkd_settings_get_bool(void)
{
    if (verbose) puts("STUB: networkd_settings_get_bool called");
    return NULL;
}

void* networkd_settings_get_int64(void)
{
    if (verbose) puts("STUB: networkd_settings_get_int64 called");
    return NULL;
}

void* networkd_settings_get_int64_with_default(void)
{
    if (verbose) puts("STUB: networkd_settings_get_int64_with_default called");
    return NULL;
}

void* nw_SSLAllocBuffer(void)
{
    if (verbose) puts("STUB: nw_SSLAllocBuffer called");
    return NULL;
}

void* nw_SSLCopyBuffer(void)
{
    if (verbose) puts("STUB: nw_SSLCopyBuffer called");
    return NULL;
}

void* nw_SSLCopyBufferFromData(void)
{
    if (verbose) puts("STUB: nw_SSLCopyBufferFromData called");
    return NULL;
}

void* nw_SSLFreeBuffer(void)
{
    if (verbose) puts("STUB: nw_SSLFreeBuffer called");
    return NULL;
}

void* nw_activity_activate(void)
{
    if (verbose) puts("STUB: nw_activity_activate called");
    return NULL;
}

void* nw_activity_child_has_forked(void)
{
    if (verbose) puts("STUB: nw_activity_child_has_forked called");
    return NULL;
}

void* nw_activity_complete_with_reason(void)
{
    if (verbose) puts("STUB: nw_activity_complete_with_reason called");
    return NULL;
}

void* nw_activity_copy_log_object(void)
{
    if (verbose) puts("STUB: nw_activity_copy_log_object called");
    return NULL;
}

void* nw_activity_copy_parent_activity(void)
{
    if (verbose) puts("STUB: nw_activity_copy_parent_activity called");
    return NULL;
}

void* nw_activity_copy_redacted_description(void)
{
    if (verbose) puts("STUB: nw_activity_copy_redacted_description called");
    return NULL;
}

void* nw_activity_copy_xpc_token(void)
{
    if (verbose) puts("STUB: nw_activity_copy_xpc_token called");
    return NULL;
}

void* nw_activity_create(void)
{
    if (verbose) puts("STUB: nw_activity_create called");
    return NULL;
}

void* nw_activity_create_from_token(void)
{
    if (verbose) puts("STUB: nw_activity_create_from_token called");
    return NULL;
}

void* nw_activity_create_from_xpc_token(void)
{
    if (verbose) puts("STUB: nw_activity_create_from_xpc_token called");
    return NULL;
}

void* nw_activity_create_retry(void)
{
    if (verbose) puts("STUB: nw_activity_create_retry called");
    return NULL;
}

void* nw_activity_deep_is_equal(void)
{
    if (verbose) puts("STUB: nw_activity_deep_is_equal called");
    return NULL;
}

void* nw_activity_domain_and_label_to_string(void)
{
    if (verbose) puts("STUB: nw_activity_domain_and_label_to_string called");
    return NULL;
}

void* nw_activity_domain_is_valid(void)
{
    if (verbose) puts("STUB: nw_activity_domain_is_valid called");
    return NULL;
}

void* nw_activity_domain_to_string(void)
{
    if (verbose) puts("STUB: nw_activity_domain_to_string called");
    return NULL;
}

void* nw_activity_duration_exceeds_threshold(void)
{
    if (verbose) puts("STUB: nw_activity_duration_exceeds_threshold called");
    return NULL;
}

void* nw_activity_duration_threshold_for_label(void)
{
    if (verbose) puts("STUB: nw_activity_duration_threshold_for_label called");
    return NULL;
}

void* nw_activity_get_activation_time(void)
{
    if (verbose) puts("STUB: nw_activity_get_activation_time called");
    return NULL;
}

void* nw_activity_get_completion_reason(void)
{
    if (verbose) puts("STUB: nw_activity_get_completion_reason called");
    return NULL;
}

void* nw_activity_get_domain(void)
{
    if (verbose) puts("STUB: nw_activity_get_domain called");
    return NULL;
}

void* nw_activity_get_duration(void)
{
    if (verbose) puts("STUB: nw_activity_get_duration called");
    return NULL;
}

void* nw_activity_get_investigation_identifier(void)
{
    if (verbose) puts("STUB: nw_activity_get_investigation_identifier called");
    return NULL;
}

void* nw_activity_get_is_retry(void)
{
    if (verbose) puts("STUB: nw_activity_get_is_retry called");
    return NULL;
}

void* nw_activity_get_label(void)
{
    if (verbose) puts("STUB: nw_activity_get_label called");
    return NULL;
}

void* nw_activity_get_reporting_strategy(void)
{
    if (verbose) puts("STUB: nw_activity_get_reporting_strategy called");
    return NULL;
}

void* nw_activity_get_token(void)
{
    if (verbose) puts("STUB: nw_activity_get_token called");
    return NULL;
}

void* nw_activity_has_global_investigation_identifier(void)
{
    if (verbose) puts("STUB: nw_activity_has_global_investigation_identifier called");
    return NULL;
}

void* nw_activity_has_investigation_identifier(void)
{
    if (verbose) puts("STUB: nw_activity_has_investigation_identifier called");
    return NULL;
}

void* nw_activity_is_activated(void)
{
    if (verbose) puts("STUB: nw_activity_is_activated called");
    return NULL;
}

void* nw_activity_is_complete(void)
{
    if (verbose) puts("STUB: nw_activity_is_complete called");
    return NULL;
}

void* nw_activity_is_equal(void)
{
    if (verbose) puts("STUB: nw_activity_is_equal called");
    return NULL;
}

void* nw_activity_is_lightweight_representation(void)
{
    if (verbose) puts("STUB: nw_activity_is_lightweight_representation called");
    return NULL;
}

void* nw_activity_is_selected_for_reporting(void)
{
    if (verbose) puts("STUB: nw_activity_is_selected_for_reporting called");
    return NULL;
}

void* nw_activity_label_is_valid(void)
{
    if (verbose) puts("STUB: nw_activity_label_is_valid called");
    return NULL;
}

void* nw_activity_label_to_string(void)
{
    if (verbose) puts("STUB: nw_activity_label_to_string called");
    return NULL;
}

void* nw_activity_set_investigation_identifier(void)
{
    if (verbose) puts("STUB: nw_activity_set_investigation_identifier called");
    return NULL;
}

void* nw_activity_set_parent_activity(void)
{
    if (verbose) puts("STUB: nw_activity_set_parent_activity called");
    return NULL;
}

void* nw_activity_set_reporting_strategy(void)
{
    if (verbose) puts("STUB: nw_activity_set_reporting_strategy called");
    return NULL;
}

void* nw_activity_should_report_to_destination(void)
{
    if (verbose) puts("STUB: nw_activity_should_report_to_destination called");
    return NULL;
}

void* nw_activity_uuid_is_selected_for_reporting(void)
{
    if (verbose) puts("STUB: nw_activity_uuid_is_selected_for_reporting called");
    return NULL;
}

void* nw_advertise_descriptor_copy_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_copy_txt_record_object called");
    return NULL;
}

void* nw_advertise_descriptor_create_bonjour_service(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_create_bonjour_service called");
    return NULL;
}

void* nw_advertise_descriptor_get_bonjour_domain(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_get_bonjour_domain called");
    return NULL;
}

void* nw_advertise_descriptor_get_bonjour_name(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_get_bonjour_name called");
    return NULL;
}

void* nw_advertise_descriptor_get_bonjour_type(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_get_bonjour_type called");
    return NULL;
}

void* nw_advertise_descriptor_get_no_auto_rename(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_get_no_auto_rename called");
    return NULL;
}

void* nw_advertise_descriptor_get_txt_record(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_get_txt_record called");
    return NULL;
}

void* nw_advertise_descriptor_set_no_auto_rename(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_set_no_auto_rename called");
    return NULL;
}

void* nw_advertise_descriptor_set_txt_record(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_set_txt_record called");
    return NULL;
}

void* nw_advertise_descriptor_set_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_advertise_descriptor_set_txt_record_object called");
    return NULL;
}

void* nw_allow_use_of_dispatch(void)
{
    if (verbose) puts("STUB: nw_allow_use_of_dispatch called");
    return NULL;
}

void* nw_allow_use_of_dispatch_internal(void)
{
    if (verbose) puts("STUB: nw_allow_use_of_dispatch_internal called");
    return NULL;
}

void* nw_array_append(void)
{
    if (verbose) puts("STUB: nw_array_append called");
    return NULL;
}

void* nw_array_apply(void)
{
    if (verbose) puts("STUB: nw_array_apply called");
    return NULL;
}

void* nw_array_contains_object(void)
{
    if (verbose) puts("STUB: nw_array_contains_object called");
    return NULL;
}

void* nw_array_copy(void)
{
    if (verbose) puts("STUB: nw_array_copy called");
    return NULL;
}

void* nw_array_create(void)
{
    if (verbose) puts("STUB: nw_array_create called");
    return NULL;
}

void* nw_array_create_by_removal(void)
{
    if (verbose) puts("STUB: nw_array_create_by_removal called");
    return NULL;
}

void* nw_array_create_combined_array(void)
{
    if (verbose) puts("STUB: nw_array_create_combined_array called");
    return NULL;
}

void* nw_array_duplicate_array_without_object(void)
{
    if (verbose) puts("STUB: nw_array_duplicate_array_without_object called");
    return NULL;
}

void* nw_array_get_count(void)
{
    if (verbose) puts("STUB: nw_array_get_count called");
    return NULL;
}

void* nw_array_get_object_at_index(void)
{
    if (verbose) puts("STUB: nw_array_get_object_at_index called");
    return NULL;
}

void* nw_array_is_equal(void)
{
    if (verbose) puts("STUB: nw_array_is_equal called");
    return NULL;
}

void* nw_association_clear_cached_content_for_protocol(void)
{
    if (verbose) puts("STUB: nw_association_clear_cached_content_for_protocol called");
    return NULL;
}

void* nw_association_copy_current_path(void)
{
    if (verbose) puts("STUB: nw_association_copy_current_path called");
    return NULL;
}

void* nw_association_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_association_copy_endpoint called");
    return NULL;
}

void* nw_association_create(void)
{
    if (verbose) puts("STUB: nw_association_create called");
    return NULL;
}

void* nw_association_create_flow(void)
{
    if (verbose) puts("STUB: nw_association_create_flow called");
    return NULL;
}

void* nw_association_force_update(void)
{
    if (verbose) puts("STUB: nw_association_force_update called");
    return NULL;
}

void* nw_association_get_cached_content_for_protocol(void)
{
    if (verbose) puts("STUB: nw_association_get_cached_content_for_protocol called");
    return NULL;
}

void* nw_association_get_connected_flow_count(void)
{
    if (verbose) puts("STUB: nw_association_get_connected_flow_count called");
    return NULL;
}

void* nw_association_is_empty(void)
{
    if (verbose) puts("STUB: nw_association_is_empty called");
    return NULL;
}

void* nw_association_mark_flow_connected(void)
{
    if (verbose) puts("STUB: nw_association_mark_flow_connected called");
    return NULL;
}

void* nw_association_mark_flow_disconnected(void)
{
    if (verbose) puts("STUB: nw_association_mark_flow_disconnected called");
    return NULL;
}

void* nw_association_register(void)
{
    if (verbose) puts("STUB: nw_association_register called");
    return NULL;
}

void* nw_association_set_cached_content_for_protocol(void)
{
    if (verbose) puts("STUB: nw_association_set_cached_content_for_protocol called");
    return NULL;
}

void* nw_association_unregister(void)
{
    if (verbose) puts("STUB: nw_association_unregister called");
    return NULL;
}

void* nw_authentication_challenge_copy_http_message(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_copy_http_message called");
    return NULL;
}

void* nw_authentication_challenge_copy_protection_space(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_copy_protection_space called");
    return NULL;
}

void* nw_authentication_challenge_create(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_create called");
    return NULL;
}

void* nw_authentication_challenge_get_attempt_count(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_get_attempt_count called");
    return NULL;
}

void* nw_authentication_challenge_get_type(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_get_type called");
    return NULL;
}

void* nw_authentication_challenge_set_attempt_count(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_set_attempt_count called");
    return NULL;
}

void* nw_authentication_challenge_set_protection_space(void)
{
    if (verbose) puts("STUB: nw_authentication_challenge_set_protection_space called");
    return NULL;
}

void* nw_authentication_credential_add_valid_authentication_type(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_add_valid_authentication_type called");
    return NULL;
}

void* nw_authentication_credential_create(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_create called");
    return NULL;
}

void* nw_authentication_credential_iterate_valid_authentication_types(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_iterate_valid_authentication_types called");
    return NULL;
}

void* nw_authentication_credential_set_identity(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_set_identity called");
    return NULL;
}

void* nw_authentication_credential_set_password(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_set_password called");
    return NULL;
}

void* nw_authentication_credential_set_username(void)
{
    if (verbose) puts("STUB: nw_authentication_credential_set_username called");
    return NULL;
}

void* nw_authentication_protection_space_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_authentication_protection_space_copy_endpoint called");
    return NULL;
}

void* nw_authentication_protection_space_create(void)
{
    if (verbose) puts("STUB: nw_authentication_protection_space_create called");
    return NULL;
}

void* nw_authentication_protection_space_get_is_proxy(void)
{
    if (verbose) puts("STUB: nw_authentication_protection_space_get_is_proxy called");
    return NULL;
}

void* nw_authentication_protection_space_set_endpoint(void)
{
    if (verbose) puts("STUB: nw_authentication_protection_space_set_endpoint called");
    return NULL;
}

void* nw_authentication_protection_space_set_is_proxy(void)
{
    if (verbose) puts("STUB: nw_authentication_protection_space_set_is_proxy called");
    return NULL;
}

void* nw_browse_descriptor_copy_custom_browse_block(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_copy_custom_browse_block called");
    return NULL;
}

void* nw_browse_descriptor_copy_custom_data(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_copy_custom_data called");
    return NULL;
}

void* nw_browse_descriptor_create_bonjour_service(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_create_bonjour_service called");
    return NULL;
}

void* nw_browse_descriptor_create_custom(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_create_custom called");
    return NULL;
}

void* nw_browse_descriptor_get_bonjour_service_domain(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_get_bonjour_service_domain called");
    return NULL;
}

void* nw_browse_descriptor_get_bonjour_service_type(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_get_bonjour_service_type called");
    return NULL;
}

void* nw_browse_descriptor_get_description(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_get_description called");
    return NULL;
}

void* nw_browse_descriptor_get_include_txt_record(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_get_include_txt_record called");
    return NULL;
}

void* nw_browse_descriptor_get_type(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_get_type called");
    return NULL;
}

void* nw_browse_descriptor_is_custom_type(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_is_custom_type called");
    return NULL;
}

void* nw_browse_descriptor_set_include_txt_record(void)
{
    if (verbose) puts("STUB: nw_browse_descriptor_set_include_txt_record called");
    return NULL;
}

void* nw_browse_result_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_browse_result_copy_endpoint called");
    return NULL;
}

void* nw_browse_result_copy_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_browse_result_copy_txt_record_object called");
    return NULL;
}

void* nw_browse_result_create(void)
{
    if (verbose) puts("STUB: nw_browse_result_create called");
    return NULL;
}

void* nw_browse_result_create_mutable_copy(void)
{
    if (verbose) puts("STUB: nw_browse_result_create_mutable_copy called");
    return NULL;
}

void* nw_browse_result_enumerate_interfaces(void)
{
    if (verbose) puts("STUB: nw_browse_result_enumerate_interfaces called");
    return NULL;
}

void* nw_browse_result_get_change_description(void)
{
    if (verbose) puts("STUB: nw_browse_result_get_change_description called");
    return NULL;
}

void* nw_browse_result_get_changes(void)
{
    if (verbose) puts("STUB: nw_browse_result_get_changes called");
    return NULL;
}

void* nw_browse_result_get_description(void)
{
    if (verbose) puts("STUB: nw_browse_result_get_description called");
    return NULL;
}

void* nw_browse_result_get_interfaces_count(void)
{
    if (verbose) puts("STUB: nw_browse_result_get_interfaces_count called");
    return NULL;
}

void* nw_browse_result_insert_interface(void)
{
    if (verbose) puts("STUB: nw_browse_result_insert_interface called");
    return NULL;
}

void* nw_browse_result_mark_immutable(void)
{
    if (verbose) puts("STUB: nw_browse_result_mark_immutable called");
    return NULL;
}

void* nw_browse_result_remove_interface(void)
{
    if (verbose) puts("STUB: nw_browse_result_remove_interface called");
    return NULL;
}

void* nw_browse_result_set_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_browse_result_set_txt_record_object called");
    return NULL;
}

void* nw_browser_cancel(void)
{
    if (verbose) puts("STUB: nw_browser_cancel called");
    return NULL;
}

void* nw_browser_copy_browse_descriptor(void)
{
    if (verbose) puts("STUB: nw_browser_copy_browse_descriptor called");
    return NULL;
}

void* nw_browser_copy_browse_results(void)
{
    if (verbose) puts("STUB: nw_browser_copy_browse_results called");
    return NULL;
}

void* nw_browser_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_browser_copy_parameters called");
    return NULL;
}

void* nw_browser_create(void)
{
    if (verbose) puts("STUB: nw_browser_create called");
    return NULL;
}

void* nw_browser_get_description(void)
{
    if (verbose) puts("STUB: nw_browser_get_description called");
    return NULL;
}

void* nw_browser_set_browse_results_changed_handler(void)
{
    if (verbose) puts("STUB: nw_browser_set_browse_results_changed_handler called");
    return NULL;
}

void* nw_browser_set_queue(void)
{
    if (verbose) puts("STUB: nw_browser_set_queue called");
    return NULL;
}

void* nw_browser_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_browser_set_state_changed_handler called");
    return NULL;
}

void* nw_browser_start(void)
{
    if (verbose) puts("STUB: nw_browser_start called");
    return NULL;
}

void* nw_channel_close(void)
{
    if (verbose) puts("STUB: nw_channel_close called");
    return NULL;
}

void* nw_channel_create_with_attributes(void)
{
    if (verbose) puts("STUB: nw_channel_create_with_attributes called");
    return NULL;
}

void* nw_channel_create_with_nexus(void)
{
    if (verbose) puts("STUB: nw_channel_create_with_nexus called");
    return NULL;
}

void* nw_channel_get_advisory_region(void)
{
    if (verbose) puts("STUB: nw_channel_get_advisory_region called");
    return NULL;
}

void* nw_channel_get_key(void)
{
    if (verbose) puts("STUB: nw_channel_get_key called");
    return NULL;
}

void* nw_channel_get_nexus_instance(void)
{
    if (verbose) puts("STUB: nw_channel_get_nexus_instance called");
    return NULL;
}

void* nw_channel_get_protocol_handler(void)
{
    if (verbose) puts("STUB: nw_channel_get_protocol_handler called");
    return NULL;
}

void* nw_channel_get_stats_region(void)
{
    if (verbose) puts("STUB: nw_channel_get_stats_region called");
    return NULL;
}

void* nw_channel_has_partial_checksum_offload(void)
{
    if (verbose) puts("STUB: nw_channel_has_partial_checksum_offload called");
    return NULL;
}

void* nw_channel_set_close_automatically(void)
{
    if (verbose) puts("STUB: nw_channel_set_close_automatically called");
    return NULL;
}

void* nw_channel_set_defer_input_available(void)
{
    if (verbose) puts("STUB: nw_channel_set_defer_input_available called");
    return NULL;
}

void* nw_channel_set_protocol_level(void)
{
    if (verbose) puts("STUB: nw_channel_set_protocol_level called");
    return NULL;
}

void* nw_connection_access_establishment_report(void)
{
    if (verbose) puts("STUB: nw_connection_access_establishment_report called");
    return NULL;
}

void* nw_connection_access_probe_connections(void)
{
    if (verbose) puts("STUB: nw_connection_access_probe_connections called");
    return NULL;
}

void* nw_connection_add_client_event(void)
{
    if (verbose) puts("STUB: nw_connection_add_client_event called");
    return NULL;
}

void* nw_connection_add_probe(void)
{
    if (verbose) puts("STUB: nw_connection_add_probe called");
    return NULL;
}

void* nw_connection_append_and_start_application_protocol(void)
{
    if (verbose) puts("STUB: nw_connection_append_and_start_application_protocol called");
    return NULL;
}

void* nw_connection_batch(void)
{
    if (verbose) puts("STUB: nw_connection_batch called");
    return NULL;
}

void* nw_connection_better_path_available(void)
{
    if (verbose) puts("STUB: nw_connection_better_path_available called");
    return NULL;
}

void* nw_connection_cancel(void)
{
    if (verbose) puts("STUB: nw_connection_cancel called");
    return NULL;
}

void* nw_connection_cancel_current_endpoint(void)
{
    if (verbose) puts("STUB: nw_connection_cancel_current_endpoint called");
    return NULL;
}

void* nw_connection_check_experimental_probe_options(void)
{
    if (verbose) puts("STUB: nw_connection_check_experimental_probe_options called");
    return NULL;
}

void* nw_connection_copy_attempted_endpoint_array(void)
{
    if (verbose) puts("STUB: nw_connection_copy_attempted_endpoint_array called");
    return NULL;
}

void* nw_connection_copy_connected_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_connection_copy_connected_local_endpoint called");
    return NULL;
}

void* nw_connection_copy_connected_path(void)
{
    if (verbose) puts("STUB: nw_connection_copy_connected_path called");
    return NULL;
}

void* nw_connection_copy_connected_remote_endpoint(void)
{
    if (verbose) puts("STUB: nw_connection_copy_connected_remote_endpoint called");
    return NULL;
}

void* nw_connection_copy_current_path(void)
{
    if (verbose) puts("STUB: nw_connection_copy_current_path called");
    return NULL;
}

void* nw_connection_copy_description(void)
{
    if (verbose) puts("STUB: nw_connection_copy_description called");
    return NULL;
}

void* nw_connection_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_connection_copy_endpoint called");
    return NULL;
}

void* nw_connection_copy_establishment_report_on_queue(void)
{
    if (verbose) puts("STUB: nw_connection_copy_establishment_report_on_queue called");
    return NULL;
}

void* nw_connection_copy_host_endpoint(void)
{
    if (verbose) puts("STUB: nw_connection_copy_host_endpoint called");
    return NULL;
}

void* nw_connection_copy_metadata(void)
{
    if (verbose) puts("STUB: nw_connection_copy_metadata called");
    return NULL;
}

void* nw_connection_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_connection_copy_parameters called");
    return NULL;
}

void* nw_connection_copy_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_connection_copy_protocol_metadata called");
    return NULL;
}

void* nw_connection_copy_protocol_metadata_on_queue(void)
{
    if (verbose) puts("STUB: nw_connection_copy_protocol_metadata_on_queue called");
    return NULL;
}

void* nw_connection_copy_tcp_info(void)
{
    if (verbose) puts("STUB: nw_connection_copy_tcp_info called");
    return NULL;
}

void* nw_connection_create(void)
{
    if (verbose) puts("STUB: nw_connection_create called");
    return NULL;
}

void* nw_connection_create_experimental_probe(void)
{
    if (verbose) puts("STUB: nw_connection_create_experimental_probe called");
    return NULL;
}

void* nw_connection_create_experimental_probe_configuration_block_for_protocol(void)
{
    if (verbose) puts("STUB: nw_connection_create_experimental_probe_configuration_block_for_protocol called");
    return NULL;
}

void* nw_connection_create_interface_status_monitor(void)
{
    if (verbose) puts("STUB: nw_connection_create_interface_status_monitor called");
    return NULL;
}

void* nw_connection_create_new_data_transfer_report(void)
{
    if (verbose) puts("STUB: nw_connection_create_new_data_transfer_report called");
    return NULL;
}

void* nw_connection_create_with_client_id(void)
{
    if (verbose) puts("STUB: nw_connection_create_with_client_id called");
    return NULL;
}

void* nw_connection_create_with_connected_socket(void)
{
    if (verbose) puts("STUB: nw_connection_create_with_connected_socket called");
    return NULL;
}

void* nw_connection_create_with_connected_socket_and_parameters(void)
{
    if (verbose) puts("STUB: nw_connection_create_with_connected_socket_and_parameters called");
    return NULL;
}

void* nw_connection_create_with_connection(void)
{
    if (verbose) puts("STUB: nw_connection_create_with_connection called");
    return NULL;
}

void* nw_connection_dump_timestamps(void)
{
    if (verbose) puts("STUB: nw_connection_dump_timestamps called");
    return NULL;
}

void* nw_connection_end_activity(void)
{
    if (verbose) puts("STUB: nw_connection_end_activity called");
    return NULL;
}

void* nw_connection_fillout_tcp_connection_info(void)
{
    if (verbose) puts("STUB: nw_connection_fillout_tcp_connection_info called");
    return NULL;
}

void* nw_connection_fillout_tcp_statistics(void)
{
    if (verbose) puts("STUB: nw_connection_fillout_tcp_statistics called");
    return NULL;
}

void* nw_connection_force_cancel(void)
{
    if (verbose) puts("STUB: nw_connection_force_cancel called");
    return NULL;
}

void* nw_connection_get_connected_socket(void)
{
    if (verbose) puts("STUB: nw_connection_get_connected_socket called");
    return NULL;
}

void* nw_connection_get_id(void)
{
    if (verbose) puts("STUB: nw_connection_get_id called");
    return NULL;
}

void* nw_connection_get_maximum_datagram_size(void)
{
    if (verbose) puts("STUB: nw_connection_get_maximum_datagram_size called");
    return NULL;
}

void* nw_connection_get_unsent_byte_count(void)
{
    if (verbose) puts("STUB: nw_connection_get_unsent_byte_count called");
    return NULL;
}

void* nw_connection_get_uuid(void)
{
    if (verbose) puts("STUB: nw_connection_get_uuid called");
    return NULL;
}

void* nw_connection_has_proxy_attempt(void)
{
    if (verbose) puts("STUB: nw_connection_has_proxy_attempt called");
    return NULL;
}

void* nw_connection_inject_up(void)
{
    if (verbose) puts("STUB: nw_connection_inject_up called");
    return NULL;
}

void* nw_connection_modify_connected_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_connection_modify_connected_protocol_stack called");
    return NULL;
}

void* nw_connection_multipath_copy_subflow_counts(void)
{
    if (verbose) puts("STUB: nw_connection_multipath_copy_subflow_counts called");
    return NULL;
}

void* nw_connection_multipath_get_primary_subflow_interface_index(void)
{
    if (verbose) puts("STUB: nw_connection_multipath_get_primary_subflow_interface_index called");
    return NULL;
}

void* nw_connection_multipath_get_subflow_count(void)
{
    if (verbose) puts("STUB: nw_connection_multipath_get_subflow_count called");
    return NULL;
}

void* nw_connection_read(void)
{
    if (verbose) puts("STUB: nw_connection_read called");
    return NULL;
}

void* nw_connection_read_buffer(void)
{
    if (verbose) puts("STUB: nw_connection_read_buffer called");
    return NULL;
}

void* nw_connection_read_multiple(void)
{
    if (verbose) puts("STUB: nw_connection_read_multiple called");
    return NULL;
}

void* nw_connection_receive(void)
{
    if (verbose) puts("STUB: nw_connection_receive called");
    return NULL;
}

void* nw_connection_receive_message(void)
{
    if (verbose) puts("STUB: nw_connection_receive_message called");
    return NULL;
}

void* nw_connection_receive_message_with_context(void)
{
    if (verbose) puts("STUB: nw_connection_receive_message_with_context called");
    return NULL;
}

void* nw_connection_receive_with_context(void)
{
    if (verbose) puts("STUB: nw_connection_receive_with_context called");
    return NULL;
}

void* nw_connection_remove_probe(void)
{
    if (verbose) puts("STUB: nw_connection_remove_probe called");
    return NULL;
}

void* nw_connection_reset_expected_progress_target(void)
{
    if (verbose) puts("STUB: nw_connection_reset_expected_progress_target called");
    return NULL;
}

void* nw_connection_reset_traffic_class(void)
{
    if (verbose) puts("STUB: nw_connection_reset_traffic_class called");
    return NULL;
}

void* nw_connection_restart(void)
{
    if (verbose) puts("STUB: nw_connection_restart called");
    return NULL;
}

void* nw_connection_send(void)
{
    if (verbose) puts("STUB: nw_connection_send called");
    return NULL;
}

void* nw_connection_send_reply(void)
{
    if (verbose) puts("STUB: nw_connection_send_reply called");
    return NULL;
}

void* nw_connection_set_adaptive_read_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_adaptive_read_handler called");
    return NULL;
}

void* nw_connection_set_adaptive_write_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_adaptive_write_handler called");
    return NULL;
}

void* nw_connection_set_alternate_path_state_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_alternate_path_state_handler called");
    return NULL;
}

void* nw_connection_set_better_path_available_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_better_path_available_handler called");
    return NULL;
}

void* nw_connection_set_cancel_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_cancel_handler called");
    return NULL;
}

void* nw_connection_set_event_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_event_handler called");
    return NULL;
}

void* nw_connection_set_excessive_keepalive_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_excessive_keepalive_handler called");
    return NULL;
}

void* nw_connection_set_low_throughput_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_low_throughput_handler called");
    return NULL;
}

void* nw_connection_set_metadata_changed_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_metadata_changed_handler called");
    return NULL;
}

void* nw_connection_set_path_changed_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_path_changed_handler called");
    return NULL;
}

void* nw_connection_set_queue(void)
{
    if (verbose) puts("STUB: nw_connection_set_queue called");
    return NULL;
}

void* nw_connection_set_read_close_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_read_close_handler called");
    return NULL;
}

void* nw_connection_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_state_changed_handler called");
    return NULL;
}

void* nw_connection_set_tls_message_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_tls_message_handler called");
    return NULL;
}

void* nw_connection_set_tls_prepare_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_tls_prepare_handler called");
    return NULL;
}

void* nw_connection_set_viability_changed_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_viability_changed_handler called");
    return NULL;
}

void* nw_connection_set_write_close_handler(void)
{
    if (verbose) puts("STUB: nw_connection_set_write_close_handler called");
    return NULL;
}

void* nw_connection_should_run_experimental_probe(void)
{
    if (verbose) puts("STUB: nw_connection_should_run_experimental_probe called");
    return NULL;
}

void* nw_connection_start(void)
{
    if (verbose) puts("STUB: nw_connection_start called");
    return NULL;
}

void* nw_connection_start_activity(void)
{
    if (verbose) puts("STUB: nw_connection_start_activity called");
    return NULL;
}

void* nw_connection_state_to_string(void)
{
    if (verbose) puts("STUB: nw_connection_state_to_string called");
    return NULL;
}

void* nw_connection_tls_apply(void)
{
    if (verbose) puts("STUB: nw_connection_tls_apply called");
    return NULL;
}

void* nw_connection_used_fallback(void)
{
    if (verbose) puts("STUB: nw_connection_used_fallback called");
    return NULL;
}

void* nw_connection_used_tfo(void)
{
    if (verbose) puts("STUB: nw_connection_used_tfo called");
    return NULL;
}

void* nw_connection_used_tls(void)
{
    if (verbose) puts("STUB: nw_connection_used_tls called");
    return NULL;
}

void* nw_connection_uses_multipath(void)
{
    if (verbose) puts("STUB: nw_connection_uses_multipath called");
    return NULL;
}

void* nw_connection_uses_sleep_proxy(void)
{
    if (verbose) puts("STUB: nw_connection_uses_sleep_proxy called");
    return NULL;
}

void* nw_connection_write(void)
{
    if (verbose) puts("STUB: nw_connection_write called");
    return NULL;
}

void* nw_connection_write_close(void)
{
    if (verbose) puts("STUB: nw_connection_write_close called");
    return NULL;
}

void* nw_connection_write_multiple(void)
{
    if (verbose) puts("STUB: nw_connection_write_multiple called");
    return NULL;
}

void* nw_content_context_copy_antecedent(void)
{
    if (verbose) puts("STUB: nw_content_context_copy_antecedent called");
    return NULL;
}

void* nw_content_context_copy_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_content_context_copy_protocol_metadata called");
    return NULL;
}

void* nw_content_context_create(void)
{
    if (verbose) puts("STUB: nw_content_context_create called");
    return NULL;
}

void* nw_content_context_foreach_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_content_context_foreach_protocol_metadata called");
    return NULL;
}

void* nw_content_context_get_expiration_milliseconds(void)
{
    if (verbose) puts("STUB: nw_content_context_get_expiration_milliseconds called");
    return NULL;
}

void* nw_content_context_get_identifier(void)
{
    if (verbose) puts("STUB: nw_content_context_get_identifier called");
    return NULL;
}

void* nw_content_context_get_is_final(void)
{
    if (verbose) puts("STUB: nw_content_context_get_is_final called");
    return NULL;
}

void* nw_content_context_get_relative_priority(void)
{
    if (verbose) puts("STUB: nw_content_context_get_relative_priority called");
    return NULL;
}

void* nw_content_context_set_antecedent(void)
{
    if (verbose) puts("STUB: nw_content_context_set_antecedent called");
    return NULL;
}

void* nw_content_context_set_expiration_milliseconds(void)
{
    if (verbose) puts("STUB: nw_content_context_set_expiration_milliseconds called");
    return NULL;
}

void* nw_content_context_set_is_final(void)
{
    if (verbose) puts("STUB: nw_content_context_set_is_final called");
    return NULL;
}

void* nw_content_context_set_metadata_for_protocol(void)
{
    if (verbose) puts("STUB: nw_content_context_set_metadata_for_protocol called");
    return NULL;
}

void* nw_content_context_set_packet_id(void)
{
    if (verbose) puts("STUB: nw_content_context_set_packet_id called");
    return NULL;
}

void* nw_content_context_set_relative_priority(void)
{
    if (verbose) puts("STUB: nw_content_context_set_relative_priority called");
    return NULL;
}

void* nw_context_128k_buffer_length(void)
{
    if (verbose) puts("STUB: nw_context_128k_buffer_length called");
    return NULL;
}

void* nw_context_128k_buffer_manager(void)
{
    if (verbose) puts("STUB: nw_context_128k_buffer_manager called");
    return NULL;
}

void* nw_context_16k_buffer_length(void)
{
    if (verbose) puts("STUB: nw_context_16k_buffer_length called");
    return NULL;
}

void* nw_context_16k_buffer_manager(void)
{
    if (verbose) puts("STUB: nw_context_16k_buffer_manager called");
    return NULL;
}

void* nw_context_2k_buffer_length(void)
{
    if (verbose) puts("STUB: nw_context_2k_buffer_length called");
    return NULL;
}

void* nw_context_2k_buffer_manager(void)
{
    if (verbose) puts("STUB: nw_context_2k_buffer_manager called");
    return NULL;
}

void* nw_context_64k_buffer_length(void)
{
    if (verbose) puts("STUB: nw_context_64k_buffer_length called");
    return NULL;
}

void* nw_context_64k_buffer_manager(void)
{
    if (verbose) puts("STUB: nw_context_64k_buffer_manager called");
    return NULL;
}

void* nw_context_8k_buffer_length(void)
{
    if (verbose) puts("STUB: nw_context_8k_buffer_length called");
    return NULL;
}

void* nw_context_8k_buffer_manager(void)
{
    if (verbose) puts("STUB: nw_context_8k_buffer_manager called");
    return NULL;
}

void* nw_context_activate(void)
{
    if (verbose) puts("STUB: nw_context_activate called");
    return NULL;
}

void* nw_context_caches_are_shared(void)
{
    if (verbose) puts("STUB: nw_context_caches_are_shared called");
    return NULL;
}

void* nw_context_copy_implicit_context(void)
{
    if (verbose) puts("STUB: nw_context_copy_implicit_context called");
    return NULL;
}

void* nw_context_create(void)
{
    if (verbose) puts("STUB: nw_context_create called");
    return NULL;
}

void* nw_context_get_globals_for_protocol(void)
{
    if (verbose) puts("STUB: nw_context_get_globals_for_protocol called");
    return NULL;
}

void* nw_context_get_identifier(void)
{
    if (verbose) puts("STUB: nw_context_get_identifier called");
    return NULL;
}

void* nw_context_get_isolate_protocol_cache(void)
{
    if (verbose) puts("STUB: nw_context_get_isolate_protocol_cache called");
    return NULL;
}

void* nw_context_get_isolate_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_context_get_isolate_protocol_stack called");
    return NULL;
}

void* nw_context_get_privacy_level(void)
{
    if (verbose) puts("STUB: nw_context_get_privacy_level called");
    return NULL;
}

void* nw_context_get_private_redacted(void)
{
    if (verbose) puts("STUB: nw_context_get_private_redacted called");
    return NULL;
}

void* nw_context_get_scheduling_mode(void)
{
    if (verbose) puts("STUB: nw_context_get_scheduling_mode called");
    return NULL;
}

void* nw_context_purge_all_endpoints(void)
{
    if (verbose) puts("STUB: nw_context_purge_all_endpoints called");
    return NULL;
}

void* nw_context_reset_timer_block(void)
{
    if (verbose) puts("STUB: nw_context_reset_timer_block called");
    return NULL;
}

void* nw_context_set_isolate_protocol_cache(void)
{
    if (verbose) puts("STUB: nw_context_set_isolate_protocol_cache called");
    return NULL;
}

void* nw_context_set_isolate_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_context_set_isolate_protocol_stack called");
    return NULL;
}

void* nw_context_set_privacy_level(void)
{
    if (verbose) puts("STUB: nw_context_set_privacy_level called");
    return NULL;
}

void* nw_context_set_protocol_cache_limits(void)
{
    if (verbose) puts("STUB: nw_context_set_protocol_cache_limits called");
    return NULL;
}

void* nw_context_set_scheduling_mode(void)
{
    if (verbose) puts("STUB: nw_context_set_scheduling_mode called");
    return NULL;
}

void* nw_data_mode_to_string(void)
{
    if (verbose) puts("STUB: nw_data_mode_to_string called");
    return NULL;
}

void* nw_data_transfer_report_collect(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_collect called");
    return NULL;
}

void* nw_data_transfer_report_copy_dictionary(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_copy_dictionary called");
    return NULL;
}

void* nw_data_transfer_report_copy_path_interface(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_copy_path_interface called");
    return NULL;
}

void* nw_data_transfer_report_create_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_create_from_dictionary called");
    return NULL;
}

void* nw_data_transfer_report_get_duration_milliseconds(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_duration_milliseconds called");
    return NULL;
}

void* nw_data_transfer_report_get_path_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_path_count called");
    return NULL;
}

void* nw_data_transfer_report_get_received_application_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_received_application_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_received_ip_packet_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_received_ip_packet_count called");
    return NULL;
}

void* nw_data_transfer_report_get_received_transport_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_received_transport_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_received_transport_duplicate_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_received_transport_duplicate_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_received_transport_out_of_order_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_received_transport_out_of_order_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_sent_application_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_sent_application_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_sent_ip_packet_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_sent_ip_packet_count called");
    return NULL;
}

void* nw_data_transfer_report_get_sent_transport_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_sent_transport_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_sent_transport_retransmitted_byte_count(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_sent_transport_retransmitted_byte_count called");
    return NULL;
}

void* nw_data_transfer_report_get_state(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_state called");
    return NULL;
}

void* nw_data_transfer_report_get_transport_minimum_rtt_milliseconds(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_transport_minimum_rtt_milliseconds called");
    return NULL;
}

void* nw_data_transfer_report_get_transport_rtt_variance(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_transport_rtt_variance called");
    return NULL;
}

void* nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds(void)
{
    if (verbose) puts("STUB: nw_data_transfer_report_get_transport_smoothed_rtt_milliseconds called");
    return NULL;
}

void* nw_dictionary_apply(void)
{
    if (verbose) puts("STUB: nw_dictionary_apply called");
    return NULL;
}

void* nw_dictionary_copy(void)
{
    if (verbose) puts("STUB: nw_dictionary_copy called");
    return NULL;
}

void* nw_dictionary_copy_value(void)
{
    if (verbose) puts("STUB: nw_dictionary_copy_value called");
    return NULL;
}

void* nw_dictionary_create(void)
{
    if (verbose) puts("STUB: nw_dictionary_create called");
    return NULL;
}

void* nw_dictionary_get_count(void)
{
    if (verbose) puts("STUB: nw_dictionary_get_count called");
    return NULL;
}

void* nw_dictionary_set_value(void)
{
    if (verbose) puts("STUB: nw_dictionary_set_value called");
    return NULL;
}

void* nw_dispatch_data_is_equal(void)
{
    if (verbose) puts("STUB: nw_dispatch_data_is_equal called");
    return NULL;
}

void* nw_endpoint_address_endpoint_matches_address(void)
{
    if (verbose) puts("STUB: nw_endpoint_address_endpoint_matches_address called");
    return NULL;
}

void* nw_endpoint_copy_address_string(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_address_string called");
    return NULL;
}

void* nw_endpoint_copy_association(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_association called");
    return NULL;
}

void* nw_endpoint_copy_custom_data(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_custom_data called");
    return NULL;
}

void* nw_endpoint_copy_custom_resolver_block(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_custom_resolver_block called");
    return NULL;
}

void* nw_endpoint_copy_dictionary(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_dictionary called");
    return NULL;
}

void* nw_endpoint_copy_host_port_endpoint_for_url(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_host_port_endpoint_for_url called");
    return NULL;
}

void* nw_endpoint_copy_interface(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_interface called");
    return NULL;
}

void* nw_endpoint_copy_original_endpoint(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_original_endpoint called");
    return NULL;
}

void* nw_endpoint_copy_parent_endpoint(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_parent_endpoint called");
    return NULL;
}

void* nw_endpoint_copy_port_string(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_port_string called");
    return NULL;
}

void* nw_endpoint_copy_proxy_original_endpoint(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_proxy_original_endpoint called");
    return NULL;
}

void* nw_endpoint_copy_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_endpoint_copy_txt_record_object called");
    return NULL;
}

void* nw_endpoint_create_address(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_address called");
    return NULL;
}

void* nw_endpoint_create_address_with_ethernet(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_address_with_ethernet called");
    return NULL;
}

void* nw_endpoint_create_address_with_port(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_address_with_port called");
    return NULL;
}

void* nw_endpoint_create_bonjour_service(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_bonjour_service called");
    return NULL;
}

void* nw_endpoint_create_custom(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_custom called");
    return NULL;
}

void* nw_endpoint_create_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_from_dictionary called");
    return NULL;
}

void* nw_endpoint_create_host(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_host called");
    return NULL;
}

void* nw_endpoint_create_host_with_numeric_port(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_host_with_numeric_port called");
    return NULL;
}

void* nw_endpoint_create_srv(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_srv called");
    return NULL;
}

void* nw_endpoint_create_unix(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_unix called");
    return NULL;
}

void* nw_endpoint_create_url(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_url called");
    return NULL;
}

void* nw_endpoint_create_with_peer_name(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_with_peer_name called");
    return NULL;
}

void* nw_endpoint_create_with_sock_name(void)
{
    if (verbose) puts("STUB: nw_endpoint_create_with_sock_name called");
    return NULL;
}

void* nw_endpoint_get_address(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_address called");
    return NULL;
}

void* nw_endpoint_get_address_family(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_address_family called");
    return NULL;
}

void* nw_endpoint_get_alternate_port(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_alternate_port called");
    return NULL;
}

void* nw_endpoint_get_bonjour_fullname(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_bonjour_fullname called");
    return NULL;
}

void* nw_endpoint_get_bonjour_service_domain(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_bonjour_service_domain called");
    return NULL;
}

void* nw_endpoint_get_bonjour_service_name(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_bonjour_service_name called");
    return NULL;
}

void* nw_endpoint_get_bonjour_service_type(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_bonjour_service_type called");
    return NULL;
}

void* nw_endpoint_get_custom_data_length(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_custom_data_length called");
    return NULL;
}

void* nw_endpoint_get_description(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_description called");
    return NULL;
}

void* nw_endpoint_get_domain_for_policy(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_domain_for_policy called");
    return NULL;
}

void* nw_endpoint_get_ethernet_address(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_ethernet_address called");
    return NULL;
}

void* nw_endpoint_get_hash(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_hash called");
    return NULL;
}

void* nw_endpoint_get_hostname(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_hostname called");
    return NULL;
}

void* nw_endpoint_get_logging_description(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_logging_description called");
    return NULL;
}

void* nw_endpoint_get_parent_endpoint_domain(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_parent_endpoint_domain called");
    return NULL;
}

void* nw_endpoint_get_port(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_port called");
    return NULL;
}

void* nw_endpoint_get_priority(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_priority called");
    return NULL;
}

void* nw_endpoint_get_sanitized_url(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_sanitized_url called");
    return NULL;
}

void* nw_endpoint_get_srv_name(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_srv_name called");
    return NULL;
}

void* nw_endpoint_get_type(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_type called");
    return NULL;
}

void* nw_endpoint_get_url(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_url called");
    return NULL;
}

void* nw_endpoint_get_url_hash(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_url_hash called");
    return NULL;
}

void* nw_endpoint_get_url_path(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_url_path called");
    return NULL;
}

void* nw_endpoint_get_url_scheme(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_url_scheme called");
    return NULL;
}

void* nw_endpoint_get_weight(void)
{
    if (verbose) puts("STUB: nw_endpoint_get_weight called");
    return NULL;
}

void* nw_endpoint_is_broadcast(void)
{
    if (verbose) puts("STUB: nw_endpoint_is_broadcast called");
    return NULL;
}

void* nw_endpoint_is_custom_type(void)
{
    if (verbose) puts("STUB: nw_endpoint_is_custom_type called");
    return NULL;
}

void* nw_endpoint_is_equal(void)
{
    if (verbose) puts("STUB: nw_endpoint_is_equal called");
    return NULL;
}

void* nw_endpoint_proxy_copy_synthesized_url(void)
{
    if (verbose) puts("STUB: nw_endpoint_proxy_copy_synthesized_url called");
    return NULL;
}

void* nw_endpoint_proxy_match_exception_to_endpoint(void)
{
    if (verbose) puts("STUB: nw_endpoint_proxy_match_exception_to_endpoint called");
    return NULL;
}

void* nw_endpoint_set_alternate_port(void)
{
    if (verbose) puts("STUB: nw_endpoint_set_alternate_port called");
    return NULL;
}

void* nw_endpoint_set_interface(void)
{
    if (verbose) puts("STUB: nw_endpoint_set_interface called");
    return NULL;
}

void* nw_endpoint_set_priority(void)
{
    if (verbose) puts("STUB: nw_endpoint_set_priority called");
    return NULL;
}

void* nw_endpoint_set_txt_record_object(void)
{
    if (verbose) puts("STUB: nw_endpoint_set_txt_record_object called");
    return NULL;
}

void* nw_endpoint_set_weight(void)
{
    if (verbose) puts("STUB: nw_endpoint_set_weight called");
    return NULL;
}

void* nw_error_copy_cf_error(void)
{
    if (verbose) puts("STUB: nw_error_copy_cf_error called");
    return NULL;
}

void* nw_error_create_dns_error(void)
{
    if (verbose) puts("STUB: nw_error_create_dns_error called");
    return NULL;
}

void* nw_error_create_error_with_inferred_domain(void)
{
    if (verbose) puts("STUB: nw_error_create_error_with_inferred_domain called");
    return NULL;
}

void* nw_error_create_posix_error(void)
{
    if (verbose) puts("STUB: nw_error_create_posix_error called");
    return NULL;
}

void* nw_error_create_tls_error(void)
{
    if (verbose) puts("STUB: nw_error_create_tls_error called");
    return NULL;
}

void* nw_error_get_error_code(void)
{
    if (verbose) puts("STUB: nw_error_get_error_code called");
    return NULL;
}

void* nw_error_get_error_domain(void)
{
    if (verbose) puts("STUB: nw_error_get_error_domain called");
    return NULL;
}

void* nw_error_is_equal(void)
{
    if (verbose) puts("STUB: nw_error_is_equal called");
    return NULL;
}

void* nw_establishment_report_copy_dictionary(void)
{
    if (verbose) puts("STUB: nw_establishment_report_copy_dictionary called");
    return NULL;
}

void* nw_establishment_report_copy_proxy_endpoint(void)
{
    if (verbose) puts("STUB: nw_establishment_report_copy_proxy_endpoint called");
    return NULL;
}

void* nw_establishment_report_create_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_establishment_report_create_from_dictionary called");
    return NULL;
}

void* nw_establishment_report_enumerate_protocols(void)
{
    if (verbose) puts("STUB: nw_establishment_report_enumerate_protocols called");
    return NULL;
}

void* nw_establishment_report_enumerate_resolutions(void)
{
    if (verbose) puts("STUB: nw_establishment_report_enumerate_resolutions called");
    return NULL;
}

void* nw_establishment_report_get_attempt_started_after_milliseconds(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_attempt_started_after_milliseconds called");
    return NULL;
}

void* nw_establishment_report_get_duration_milliseconds(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_duration_milliseconds called");
    return NULL;
}

void* nw_establishment_report_get_flow_started_after_milliseconds(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_flow_started_after_milliseconds called");
    return NULL;
}

void* nw_establishment_report_get_previous_attempt_count(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_previous_attempt_count called");
    return NULL;
}

void* nw_establishment_report_get_proxy_configured(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_proxy_configured called");
    return NULL;
}

void* nw_establishment_report_get_resolution_started_after_milliseconds(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_resolution_started_after_milliseconds called");
    return NULL;
}

void* nw_establishment_report_get_used_proxy(void)
{
    if (verbose) puts("STUB: nw_establishment_report_get_used_proxy called");
    return NULL;
}

void* nw_ethernet_channel_cancel(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_cancel called");
    return NULL;
}

void* nw_ethernet_channel_create(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_create called");
    return NULL;
}

void* nw_ethernet_channel_send(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_send called");
    return NULL;
}

void* nw_ethernet_channel_set_queue(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_set_queue called");
    return NULL;
}

void* nw_ethernet_channel_set_receive_handler(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_set_receive_handler called");
    return NULL;
}

void* nw_ethernet_channel_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_set_state_changed_handler called");
    return NULL;
}

void* nw_ethernet_channel_start(void)
{
    if (verbose) puts("STUB: nw_ethernet_channel_start called");
    return NULL;
}

void* nw_fd_wrapper_close(void)
{
    if (verbose) puts("STUB: nw_fd_wrapper_close called");
    return NULL;
}

void* nw_fd_wrapper_create(void)
{
    if (verbose) puts("STUB: nw_fd_wrapper_create called");
    return NULL;
}

void* nw_fd_wrapper_get_fd(void)
{
    if (verbose) puts("STUB: nw_fd_wrapper_get_fd called");
    return NULL;
}

void* nw_fd_wrapper_guard(void)
{
    if (verbose) puts("STUB: nw_fd_wrapper_guard called");
    return NULL;
}

void* nw_fd_wrapper_is_guarded(void)
{
    if (verbose) puts("STUB: nw_fd_wrapper_is_guarded called");
    return NULL;
}

void* nw_frame_array_append(void)
{
    if (verbose) puts("STUB: nw_frame_array_append called");
    return NULL;
}

void* nw_frame_array_append_array(void)
{
    if (verbose) puts("STUB: nw_frame_array_append_array called");
    return NULL;
}

void* nw_frame_array_check_length(void)
{
    if (verbose) puts("STUB: nw_frame_array_check_length called");
    return NULL;
}

void* nw_frame_array_first(void)
{
    if (verbose) puts("STUB: nw_frame_array_first called");
    return NULL;
}

void* nw_frame_array_foreach(void)
{
    if (verbose) puts("STUB: nw_frame_array_foreach called");
    return NULL;
}

void* nw_frame_array_init(void)
{
    if (verbose) puts("STUB: nw_frame_array_init called");
    return NULL;
}

void* nw_frame_array_insert_after(void)
{
    if (verbose) puts("STUB: nw_frame_array_insert_after called");
    return NULL;
}

void* nw_frame_array_is_empty(void)
{
    if (verbose) puts("STUB: nw_frame_array_is_empty called");
    return NULL;
}

void* nw_frame_array_last(void)
{
    if (verbose) puts("STUB: nw_frame_array_last called");
    return NULL;
}

void* nw_frame_array_next(void)
{
    if (verbose) puts("STUB: nw_frame_array_next called");
    return NULL;
}

void* nw_frame_array_prepend(void)
{
    if (verbose) puts("STUB: nw_frame_array_prepend called");
    return NULL;
}

void* nw_frame_array_prepend_array(void)
{
    if (verbose) puts("STUB: nw_frame_array_prepend_array called");
    return NULL;
}

void* nw_frame_array_remove(void)
{
    if (verbose) puts("STUB: nw_frame_array_remove called");
    return NULL;
}

void* nw_frame_array_unclaimed_length(void)
{
    if (verbose) puts("STUB: nw_frame_array_unclaimed_length called");
    return NULL;
}

void* nw_frame_buffer_get_manager(void)
{
    if (verbose) puts("STUB: nw_frame_buffer_get_manager called");
    return NULL;
}

void* nw_frame_buffer_used_malloc(void)
{
    if (verbose) puts("STUB: nw_frame_buffer_used_malloc called");
    return NULL;
}

void* nw_frame_buffer_used_manager(void)
{
    if (verbose) puts("STUB: nw_frame_buffer_used_manager called");
    return NULL;
}

void* nw_frame_check_validity(void)
{
    if (verbose) puts("STUB: nw_frame_check_validity called");
    return NULL;
}

void* nw_frame_claim(void)
{
    if (verbose) puts("STUB: nw_frame_claim called");
    return NULL;
}

void* nw_frame_collapse(void)
{
    if (verbose) puts("STUB: nw_frame_collapse called");
    return NULL;
}

void* nw_frame_copy_external_data(void)
{
    if (verbose) puts("STUB: nw_frame_copy_external_data called");
    return NULL;
}

void* nw_frame_copy_metadata_for_protocol(void)
{
    if (verbose) puts("STUB: nw_frame_copy_metadata_for_protocol called");
    return NULL;
}

void* nw_frame_copy_metadata_uuid(void)
{
    if (verbose) puts("STUB: nw_frame_copy_metadata_uuid called");
    return NULL;
}

void* nw_frame_copy_unclaimed_data(void)
{
    if (verbose) puts("STUB: nw_frame_copy_unclaimed_data called");
    return NULL;
}

void* nw_frame_create(void)
{
    if (verbose) puts("STUB: nw_frame_create called");
    return NULL;
}

void* nw_frame_create_external(void)
{
    if (verbose) puts("STUB: nw_frame_create_external called");
    return NULL;
}

void* nw_frame_effective_length(void)
{
    if (verbose) puts("STUB: nw_frame_effective_length called");
    return NULL;
}

void* nw_frame_finalize(void)
{
    if (verbose) puts("STUB: nw_frame_finalize called");
    return NULL;
}

void* nw_frame_foreach_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_frame_foreach_protocol_metadata called");
    return NULL;
}

void* nw_frame_free_buffer(void)
{
    if (verbose) puts("STUB: nw_frame_free_buffer called");
    return NULL;
}

void* nw_frame_get_buffer(void)
{
    if (verbose) puts("STUB: nw_frame_get_buffer called");
    return NULL;
}

void* nw_frame_get_buffer_manager_with_context(void)
{
    if (verbose) puts("STUB: nw_frame_get_buffer_manager_with_context called");
    return NULL;
}

void* nw_frame_get_external_data(void)
{
    if (verbose) puts("STUB: nw_frame_get_external_data called");
    return NULL;
}

void* nw_frame_get_finalizer_context(void)
{
    if (verbose) puts("STUB: nw_frame_get_finalizer_context called");
    return NULL;
}

void* nw_frame_get_flow_handler(void)
{
    if (verbose) puts("STUB: nw_frame_get_flow_handler called");
    return NULL;
}

void* nw_frame_get_flow_id(void)
{
    if (verbose) puts("STUB: nw_frame_get_flow_id called");
    return NULL;
}

void* nw_frame_get_internet_checksum(void)
{
    if (verbose) puts("STUB: nw_frame_get_internet_checksum called");
    return NULL;
}

void* nw_frame_get_internet_checksum_handler(void)
{
    if (verbose) puts("STUB: nw_frame_get_internet_checksum_handler called");
    return NULL;
}

void* nw_frame_get_manager_for_size(void)
{
    if (verbose) puts("STUB: nw_frame_get_manager_for_size called");
    return NULL;
}

void* nw_frame_get_metadata(void)
{
    if (verbose) puts("STUB: nw_frame_get_metadata called");
    return NULL;
}

void* nw_frame_inherit_metadata(void)
{
    if (verbose) puts("STUB: nw_frame_inherit_metadata called");
    return NULL;
}

void* nw_frame_is_connection_complete(void)
{
    if (verbose) puts("STUB: nw_frame_is_connection_complete called");
    return NULL;
}

void* nw_frame_is_in_array(void)
{
    if (verbose) puts("STUB: nw_frame_is_in_array called");
    return NULL;
}

void* nw_frame_is_metadata_complete(void)
{
    if (verbose) puts("STUB: nw_frame_is_metadata_complete called");
    return NULL;
}

void* nw_frame_reclassify(void)
{
    if (verbose) puts("STUB: nw_frame_reclassify called");
    return NULL;
}

void* nw_frame_reset(void)
{
    if (verbose) puts("STUB: nw_frame_reset called");
    return NULL;
}

void* nw_frame_set_buffer_used_malloc(void)
{
    if (verbose) puts("STUB: nw_frame_set_buffer_used_malloc called");
    return NULL;
}

void* nw_frame_set_buffer_used_manager(void)
{
    if (verbose) puts("STUB: nw_frame_set_buffer_used_manager called");
    return NULL;
}

void* nw_frame_set_check_validity_handler(void)
{
    if (verbose) puts("STUB: nw_frame_set_check_validity_handler called");
    return NULL;
}

void* nw_frame_set_connection_complete(void)
{
    if (verbose) puts("STUB: nw_frame_set_connection_complete called");
    return NULL;
}

void* nw_frame_set_expire_time(void)
{
    if (verbose) puts("STUB: nw_frame_set_expire_time called");
    return NULL;
}

void* nw_frame_set_external_data(void)
{
    if (verbose) puts("STUB: nw_frame_set_external_data called");
    return NULL;
}

void* nw_frame_set_flow_handler(void)
{
    if (verbose) puts("STUB: nw_frame_set_flow_handler called");
    return NULL;
}

void* nw_frame_set_flow_id(void)
{
    if (verbose) puts("STUB: nw_frame_set_flow_id called");
    return NULL;
}

void* nw_frame_set_internet_checksum(void)
{
    if (verbose) puts("STUB: nw_frame_set_internet_checksum called");
    return NULL;
}

void* nw_frame_set_internet_checksum_handler(void)
{
    if (verbose) puts("STUB: nw_frame_set_internet_checksum_handler called");
    return NULL;
}

void* nw_frame_set_metadata(void)
{
    if (verbose) puts("STUB: nw_frame_set_metadata called");
    return NULL;
}

void* nw_frame_set_packet_id(void)
{
    if (verbose) puts("STUB: nw_frame_set_packet_id called");
    return NULL;
}

void* nw_frame_set_reclassifier(void)
{
    if (verbose) puts("STUB: nw_frame_set_reclassifier called");
    return NULL;
}

void* nw_frame_unclaim(void)
{
    if (verbose) puts("STUB: nw_frame_unclaim called");
    return NULL;
}

void* nw_frame_unclaimed_bytes(void)
{
    if (verbose) puts("STUB: nw_frame_unclaimed_bytes called");
    return NULL;
}

void* nw_frame_unclaimed_length(void)
{
    if (verbose) puts("STUB: nw_frame_unclaimed_length called");
    return NULL;
}

void* nw_frame_uses_external_data(void)
{
    if (verbose) puts("STUB: nw_frame_uses_external_data called");
    return NULL;
}

void* nw_frame_will_free_buffer_externally(void)
{
    if (verbose) puts("STUB: nw_frame_will_free_buffer_externally called");
    return NULL;
}

void* nw_framer_async(void)
{
    if (verbose) puts("STUB: nw_framer_async called");
    return NULL;
}

void* nw_framer_copy_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_framer_copy_local_endpoint called");
    return NULL;
}

void* nw_framer_copy_options(void)
{
    if (verbose) puts("STUB: nw_framer_copy_options called");
    return NULL;
}

void* nw_framer_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_framer_copy_parameters called");
    return NULL;
}

void* nw_framer_copy_remote_endpoint(void)
{
    if (verbose) puts("STUB: nw_framer_copy_remote_endpoint called");
    return NULL;
}

void* nw_framer_create_definition(void)
{
    if (verbose) puts("STUB: nw_framer_create_definition called");
    return NULL;
}

void* nw_framer_create_options(void)
{
    if (verbose) puts("STUB: nw_framer_create_options called");
    return NULL;
}

void* nw_framer_deliver_input(void)
{
    if (verbose) puts("STUB: nw_framer_deliver_input called");
    return NULL;
}

void* nw_framer_deliver_input_no_copy(void)
{
    if (verbose) puts("STUB: nw_framer_deliver_input_no_copy called");
    return NULL;
}

void* nw_framer_mark_failed_with_error(void)
{
    if (verbose) puts("STUB: nw_framer_mark_failed_with_error called");
    return NULL;
}

void* nw_framer_mark_ready(void)
{
    if (verbose) puts("STUB: nw_framer_mark_ready called");
    return NULL;
}

void* nw_framer_message_access_value(void)
{
    if (verbose) puts("STUB: nw_framer_message_access_value called");
    return NULL;
}

void* nw_framer_message_copy_object_value(void)
{
    if (verbose) puts("STUB: nw_framer_message_copy_object_value called");
    return NULL;
}

void* nw_framer_message_copy_original_message(void)
{
    if (verbose) puts("STUB: nw_framer_message_copy_original_message called");
    return NULL;
}

void* nw_framer_message_create(void)
{
    if (verbose) puts("STUB: nw_framer_message_create called");
    return NULL;
}

void* nw_framer_message_create_reply(void)
{
    if (verbose) puts("STUB: nw_framer_message_create_reply called");
    return NULL;
}

void* nw_framer_message_set_object_value(void)
{
    if (verbose) puts("STUB: nw_framer_message_set_object_value called");
    return NULL;
}

void* nw_framer_message_set_value(void)
{
    if (verbose) puts("STUB: nw_framer_message_set_value called");
    return NULL;
}

void* nw_framer_parse_input(void)
{
    if (verbose) puts("STUB: nw_framer_parse_input called");
    return NULL;
}

void* nw_framer_parse_output(void)
{
    if (verbose) puts("STUB: nw_framer_parse_output called");
    return NULL;
}

void* nw_framer_pass_through_input(void)
{
    if (verbose) puts("STUB: nw_framer_pass_through_input called");
    return NULL;
}

void* nw_framer_pass_through_output(void)
{
    if (verbose) puts("STUB: nw_framer_pass_through_output called");
    return NULL;
}

void* nw_framer_prepend_application_protocol(void)
{
    if (verbose) puts("STUB: nw_framer_prepend_application_protocol called");
    return NULL;
}

void* nw_framer_protocol_create_message(void)
{
    if (verbose) puts("STUB: nw_framer_protocol_create_message called");
    return NULL;
}

void* nw_framer_schedule_wakeup(void)
{
    if (verbose) puts("STUB: nw_framer_schedule_wakeup called");
    return NULL;
}

void* nw_framer_set_cleanup_handler(void)
{
    if (verbose) puts("STUB: nw_framer_set_cleanup_handler called");
    return NULL;
}

void* nw_framer_set_input_handler(void)
{
    if (verbose) puts("STUB: nw_framer_set_input_handler called");
    return NULL;
}

void* nw_framer_set_output_handler(void)
{
    if (verbose) puts("STUB: nw_framer_set_output_handler called");
    return NULL;
}

void* nw_framer_set_stop_handler(void)
{
    if (verbose) puts("STUB: nw_framer_set_stop_handler called");
    return NULL;
}

void* nw_framer_set_wakeup_handler(void)
{
    if (verbose) puts("STUB: nw_framer_set_wakeup_handler called");
    return NULL;
}

void* nw_framer_write_output(void)
{
    if (verbose) puts("STUB: nw_framer_write_output called");
    return NULL;
}

void* nw_framer_write_output_data(void)
{
    if (verbose) puts("STUB: nw_framer_write_output_data called");
    return NULL;
}

void* nw_framer_write_output_no_copy(void)
{
    if (verbose) puts("STUB: nw_framer_write_output_no_copy called");
    return NULL;
}

void* nw_hash_node_get_extra(void)
{
    if (verbose) puts("STUB: nw_hash_node_get_extra called");
    return NULL;
}

void* nw_hash_node_get_object(void)
{
    if (verbose) puts("STUB: nw_hash_node_get_object called");
    return NULL;
}

void* nw_hash_table_add_object(void)
{
    if (verbose) puts("STUB: nw_hash_table_add_object called");
    return NULL;
}

void* nw_hash_table_apply(void)
{
    if (verbose) puts("STUB: nw_hash_table_apply called");
    return NULL;
}

void* nw_hash_table_count(void)
{
    if (verbose) puts("STUB: nw_hash_table_count called");
    return NULL;
}

void* nw_hash_table_create(void)
{
    if (verbose) puts("STUB: nw_hash_table_create called");
    return NULL;
}

void* nw_hash_table_get_node(void)
{
    if (verbose) puts("STUB: nw_hash_table_get_node called");
    return NULL;
}

void* nw_hash_table_get_some_node(void)
{
    if (verbose) puts("STUB: nw_hash_table_get_some_node called");
    return NULL;
}

void* nw_hash_table_release(void)
{
    if (verbose) puts("STUB: nw_hash_table_release called");
    return NULL;
}

void* nw_hash_table_release_all_objects(void)
{
    if (verbose) puts("STUB: nw_hash_table_release_all_objects called");
    return NULL;
}

void* nw_hash_table_remove_node(void)
{
    if (verbose) puts("STUB: nw_hash_table_remove_node called");
    return NULL;
}

void* nw_interface_copy_delegate_interface(void)
{
    if (verbose) puts("STUB: nw_interface_copy_delegate_interface called");
    return NULL;
}

void* nw_interface_copy_dictionary(void)
{
    if (verbose) puts("STUB: nw_interface_copy_dictionary called");
    return NULL;
}

void* nw_interface_copy_ipv4_broadcast_endpoint(void)
{
    if (verbose) puts("STUB: nw_interface_copy_ipv4_broadcast_endpoint called");
    return NULL;
}

void* nw_interface_copy_ipv4_netmask_endpoint(void)
{
    if (verbose) puts("STUB: nw_interface_copy_ipv4_netmask_endpoint called");
    return NULL;
}

void* nw_interface_create_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_interface_create_from_dictionary called");
    return NULL;
}

void* nw_interface_create_from_necp(void)
{
    if (verbose) puts("STUB: nw_interface_create_from_necp called");
    return NULL;
}

void* nw_interface_create_static(void)
{
    if (verbose) puts("STUB: nw_interface_create_static called");
    return NULL;
}

void* nw_interface_create_with_index(void)
{
    if (verbose) puts("STUB: nw_interface_create_with_index called");
    return NULL;
}

void* nw_interface_create_with_index_and_name(void)
{
    if (verbose) puts("STUB: nw_interface_create_with_index_and_name called");
    return NULL;
}

void* nw_interface_create_with_name(void)
{
    if (verbose) puts("STUB: nw_interface_create_with_name called");
    return NULL;
}

void* nw_interface_deep_compare(void)
{
    if (verbose) puts("STUB: nw_interface_deep_compare called");
    return NULL;
}

void* nw_interface_functional_type_to_interface_subtype(void)
{
    if (verbose) puts("STUB: nw_interface_functional_type_to_interface_subtype called");
    return NULL;
}

void* nw_interface_functional_type_to_interface_type(void)
{
    if (verbose) puts("STUB: nw_interface_functional_type_to_interface_type called");
    return NULL;
}

void* nw_interface_get_active_state(void)
{
    if (verbose) puts("STUB: nw_interface_get_active_state called");
    return NULL;
}

void* nw_interface_get_generation(void)
{
    if (verbose) puts("STUB: nw_interface_get_generation called");
    return NULL;
}

void* nw_interface_get_index(void)
{
    if (verbose) puts("STUB: nw_interface_get_index called");
    return NULL;
}

void* nw_interface_get_ipv4_broadcast(void)
{
    if (verbose) puts("STUB: nw_interface_get_ipv4_broadcast called");
    return NULL;
}

void* nw_interface_get_ipv4_netmask(void)
{
    if (verbose) puts("STUB: nw_interface_get_ipv4_netmask called");
    return NULL;
}

void* nw_interface_get_ipv4_network_signature(void)
{
    if (verbose) puts("STUB: nw_interface_get_ipv4_network_signature called");
    return NULL;
}

void* nw_interface_get_ipv6_network_signature(void)
{
    if (verbose) puts("STUB: nw_interface_get_ipv6_network_signature called");
    return NULL;
}

void* nw_interface_get_mtu(void)
{
    if (verbose) puts("STUB: nw_interface_get_mtu called");
    return NULL;
}

void* nw_interface_get_name(void)
{
    if (verbose) puts("STUB: nw_interface_get_name called");
    return NULL;
}

void* nw_interface_get_shallow_hash(void)
{
    if (verbose) puts("STUB: nw_interface_get_shallow_hash called");
    return NULL;
}

void* nw_interface_get_subtype(void)
{
    if (verbose) puts("STUB: nw_interface_get_subtype called");
    return NULL;
}

void* nw_interface_get_type(void)
{
    if (verbose) puts("STUB: nw_interface_get_type called");
    return NULL;
}

void* nw_interface_is_constrained(void)
{
    if (verbose) puts("STUB: nw_interface_is_constrained called");
    return NULL;
}

void* nw_interface_is_expensive(void)
{
    if (verbose) puts("STUB: nw_interface_is_expensive called");
    return NULL;
}

void* nw_interface_is_multilayer_packet_logging_enabled(void)
{
    if (verbose) puts("STUB: nw_interface_is_multilayer_packet_logging_enabled called");
    return NULL;
}

void* nw_interface_query_lqm(void)
{
    if (verbose) puts("STUB: nw_interface_query_lqm called");
    return NULL;
}

void* nw_interface_set_active(void)
{
    if (verbose) puts("STUB: nw_interface_set_active called");
    return NULL;
}

void* nw_interface_shallow_compare(void)
{
    if (verbose) puts("STUB: nw_interface_shallow_compare called");
    return NULL;
}

void* nw_interface_status_monitor_cancel(void)
{
    if (verbose) puts("STUB: nw_interface_status_monitor_cancel called");
    return NULL;
}

void* nw_interface_status_monitor_copy_interface(void)
{
    if (verbose) puts("STUB: nw_interface_status_monitor_copy_interface called");
    return NULL;
}

void* nw_interface_status_monitor_set_packet_event_handler(void)
{
    if (verbose) puts("STUB: nw_interface_status_monitor_set_packet_event_handler called");
    return NULL;
}

void* nw_interface_status_monitor_set_update_handler(void)
{
    if (verbose) puts("STUB: nw_interface_status_monitor_set_update_handler called");
    return NULL;
}

void* nw_interface_subtype_get_description(void)
{
    if (verbose) puts("STUB: nw_interface_subtype_get_description called");
    return NULL;
}

void* nw_interface_supports_ack_priority(void)
{
    if (verbose) puts("STUB: nw_interface_supports_ack_priority called");
    return NULL;
}

void* nw_interface_supports_carrier_aggregation(void)
{
    if (verbose) puts("STUB: nw_interface_supports_carrier_aggregation called");
    return NULL;
}

void* nw_interface_supports_tx_start(void)
{
    if (verbose) puts("STUB: nw_interface_supports_tx_start called");
    return NULL;
}

void* nw_interface_type_get_description(void)
{
    if (verbose) puts("STUB: nw_interface_type_get_description called");
    return NULL;
}

void* nw_interface_type_to_functional_type(void)
{
    if (verbose) puts("STUB: nw_interface_type_to_functional_type called");
    return NULL;
}

void* nw_interpose_cancel(void)
{
    if (verbose) puts("STUB: nw_interpose_cancel called");
    return NULL;
}

void* nw_interpose_client_claim(void)
{
    if (verbose) puts("STUB: nw_interpose_client_claim called");
    return NULL;
}

void* nw_interpose_client_register(void)
{
    if (verbose) puts("STUB: nw_interpose_client_register called");
    return NULL;
}

void* nw_interpose_get_client_uuid(void)
{
    if (verbose) puts("STUB: nw_interpose_get_client_uuid called");
    return NULL;
}

void* nw_interpose_set_flow_event_handler(void)
{
    if (verbose) puts("STUB: nw_interpose_set_flow_event_handler called");
    return NULL;
}

void* nw_interpose_set_queue(void)
{
    if (verbose) puts("STUB: nw_interpose_set_queue called");
    return NULL;
}

void* nw_interpose_start(void)
{
    if (verbose) puts("STUB: nw_interpose_start called");
    return NULL;
}

void* nw_ip_create_metadata(void)
{
    if (verbose) puts("STUB: nw_ip_create_metadata called");
    return NULL;
}

void* nw_ip_create_options(void)
{
    if (verbose) puts("STUB: nw_ip_create_options called");
    return NULL;
}

void* nw_ip_metadata_get_ecn_flag(void)
{
    if (verbose) puts("STUB: nw_ip_metadata_get_ecn_flag called");
    return NULL;
}

void* nw_ip_metadata_get_receive_time(void)
{
    if (verbose) puts("STUB: nw_ip_metadata_get_receive_time called");
    return NULL;
}

void* nw_ip_metadata_get_service_class(void)
{
    if (verbose) puts("STUB: nw_ip_metadata_get_service_class called");
    return NULL;
}

void* nw_ip_metadata_set_ecn_flag(void)
{
    if (verbose) puts("STUB: nw_ip_metadata_set_ecn_flag called");
    return NULL;
}

void* nw_ip_metadata_set_service_class(void)
{
    if (verbose) puts("STUB: nw_ip_metadata_set_service_class called");
    return NULL;
}

void* nw_ip_options_set_calculate_receive_time(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_calculate_receive_time called");
    return NULL;
}

void* nw_ip_options_set_disable_fragmentation(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_disable_fragmentation called");
    return NULL;
}

void* nw_ip_options_set_hop_limit(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_hop_limit called");
    return NULL;
}

void* nw_ip_options_set_local_address_preference(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_local_address_preference called");
    return NULL;
}

void* nw_ip_options_set_use_minimum_mtu(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_use_minimum_mtu called");
    return NULL;
}

void* nw_ip_options_set_version(void)
{
    if (verbose) puts("STUB: nw_ip_options_set_version called");
    return NULL;
}

void* nw_is_dispatch_allowed(void)
{
    if (verbose) puts("STUB: nw_is_dispatch_allowed called");
    return NULL;
}

void* nw_link_get_flow_control_status(void)
{
    if (verbose) puts("STUB: nw_link_get_flow_control_status called");
    return NULL;
}

void* nw_link_info_create(void)
{
    if (verbose) puts("STUB: nw_link_info_create called");
    return NULL;
}

void* nw_link_set_flow_control_status(void)
{
    if (verbose) puts("STUB: nw_link_set_flow_control_status called");
    return NULL;
}

void* nw_listener_cancel(void)
{
    if (verbose) puts("STUB: nw_listener_cancel called");
    return NULL;
}

void* nw_listener_copy_advertise_descriptor(void)
{
    if (verbose) puts("STUB: nw_listener_copy_advertise_descriptor called");
    return NULL;
}

void* nw_listener_copy_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_listener_copy_local_endpoint called");
    return NULL;
}

void* nw_listener_create(void)
{
    if (verbose) puts("STUB: nw_listener_create called");
    return NULL;
}

void* nw_listener_create_with_connection(void)
{
    if (verbose) puts("STUB: nw_listener_create_with_connection called");
    return NULL;
}

void* nw_listener_create_with_launchd_key(void)
{
    if (verbose) puts("STUB: nw_listener_create_with_launchd_key called");
    return NULL;
}

void* nw_listener_create_with_port(void)
{
    if (verbose) puts("STUB: nw_listener_create_with_port called");
    return NULL;
}

void* nw_listener_get_new_connection_limit(void)
{
    if (verbose) puts("STUB: nw_listener_get_new_connection_limit called");
    return NULL;
}

void* nw_listener_get_port(void)
{
    if (verbose) puts("STUB: nw_listener_get_port called");
    return NULL;
}

void* nw_listener_set_advertise_descriptor(void)
{
    if (verbose) puts("STUB: nw_listener_set_advertise_descriptor called");
    return NULL;
}

void* nw_listener_set_advertised_endpoint_changed_handler(void)
{
    if (verbose) puts("STUB: nw_listener_set_advertised_endpoint_changed_handler called");
    return NULL;
}

void* nw_listener_set_event_handler(void)
{
    if (verbose) puts("STUB: nw_listener_set_event_handler called");
    return NULL;
}

void* nw_listener_set_new_connection_handler(void)
{
    if (verbose) puts("STUB: nw_listener_set_new_connection_handler called");
    return NULL;
}

void* nw_listener_set_new_connection_limit(void)
{
    if (verbose) puts("STUB: nw_listener_set_new_connection_limit called");
    return NULL;
}

void* nw_listener_set_queue(void)
{
    if (verbose) puts("STUB: nw_listener_set_queue called");
    return NULL;
}

void* nw_listener_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_listener_set_state_changed_handler called");
    return NULL;
}

void* nw_listener_start(void)
{
    if (verbose) puts("STUB: nw_listener_start called");
    return NULL;
}

void* nw_log_delta_to_ms(void)
{
    if (verbose) puts("STUB: nw_log_delta_to_ms called");
    return NULL;
}

void* nw_log_ms_to_delta(void)
{
    if (verbose) puts("STUB: nw_log_ms_to_delta called");
    return NULL;
}

void* nw_log_ring_append(void)
{
    if (verbose) puts("STUB: nw_log_ring_append called");
    return NULL;
}

void* nw_log_ring_copyout(void)
{
    if (verbose) puts("STUB: nw_log_ring_copyout called");
    return NULL;
}

void* nw_log_ring_parse(void)
{
    if (verbose) puts("STUB: nw_log_ring_parse called");
    return NULL;
}

void* nw_log_ring_parse_count(void)
{
    if (verbose) puts("STUB: nw_log_ring_parse_count called");
    return NULL;
}

void* nw_mem_buffer_allocate(void)
{
    if (verbose) puts("STUB: nw_mem_buffer_allocate called");
    return NULL;
}

void* nw_mem_buffer_free(void)
{
    if (verbose) puts("STUB: nw_mem_buffer_free called");
    return NULL;
}

void* nw_mpkl_child_has_forked(void)
{
    if (verbose) puts("STUB: nw_mpkl_child_has_forked called");
    return NULL;
}

void* nw_mpkl_copy_log_object(void)
{
    if (verbose) puts("STUB: nw_mpkl_copy_log_object called");
    return NULL;
}

void* nw_nat64_can_v4_address_be_synthesized(void)
{
    if (verbose) puts("STUB: nw_nat64_can_v4_address_be_synthesized called");
    return NULL;
}

void* nw_nat64_copy_prefixes(void)
{
    if (verbose) puts("STUB: nw_nat64_copy_prefixes called");
    return NULL;
}

void* nw_nat64_copy_prefixes_async(void)
{
    if (verbose) puts("STUB: nw_nat64_copy_prefixes_async called");
    return NULL;
}

void* nw_nat64_copy_prefixes_from_ipv4only_records(void)
{
    if (verbose) puts("STUB: nw_nat64_copy_prefixes_from_ipv4only_records called");
    return NULL;
}

void* nw_nat64_does_interface_index_support_nat64(void)
{
    if (verbose) puts("STUB: nw_nat64_does_interface_index_support_nat64 called");
    return NULL;
}

void* nw_nat64_extract_v4(void)
{
    if (verbose) puts("STUB: nw_nat64_extract_v4 called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_cancel(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_cancel called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_copy_interface(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_copy_interface called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_create(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_create called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_set_cancel_handler(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_set_cancel_handler called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_set_queue(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_set_queue called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_set_update_handler(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_set_update_handler called");
    return NULL;
}

void* nw_nat64_prefixes_resolver_start(void)
{
    if (verbose) puts("STUB: nw_nat64_prefixes_resolver_start called");
    return NULL;
}

void* nw_nat64_synthesize(void)
{
    if (verbose) puts("STUB: nw_nat64_synthesize called");
    return NULL;
}

void* nw_nat64_synthesize_v6(void)
{
    if (verbose) puts("STUB: nw_nat64_synthesize_v6 called");
    return NULL;
}

void* nw_nat64_v4_address_requires_synthesis(void)
{
    if (verbose) puts("STUB: nw_nat64_v4_address_requires_synthesis called");
    return NULL;
}

void* nw_nat64_write_prefix_to_string(void)
{
    if (verbose) puts("STUB: nw_nat64_write_prefix_to_string called");
    return NULL;
}

void* nw_network_agent_add_persistent_agent_to_interface(void)
{
    if (verbose) puts("STUB: nw_network_agent_add_persistent_agent_to_interface called");
    return NULL;
}

void* nw_network_agent_add_to_interface(void)
{
    if (verbose) puts("STUB: nw_network_agent_add_to_interface called");
    return NULL;
}

void* nw_network_agent_copy_dictionary_for_uuid(void)
{
    if (verbose) puts("STUB: nw_network_agent_copy_dictionary_for_uuid called");
    return NULL;
}

void* nw_network_agent_copy_uuid(void)
{
    if (verbose) puts("STUB: nw_network_agent_copy_uuid called");
    return NULL;
}

void* nw_network_agent_create_agent_from_data(void)
{
    if (verbose) puts("STUB: nw_network_agent_create_agent_from_data called");
    return NULL;
}

void* nw_network_agent_ctl_copy_received_agent_message(void)
{
    if (verbose) puts("STUB: nw_network_agent_ctl_copy_received_agent_message called");
    return NULL;
}

void* nw_network_agent_ctl_send_assign_message(void)
{
    if (verbose) puts("STUB: nw_network_agent_ctl_send_assign_message called");
    return NULL;
}

void* nw_network_agent_ctl_setsockopt(void)
{
    if (verbose) puts("STUB: nw_network_agent_ctl_setsockopt called");
    return NULL;
}

void* nw_network_agent_get_agent_classs(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_agent_classs called");
    return NULL;
}

void* nw_network_agent_get_agent_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_agent_from_dictionary called");
    return NULL;
}

void* nw_network_agent_get_data(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_data called");
    return NULL;
}

void* nw_network_agent_get_description(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_description called");
    return NULL;
}

void* nw_network_agent_get_domain(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_domain called");
    return NULL;
}

void* nw_network_agent_get_type(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_type called");
    return NULL;
}

void* nw_network_agent_get_use_count(void)
{
    if (verbose) puts("STUB: nw_network_agent_get_use_count called");
    return NULL;
}

void* nw_network_agent_is_active(void)
{
    if (verbose) puts("STUB: nw_network_agent_is_active called");
    return NULL;
}

void* nw_network_agent_is_kernel_activated(void)
{
    if (verbose) puts("STUB: nw_network_agent_is_kernel_activated called");
    return NULL;
}

void* nw_network_agent_is_user_activated(void)
{
    if (verbose) puts("STUB: nw_network_agent_is_user_activated called");
    return NULL;
}

void* nw_network_agent_is_voluntary(void)
{
    if (verbose) puts("STUB: nw_network_agent_is_voluntary called");
    return NULL;
}

void* nw_network_agent_open_control_socket(void)
{
    if (verbose) puts("STUB: nw_network_agent_open_control_socket called");
    return NULL;
}

void* nw_network_agent_register(void)
{
    if (verbose) puts("STUB: nw_network_agent_register called");
    return NULL;
}

void* nw_network_agent_release(void)
{
    if (verbose) puts("STUB: nw_network_agent_release called");
    return NULL;
}

void* nw_network_agent_remove_from_interface(void)
{
    if (verbose) puts("STUB: nw_network_agent_remove_from_interface called");
    return NULL;
}

void* nw_network_agent_set_use_count(void)
{
    if (verbose) puts("STUB: nw_network_agent_set_use_count called");
    return NULL;
}

void* nw_network_agent_start(void)
{
    if (verbose) puts("STUB: nw_network_agent_start called");
    return NULL;
}

void* nw_network_agent_stop(void)
{
    if (verbose) puts("STUB: nw_network_agent_stop called");
    return NULL;
}

void* nw_network_agent_unregister(void)
{
    if (verbose) puts("STUB: nw_network_agent_unregister called");
    return NULL;
}

void* nw_network_agent_update_registration(void)
{
    if (verbose) puts("STUB: nw_network_agent_update_registration called");
    return NULL;
}

void* nw_nexus_bind_client_port(void)
{
    if (verbose) puts("STUB: nw_nexus_bind_client_port called");
    return NULL;
}

void* nw_nexus_close(void)
{
    if (verbose) puts("STUB: nw_nexus_close called");
    return NULL;
}

void* nw_nexus_close_channel_and_instance(void)
{
    if (verbose) puts("STUB: nw_nexus_close_channel_and_instance called");
    return NULL;
}

void* nw_nexus_create(void)
{
    if (verbose) puts("STUB: nw_nexus_create called");
    return NULL;
}

void* nw_nexus_create_channel_to_new_instance(void)
{
    if (verbose) puts("STUB: nw_nexus_create_channel_to_new_instance called");
    return NULL;
}

void* nw_pac_resolver_create_with_script(void)
{
    if (verbose) puts("STUB: nw_pac_resolver_create_with_script called");
    return NULL;
}

void* nw_pac_resolver_create_with_url(void)
{
    if (verbose) puts("STUB: nw_pac_resolver_create_with_url called");
    return NULL;
}

void* nw_pac_resolver_start(void)
{
    if (verbose) puts("STUB: nw_pac_resolver_start called");
    return NULL;
}

void* nw_packet_hash_table_create(void)
{
    if (verbose) puts("STUB: nw_packet_hash_table_create called");
    return NULL;
}

void* nw_parallel_array_append(void)
{
    if (verbose) puts("STUB: nw_parallel_array_append called");
    return NULL;
}

void* nw_parallel_array_apply(void)
{
    if (verbose) puts("STUB: nw_parallel_array_apply called");
    return NULL;
}

void* nw_parallel_array_apply_with_range(void)
{
    if (verbose) puts("STUB: nw_parallel_array_apply_with_range called");
    return NULL;
}

void* nw_parallel_array_contains(void)
{
    if (verbose) puts("STUB: nw_parallel_array_contains called");
    return NULL;
}

void* nw_parallel_array_copy(void)
{
    if (verbose) puts("STUB: nw_parallel_array_copy called");
    return NULL;
}

void* nw_parallel_array_create(void)
{
    if (verbose) puts("STUB: nw_parallel_array_create called");
    return NULL;
}

void* nw_parallel_array_find(void)
{
    if (verbose) puts("STUB: nw_parallel_array_find called");
    return NULL;
}

void* nw_parallel_array_get_at_index(void)
{
    if (verbose) puts("STUB: nw_parallel_array_get_at_index called");
    return NULL;
}

void* nw_parallel_array_get_count(void)
{
    if (verbose) puts("STUB: nw_parallel_array_get_count called");
    return NULL;
}

void* nw_parallel_array_is_equal(void)
{
    if (verbose) puts("STUB: nw_parallel_array_is_equal called");
    return NULL;
}

void* nw_parallel_array_remove_at_index(void)
{
    if (verbose) puts("STUB: nw_parallel_array_remove_at_index called");
    return NULL;
}

void* nw_parameters_add_protocol_stack_member(void)
{
    if (verbose) puts("STUB: nw_parameters_add_protocol_stack_member called");
    return NULL;
}

void* nw_parameters_add_proxy_options(void)
{
    if (verbose) puts("STUB: nw_parameters_add_proxy_options called");
    return NULL;
}

void* nw_parameters_add_to_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_add_to_protocol_stack called");
    return NULL;
}

void* nw_parameters_are_compatible(void)
{
    if (verbose) puts("STUB: nw_parameters_are_compatible called");
    return NULL;
}

void* nw_parameters_are_valid(void)
{
    if (verbose) puts("STUB: nw_parameters_are_valid called");
    return NULL;
}

void* nw_parameters_clear_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: nw_parameters_clear_prohibited_interface_types called");
    return NULL;
}

void* nw_parameters_clear_prohibited_interfaces(void)
{
    if (verbose) puts("STUB: nw_parameters_clear_prohibited_interfaces called");
    return NULL;
}

void* nw_parameters_clear_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_clear_protocol_stack called");
    return NULL;
}

void* nw_parameters_clear_proxy_options(void)
{
    if (verbose) puts("STUB: nw_parameters_clear_proxy_options called");
    return NULL;
}

void* nw_parameters_copy(void)
{
    if (verbose) puts("STUB: nw_parameters_copy called");
    return NULL;
}

void* nw_parameters_copy_avoided_netagent_domains(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_avoided_netagent_domains called");
    return NULL;
}

void* nw_parameters_copy_avoided_netagent_types(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_avoided_netagent_types called");
    return NULL;
}

void* nw_parameters_copy_avoided_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_avoided_netagent_uuids called");
    return NULL;
}

void* nw_parameters_copy_connected(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_connected called");
    return NULL;
}

void* nw_parameters_copy_context(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_context called");
    return NULL;
}

void* nw_parameters_copy_default_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_default_protocol_stack called");
    return NULL;
}

void* nw_parameters_copy_description(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_description called");
    return NULL;
}

void* nw_parameters_copy_dictionary(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_dictionary called");
    return NULL;
}

void* nw_parameters_copy_effective_proxy_settings(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_effective_proxy_settings called");
    return NULL;
}

void* nw_parameters_copy_initial_data_payload(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_initial_data_payload called");
    return NULL;
}

void* nw_parameters_copy_local_address(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_local_address called");
    return NULL;
}

void* nw_parameters_copy_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_local_endpoint called");
    return NULL;
}

void* nw_parameters_copy_metadata(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_metadata called");
    return NULL;
}

void* nw_parameters_copy_path_parameters(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_path_parameters called");
    return NULL;
}

void* nw_parameters_copy_preferred_netagent_domains(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_preferred_netagent_domains called");
    return NULL;
}

void* nw_parameters_copy_preferred_netagent_types(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_preferred_netagent_types called");
    return NULL;
}

void* nw_parameters_copy_preferred_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_preferred_netagent_uuids called");
    return NULL;
}

void* nw_parameters_copy_prohibited_interface_subtypes(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_interface_subtypes called");
    return NULL;
}

void* nw_parameters_copy_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_interface_types called");
    return NULL;
}

void* nw_parameters_copy_prohibited_interfaces(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_interfaces called");
    return NULL;
}

void* nw_parameters_copy_prohibited_netagent_domains(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_netagent_domains called");
    return NULL;
}

void* nw_parameters_copy_prohibited_netagent_types(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_netagent_types called");
    return NULL;
}

void* nw_parameters_copy_prohibited_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_prohibited_netagent_uuids called");
    return NULL;
}

void* nw_parameters_copy_protocol_options(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_protocol_options called");
    return NULL;
}

void* nw_parameters_copy_protocol_options_for_definition(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_protocol_options_for_definition called");
    return NULL;
}

void* nw_parameters_copy_protocol_options_legacy(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_protocol_options_legacy called");
    return NULL;
}

void* nw_parameters_copy_protocol_value(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_protocol_value called");
    return NULL;
}

void* nw_parameters_copy_proxy_configuration(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_proxy_configuration called");
    return NULL;
}

void* nw_parameters_copy_required_interface(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_required_interface called");
    return NULL;
}

void* nw_parameters_copy_required_netagent_domains(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_required_netagent_domains called");
    return NULL;
}

void* nw_parameters_copy_required_netagent_types(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_required_netagent_types called");
    return NULL;
}

void* nw_parameters_copy_required_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_required_netagent_uuids called");
    return NULL;
}

void* nw_parameters_copy_tls_session_id(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_tls_session_id called");
    return NULL;
}

void* nw_parameters_copy_transform_array(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_transform_array called");
    return NULL;
}

void* nw_parameters_copy_url_endpoint(void)
{
    if (verbose) puts("STUB: nw_parameters_copy_url_endpoint called");
    return NULL;
}

void* nw_parameters_create(void)
{
    if (verbose) puts("STUB: nw_parameters_create called");
    return NULL;
}

void* nw_parameters_create_custom_ip(void)
{
    if (verbose) puts("STUB: nw_parameters_create_custom_ip called");
    return NULL;
}

void* nw_parameters_create_empty_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_create_empty_stack called");
    return NULL;
}

void* nw_parameters_create_from_dictionary(void)
{
    if (verbose) puts("STUB: nw_parameters_create_from_dictionary called");
    return NULL;
}

void* nw_parameters_create_legacy_tcp_socket(void)
{
    if (verbose) puts("STUB: nw_parameters_create_legacy_tcp_socket called");
    return NULL;
}

void* nw_parameters_create_protocol_parameters(void)
{
    if (verbose) puts("STUB: nw_parameters_create_protocol_parameters called");
    return NULL;
}

void* nw_parameters_create_quic_connection(void)
{
    if (verbose) puts("STUB: nw_parameters_create_quic_connection called");
    return NULL;
}

void* nw_parameters_create_quic_connection_with_tls_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_create_quic_connection_with_tls_fallback called");
    return NULL;
}

void* nw_parameters_create_quic_stream(void)
{
    if (verbose) puts("STUB: nw_parameters_create_quic_stream called");
    return NULL;
}

void* nw_parameters_create_quic_stream_with_tls_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_create_quic_stream_with_tls_fallback called");
    return NULL;
}

void* nw_parameters_create_secure_tcp(void)
{
    if (verbose) puts("STUB: nw_parameters_create_secure_tcp called");
    return NULL;
}

void* nw_parameters_create_secure_udp(void)
{
    if (verbose) puts("STUB: nw_parameters_create_secure_udp called");
    return NULL;
}

void* nw_parameters_get_account_id(void)
{
    if (verbose) puts("STUB: nw_parameters_get_account_id called");
    return NULL;
}

void* nw_parameters_get_allow_duplicate_state_updates(void)
{
    if (verbose) puts("STUB: nw_parameters_get_allow_duplicate_state_updates called");
    return NULL;
}

void* nw_parameters_get_allow_joining_connected_fd(void)
{
    if (verbose) puts("STUB: nw_parameters_get_allow_joining_connected_fd called");
    return NULL;
}

void* nw_parameters_get_allow_socket_access(void)
{
    if (verbose) puts("STUB: nw_parameters_get_allow_socket_access called");
    return NULL;
}

void* nw_parameters_get_allow_unusable_addresses(void)
{
    if (verbose) puts("STUB: nw_parameters_get_allow_unusable_addresses called");
    return NULL;
}

void* nw_parameters_get_always_open_listener_socket(void)
{
    if (verbose) puts("STUB: nw_parameters_get_always_open_listener_socket called");
    return NULL;
}

void* nw_parameters_get_attach_protocol_listener(void)
{
    if (verbose) puts("STUB: nw_parameters_get_attach_protocol_listener called");
    return NULL;
}

void* nw_parameters_get_background_traffic_management(void)
{
    if (verbose) puts("STUB: nw_parameters_get_background_traffic_management called");
    return NULL;
}

void* nw_parameters_get_bundle_id_to_uuid_mapping_failed(void)
{
    if (verbose) puts("STUB: nw_parameters_get_bundle_id_to_uuid_mapping_failed called");
    return NULL;
}

void* nw_parameters_get_companion_link_upgrade_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_get_companion_link_upgrade_preference called");
    return NULL;
}

void* nw_parameters_get_companion_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_get_companion_preference called");
    return NULL;
}

void* nw_parameters_get_context_privacy_level(void)
{
    if (verbose) puts("STUB: nw_parameters_get_context_privacy_level called");
    return NULL;
}

void* nw_parameters_get_data_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_get_data_mode called");
    return NULL;
}

void* nw_parameters_get_delegated_unique_pid(void)
{
    if (verbose) puts("STUB: nw_parameters_get_delegated_unique_pid called");
    return NULL;
}

void* nw_parameters_get_desperate_ivan(void)
{
    if (verbose) puts("STUB: nw_parameters_get_desperate_ivan called");
    return NULL;
}

void* nw_parameters_get_discretionary(void)
{
    if (verbose) puts("STUB: nw_parameters_get_discretionary called");
    return NULL;
}

void* nw_parameters_get_dry_run(void)
{
    if (verbose) puts("STUB: nw_parameters_get_dry_run called");
    return NULL;
}

void* nw_parameters_get_e_proc_uuid(void)
{
    if (verbose) puts("STUB: nw_parameters_get_e_proc_uuid called");
    return NULL;
}

void* nw_parameters_get_ecn_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_get_ecn_mode called");
    return NULL;
}

void* nw_parameters_get_effective_audit_token(void)
{
    if (verbose) puts("STUB: nw_parameters_get_effective_audit_token called");
    return NULL;
}

void* nw_parameters_get_effective_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_get_effective_bundle_id called");
    return NULL;
}

void* nw_parameters_get_expected_workload(void)
{
    if (verbose) puts("STUB: nw_parameters_get_expected_workload called");
    return NULL;
}

void* nw_parameters_get_expired_dns_behavior(void)
{
    if (verbose) puts("STUB: nw_parameters_get_expired_dns_behavior called");
    return NULL;
}

void* nw_parameters_get_fast_open_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_get_fast_open_enabled called");
    return NULL;
}

void* nw_parameters_get_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_parameters_get_fast_open_force_enable called");
    return NULL;
}

void* nw_parameters_get_hash(void)
{
    if (verbose) puts("STUB: nw_parameters_get_hash called");
    return NULL;
}

void* nw_parameters_get_https_proxy_is_opaque(void)
{
    if (verbose) puts("STUB: nw_parameters_get_https_proxy_is_opaque called");
    return NULL;
}

void* nw_parameters_get_https_proxy_over_tls(void)
{
    if (verbose) puts("STUB: nw_parameters_get_https_proxy_over_tls called");
    return NULL;
}

void* nw_parameters_get_ignore_resolver_stats(void)
{
    if (verbose) puts("STUB: nw_parameters_get_ignore_resolver_stats called");
    return NULL;
}

void* nw_parameters_get_include_peer_to_peer(void)
{
    if (verbose) puts("STUB: nw_parameters_get_include_peer_to_peer called");
    return NULL;
}

void* nw_parameters_get_indefinite(void)
{
    if (verbose) puts("STUB: nw_parameters_get_indefinite called");
    return NULL;
}

void* nw_parameters_get_indefinite_set(void)
{
    if (verbose) puts("STUB: nw_parameters_get_indefinite_set called");
    return NULL;
}

void* nw_parameters_get_ip_protocol(void)
{
    if (verbose) puts("STUB: nw_parameters_get_ip_protocol called");
    return NULL;
}

void* nw_parameters_get_is_probe(void)
{
    if (verbose) puts("STUB: nw_parameters_get_is_probe called");
    return NULL;
}

void* nw_parameters_get_keepalive_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_get_keepalive_enabled called");
    return NULL;
}

void* nw_parameters_get_keepalive_idle_time(void)
{
    if (verbose) puts("STUB: nw_parameters_get_keepalive_idle_time called");
    return NULL;
}

void* nw_parameters_get_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_parameters_get_keepalive_interval called");
    return NULL;
}

void* nw_parameters_get_keepalive_offload(void)
{
    if (verbose) puts("STUB: nw_parameters_get_keepalive_offload called");
    return NULL;
}

void* nw_parameters_get_local_address_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_get_local_address_preference called");
    return NULL;
}

void* nw_parameters_get_local_only(void)
{
    if (verbose) puts("STUB: nw_parameters_get_local_only called");
    return NULL;
}

void* nw_parameters_get_maximum_tls_protocol_version(void)
{
    if (verbose) puts("STUB: nw_parameters_get_maximum_tls_protocol_version called");
    return NULL;
}

void* nw_parameters_get_minimum_tls_protocol_version(void)
{
    if (verbose) puts("STUB: nw_parameters_get_minimum_tls_protocol_version called");
    return NULL;
}

void* nw_parameters_get_multipath(void)
{
    if (verbose) puts("STUB: nw_parameters_get_multipath called");
    return NULL;
}

void* nw_parameters_get_multipath_force_enable(void)
{
    if (verbose) puts("STUB: nw_parameters_get_multipath_force_enable called");
    return NULL;
}

void* nw_parameters_get_multipath_service(void)
{
    if (verbose) puts("STUB: nw_parameters_get_multipath_service called");
    return NULL;
}

void* nw_parameters_get_no_cellular_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_cellular_fallback called");
    return NULL;
}

void* nw_parameters_get_no_delay(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_delay called");
    return NULL;
}

void* nw_parameters_get_no_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_fallback called");
    return NULL;
}

void* nw_parameters_get_no_fullstack_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_fullstack_fallback called");
    return NULL;
}

void* nw_parameters_get_no_opaque_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_opaque_proxy called");
    return NULL;
}

void* nw_parameters_get_no_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_proxy called");
    return NULL;
}

void* nw_parameters_get_no_proxy_path_selection(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_proxy_path_selection called");
    return NULL;
}

void* nw_parameters_get_no_transform(void)
{
    if (verbose) puts("STUB: nw_parameters_get_no_transform called");
    return NULL;
}

void* nw_parameters_get_only_primary_requires_type(void)
{
    if (verbose) puts("STUB: nw_parameters_get_only_primary_requires_type called");
    return NULL;
}

void* nw_parameters_get_parent_id(void)
{
    if (verbose) puts("STUB: nw_parameters_get_parent_id called");
    return NULL;
}

void* nw_parameters_get_pid(void)
{
    if (verbose) puts("STUB: nw_parameters_get_pid called");
    return NULL;
}

void* nw_parameters_get_pid_to_uuid_mapping_failed(void)
{
    if (verbose) puts("STUB: nw_parameters_get_pid_to_uuid_mapping_failed called");
    return NULL;
}

void* nw_parameters_get_prefer_no_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prefer_no_proxy called");
    return NULL;
}

void* nw_parameters_get_proc_uuid(void)
{
    if (verbose) puts("STUB: nw_parameters_get_proc_uuid called");
    return NULL;
}

void* nw_parameters_get_prohibit_cellular(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prohibit_cellular called");
    return NULL;
}

void* nw_parameters_get_prohibit_constrained(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prohibit_constrained called");
    return NULL;
}

void* nw_parameters_get_prohibit_expensive(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prohibit_expensive called");
    return NULL;
}

void* nw_parameters_get_prohibit_joining_protocols(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prohibit_joining_protocols called");
    return NULL;
}

void* nw_parameters_get_prohibit_roaming(void)
{
    if (verbose) puts("STUB: nw_parameters_get_prohibit_roaming called");
    return NULL;
}

void* nw_parameters_get_protocol_count(void)
{
    if (verbose) puts("STUB: nw_parameters_get_protocol_count called");
    return NULL;
}

void* nw_parameters_get_proxy_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_get_proxy_bundle_id called");
    return NULL;
}

void* nw_parameters_get_receive_any_interface(void)
{
    if (verbose) puts("STUB: nw_parameters_get_receive_any_interface called");
    return NULL;
}

void* nw_parameters_get_reduce_buffering(void)
{
    if (verbose) puts("STUB: nw_parameters_get_reduce_buffering called");
    return NULL;
}

void* nw_parameters_get_required_address_family(void)
{
    if (verbose) puts("STUB: nw_parameters_get_required_address_family called");
    return NULL;
}

void* nw_parameters_get_required_interface_index(void)
{
    if (verbose) puts("STUB: nw_parameters_get_required_interface_index called");
    return NULL;
}

void* nw_parameters_get_required_interface_subtype(void)
{
    if (verbose) puts("STUB: nw_parameters_get_required_interface_subtype called");
    return NULL;
}

void* nw_parameters_get_required_interface_type(void)
{
    if (verbose) puts("STUB: nw_parameters_get_required_interface_type called");
    return NULL;
}

void* nw_parameters_get_resolve_ptr(void)
{
    if (verbose) puts("STUB: nw_parameters_get_resolve_ptr called");
    return NULL;
}

void* nw_parameters_get_reuse_local_address(void)
{
    if (verbose) puts("STUB: nw_parameters_get_reuse_local_address called");
    return NULL;
}

void* nw_parameters_get_sanitized_url(void)
{
    if (verbose) puts("STUB: nw_parameters_get_sanitized_url called");
    return NULL;
}

void* nw_parameters_get_self_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_get_self_bundle_id called");
    return NULL;
}

void* nw_parameters_get_server_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_get_server_mode called");
    return NULL;
}

void* nw_parameters_get_service_class(void)
{
    if (verbose) puts("STUB: nw_parameters_get_service_class called");
    return NULL;
}

void* nw_parameters_get_should_skip_probe_sampling(void)
{
    if (verbose) puts("STUB: nw_parameters_get_should_skip_probe_sampling called");
    return NULL;
}

void* nw_parameters_get_should_trust_invalid_certificates(void)
{
    if (verbose) puts("STUB: nw_parameters_get_should_trust_invalid_certificates called");
    return NULL;
}

void* nw_parameters_get_sleep_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_parameters_get_sleep_keepalive_interval called");
    return NULL;
}

void* nw_parameters_get_ssl_cipher_suites(void)
{
    if (verbose) puts("STUB: nw_parameters_get_ssl_cipher_suites called");
    return NULL;
}

void* nw_parameters_get_tfo(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tfo called");
    return NULL;
}

void* nw_parameters_get_tfo_no_cookie(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tfo_no_cookie called");
    return NULL;
}

void* nw_parameters_get_tls(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tls called");
    return NULL;
}

void* nw_parameters_get_tls13_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tls13_enabled called");
    return NULL;
}

void* nw_parameters_get_tls_experiments_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tls_experiments_enabled called");
    return NULL;
}

void* nw_parameters_get_tls_session_ticket_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_get_tls_session_ticket_enabled called");
    return NULL;
}

void* nw_parameters_get_traffic_class(void)
{
    if (verbose) puts("STUB: nw_parameters_get_traffic_class called");
    return NULL;
}

void* nw_parameters_get_uid(void)
{
    if (verbose) puts("STUB: nw_parameters_get_uid called");
    return NULL;
}

void* nw_parameters_get_upper_transport_protocol(void)
{
    if (verbose) puts("STUB: nw_parameters_get_upper_transport_protocol called");
    return NULL;
}

void* nw_parameters_get_upper_transport_protocol_options(void)
{
    if (verbose) puts("STUB: nw_parameters_get_upper_transport_protocol_options called");
    return NULL;
}

void* nw_parameters_get_url(void)
{
    if (verbose) puts("STUB: nw_parameters_get_url called");
    return NULL;
}

void* nw_parameters_get_use_awdl(void)
{
    if (verbose) puts("STUB: nw_parameters_get_use_awdl called");
    return NULL;
}

void* nw_parameters_get_use_long_outstanding_queries(void)
{
    if (verbose) puts("STUB: nw_parameters_get_use_long_outstanding_queries called");
    return NULL;
}

void* nw_parameters_get_use_p2p(void)
{
    if (verbose) puts("STUB: nw_parameters_get_use_p2p called");
    return NULL;
}

void* nw_parameters_get_use_tfo_heuristics(void)
{
    if (verbose) puts("STUB: nw_parameters_get_use_tfo_heuristics called");
    return NULL;
}

void* nw_parameters_has_delegated_proc_pid(void)
{
    if (verbose) puts("STUB: nw_parameters_has_delegated_proc_pid called");
    return NULL;
}

void* nw_parameters_has_delegated_proc_uuid(void)
{
    if (verbose) puts("STUB: nw_parameters_has_delegated_proc_uuid called");
    return NULL;
}

void* nw_parameters_has_initial_data_payload(void)
{
    if (verbose) puts("STUB: nw_parameters_has_initial_data_payload called");
    return NULL;
}

void* nw_parameters_has_non_empty_proxy_configuration(void)
{
    if (verbose) puts("STUB: nw_parameters_has_non_empty_proxy_configuration called");
    return NULL;
}

void* nw_parameters_has_preferred_netagents(void)
{
    if (verbose) puts("STUB: nw_parameters_has_preferred_netagents called");
    return NULL;
}

void* nw_parameters_has_prohibited_interface_subtypes(void)
{
    if (verbose) puts("STUB: nw_parameters_has_prohibited_interface_subtypes called");
    return NULL;
}

void* nw_parameters_has_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: nw_parameters_has_prohibited_interface_types called");
    return NULL;
}

void* nw_parameters_has_prohibited_interfaces(void)
{
    if (verbose) puts("STUB: nw_parameters_has_prohibited_interfaces called");
    return NULL;
}

void* nw_parameters_has_prohibited_netagents(void)
{
    if (verbose) puts("STUB: nw_parameters_has_prohibited_netagents called");
    return NULL;
}

void* nw_parameters_has_protocol_at_level(void)
{
    if (verbose) puts("STUB: nw_parameters_has_protocol_at_level called");
    return NULL;
}

void* nw_parameters_has_protocol_in_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_has_protocol_in_stack called");
    return NULL;
}

void* nw_parameters_has_required_interface_subtype(void)
{
    if (verbose) puts("STUB: nw_parameters_has_required_interface_subtype called");
    return NULL;
}

void* nw_parameters_has_required_interface_type(void)
{
    if (verbose) puts("STUB: nw_parameters_has_required_interface_type called");
    return NULL;
}

void* nw_parameters_has_required_netagents(void)
{
    if (verbose) puts("STUB: nw_parameters_has_required_netagents called");
    return NULL;
}

void* nw_parameters_has_transforms(void)
{
    if (verbose) puts("STUB: nw_parameters_has_transforms called");
    return NULL;
}

void* nw_parameters_internal_iterate_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_internal_iterate_protocol_stack called");
    return NULL;
}

void* nw_parameters_is_custom_protocols_only(void)
{
    if (verbose) puts("STUB: nw_parameters_is_custom_protocols_only called");
    return NULL;
}

void* nw_parameters_is_equal(void)
{
    if (verbose) puts("STUB: nw_parameters_is_equal called");
    return NULL;
}

void* nw_parameters_is_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_is_fallback called");
    return NULL;
}

void* nw_parameters_iterate_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: nw_parameters_iterate_prohibited_interface_types called");
    return NULL;
}

void* nw_parameters_iterate_prohibited_interfaces(void)
{
    if (verbose) puts("STUB: nw_parameters_iterate_prohibited_interfaces called");
    return NULL;
}

void* nw_parameters_multipath_fallback_allowed(void)
{
    if (verbose) puts("STUB: nw_parameters_multipath_fallback_allowed called");
    return NULL;
}

void* nw_parameters_prohibit_interface(void)
{
    if (verbose) puts("STUB: nw_parameters_prohibit_interface called");
    return NULL;
}

void* nw_parameters_prohibit_interface_type(void)
{
    if (verbose) puts("STUB: nw_parameters_prohibit_interface_type called");
    return NULL;
}

void* nw_parameters_remove_definition_from_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_remove_definition_from_protocol_stack called");
    return NULL;
}

void* nw_parameters_remove_from_protocol_stack(void)
{
    if (verbose) puts("STUB: nw_parameters_remove_from_protocol_stack called");
    return NULL;
}

void* nw_parameters_require_interface(void)
{
    if (verbose) puts("STUB: nw_parameters_require_interface called");
    return NULL;
}

void* nw_parameters_set_account_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_account_id called");
    return NULL;
}

void* nw_parameters_set_allow_duplicate_state_updates(void)
{
    if (verbose) puts("STUB: nw_parameters_set_allow_duplicate_state_updates called");
    return NULL;
}

void* nw_parameters_set_allow_joining_connected_fd(void)
{
    if (verbose) puts("STUB: nw_parameters_set_allow_joining_connected_fd called");
    return NULL;
}

void* nw_parameters_set_allow_socket_access(void)
{
    if (verbose) puts("STUB: nw_parameters_set_allow_socket_access called");
    return NULL;
}

void* nw_parameters_set_allow_unusable_addresses(void)
{
    if (verbose) puts("STUB: nw_parameters_set_allow_unusable_addresses called");
    return NULL;
}

void* nw_parameters_set_always_open_listener_socket(void)
{
    if (verbose) puts("STUB: nw_parameters_set_always_open_listener_socket called");
    return NULL;
}

void* nw_parameters_set_attach_protocol_listener(void)
{
    if (verbose) puts("STUB: nw_parameters_set_attach_protocol_listener called");
    return NULL;
}

void* nw_parameters_set_avoided_netagent_classes(void)
{
    if (verbose) puts("STUB: nw_parameters_set_avoided_netagent_classes called");
    return NULL;
}

void* nw_parameters_set_avoided_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_set_avoided_netagent_uuids called");
    return NULL;
}

void* nw_parameters_set_background_traffic_management(void)
{
    if (verbose) puts("STUB: nw_parameters_set_background_traffic_management called");
    return NULL;
}

void* nw_parameters_set_companion_link_upgrade_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_set_companion_link_upgrade_preference called");
    return NULL;
}

void* nw_parameters_set_companion_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_set_companion_preference called");
    return NULL;
}

void* nw_parameters_set_context(void)
{
    if (verbose) puts("STUB: nw_parameters_set_context called");
    return NULL;
}

void* nw_parameters_set_custom_protocols_only(void)
{
    if (verbose) puts("STUB: nw_parameters_set_custom_protocols_only called");
    return NULL;
}

void* nw_parameters_set_data_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_set_data_mode called");
    return NULL;
}

void* nw_parameters_set_delegated_unique_pid(void)
{
    if (verbose) puts("STUB: nw_parameters_set_delegated_unique_pid called");
    return NULL;
}

void* nw_parameters_set_desperate_ivan(void)
{
    if (verbose) puts("STUB: nw_parameters_set_desperate_ivan called");
    return NULL;
}

void* nw_parameters_set_discretionary(void)
{
    if (verbose) puts("STUB: nw_parameters_set_discretionary called");
    return NULL;
}

void* nw_parameters_set_dry_run(void)
{
    if (verbose) puts("STUB: nw_parameters_set_dry_run called");
    return NULL;
}

void* nw_parameters_set_e_proc_uuid(void)
{
    if (verbose) puts("STUB: nw_parameters_set_e_proc_uuid called");
    return NULL;
}

void* nw_parameters_set_ecn_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_set_ecn_mode called");
    return NULL;
}

void* nw_parameters_set_effective_audit_token(void)
{
    if (verbose) puts("STUB: nw_parameters_set_effective_audit_token called");
    return NULL;
}

void* nw_parameters_set_effective_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_effective_bundle_id called");
    return NULL;
}

void* nw_parameters_set_effective_proxy_settings(void)
{
    if (verbose) puts("STUB: nw_parameters_set_effective_proxy_settings called");
    return NULL;
}

void* nw_parameters_set_expected_workload(void)
{
    if (verbose) puts("STUB: nw_parameters_set_expected_workload called");
    return NULL;
}

void* nw_parameters_set_expired_dns_behavior(void)
{
    if (verbose) puts("STUB: nw_parameters_set_expired_dns_behavior called");
    return NULL;
}

void* nw_parameters_set_fast_open_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_set_fast_open_enabled called");
    return NULL;
}

void* nw_parameters_set_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_parameters_set_fast_open_force_enable called");
    return NULL;
}

void* nw_parameters_set_https_proxy_is_opaque(void)
{
    if (verbose) puts("STUB: nw_parameters_set_https_proxy_is_opaque called");
    return NULL;
}

void* nw_parameters_set_https_proxy_over_tls(void)
{
    if (verbose) puts("STUB: nw_parameters_set_https_proxy_over_tls called");
    return NULL;
}

void* nw_parameters_set_ignore_resolver_stats(void)
{
    if (verbose) puts("STUB: nw_parameters_set_ignore_resolver_stats called");
    return NULL;
}

void* nw_parameters_set_include_peer_to_peer(void)
{
    if (verbose) puts("STUB: nw_parameters_set_include_peer_to_peer called");
    return NULL;
}

void* nw_parameters_set_indefinite(void)
{
    if (verbose) puts("STUB: nw_parameters_set_indefinite called");
    return NULL;
}

void* nw_parameters_set_initial_data_payload(void)
{
    if (verbose) puts("STUB: nw_parameters_set_initial_data_payload called");
    return NULL;
}

void* nw_parameters_set_is_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_set_is_fallback called");
    return NULL;
}

void* nw_parameters_set_is_probe(void)
{
    if (verbose) puts("STUB: nw_parameters_set_is_probe called");
    return NULL;
}

void* nw_parameters_set_keepalive_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_set_keepalive_enabled called");
    return NULL;
}

void* nw_parameters_set_keepalive_idle_time(void)
{
    if (verbose) puts("STUB: nw_parameters_set_keepalive_idle_time called");
    return NULL;
}

void* nw_parameters_set_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_parameters_set_keepalive_interval called");
    return NULL;
}

void* nw_parameters_set_keepalive_offload(void)
{
    if (verbose) puts("STUB: nw_parameters_set_keepalive_offload called");
    return NULL;
}

void* nw_parameters_set_local_address(void)
{
    if (verbose) puts("STUB: nw_parameters_set_local_address called");
    return NULL;
}

void* nw_parameters_set_local_address_preference(void)
{
    if (verbose) puts("STUB: nw_parameters_set_local_address_preference called");
    return NULL;
}

void* nw_parameters_set_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_parameters_set_local_endpoint called");
    return NULL;
}

void* nw_parameters_set_local_only(void)
{
    if (verbose) puts("STUB: nw_parameters_set_local_only called");
    return NULL;
}

void* nw_parameters_set_maximum_tls_protocol_version(void)
{
    if (verbose) puts("STUB: nw_parameters_set_maximum_tls_protocol_version called");
    return NULL;
}

void* nw_parameters_set_metadata(void)
{
    if (verbose) puts("STUB: nw_parameters_set_metadata called");
    return NULL;
}

void* nw_parameters_set_minimum_tls_protocol_version(void)
{
    if (verbose) puts("STUB: nw_parameters_set_minimum_tls_protocol_version called");
    return NULL;
}

void* nw_parameters_set_multipath(void)
{
    if (verbose) puts("STUB: nw_parameters_set_multipath called");
    return NULL;
}

void* nw_parameters_set_multipath_force_enable(void)
{
    if (verbose) puts("STUB: nw_parameters_set_multipath_force_enable called");
    return NULL;
}

void* nw_parameters_set_multipath_service(void)
{
    if (verbose) puts("STUB: nw_parameters_set_multipath_service called");
    return NULL;
}

void* nw_parameters_set_no_cellular_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_cellular_fallback called");
    return NULL;
}

void* nw_parameters_set_no_delay(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_delay called");
    return NULL;
}

void* nw_parameters_set_no_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_fallback called");
    return NULL;
}

void* nw_parameters_set_no_fullstack_fallback(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_fullstack_fallback called");
    return NULL;
}

void* nw_parameters_set_no_opaque_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_opaque_proxy called");
    return NULL;
}

void* nw_parameters_set_no_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_proxy called");
    return NULL;
}

void* nw_parameters_set_no_proxy_path_selection(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_proxy_path_selection called");
    return NULL;
}

void* nw_parameters_set_no_transform(void)
{
    if (verbose) puts("STUB: nw_parameters_set_no_transform called");
    return NULL;
}

void* nw_parameters_set_only_primary_requires_type(void)
{
    if (verbose) puts("STUB: nw_parameters_set_only_primary_requires_type called");
    return NULL;
}

void* nw_parameters_set_parent_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_parent_id called");
    return NULL;
}

void* nw_parameters_set_pid(void)
{
    if (verbose) puts("STUB: nw_parameters_set_pid called");
    return NULL;
}

void* nw_parameters_set_prefer_no_proxy(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prefer_no_proxy called");
    return NULL;
}

void* nw_parameters_set_preferred_netagent_classes(void)
{
    if (verbose) puts("STUB: nw_parameters_set_preferred_netagent_classes called");
    return NULL;
}

void* nw_parameters_set_preferred_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_set_preferred_netagent_uuids called");
    return NULL;
}

void* nw_parameters_set_proc_uuid(void)
{
    if (verbose) puts("STUB: nw_parameters_set_proc_uuid called");
    return NULL;
}

void* nw_parameters_set_prohibit_constrained(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibit_constrained called");
    return NULL;
}

void* nw_parameters_set_prohibit_expensive(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibit_expensive called");
    return NULL;
}

void* nw_parameters_set_prohibit_joining_protocols(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibit_joining_protocols called");
    return NULL;
}

void* nw_parameters_set_prohibit_roaming(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibit_roaming called");
    return NULL;
}

void* nw_parameters_set_prohibited_interface_subtypes(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibited_interface_subtypes called");
    return NULL;
}

void* nw_parameters_set_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibited_interface_types called");
    return NULL;
}

void* nw_parameters_set_prohibited_interfaces(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibited_interfaces called");
    return NULL;
}

void* nw_parameters_set_prohibited_netagent_classes(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibited_netagent_classes called");
    return NULL;
}

void* nw_parameters_set_prohibited_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_set_prohibited_netagent_uuids called");
    return NULL;
}

void* nw_parameters_set_protocol_instance(void)
{
    if (verbose) puts("STUB: nw_parameters_set_protocol_instance called");
    return NULL;
}

void* nw_parameters_set_protocol_value(void)
{
    if (verbose) puts("STUB: nw_parameters_set_protocol_value called");
    return NULL;
}

void* nw_parameters_set_proxy_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_proxy_bundle_id called");
    return NULL;
}

void* nw_parameters_set_proxy_configuration(void)
{
    if (verbose) puts("STUB: nw_parameters_set_proxy_configuration called");
    return NULL;
}

void* nw_parameters_set_receive_any_interface(void)
{
    if (verbose) puts("STUB: nw_parameters_set_receive_any_interface called");
    return NULL;
}

void* nw_parameters_set_reduce_buffering(void)
{
    if (verbose) puts("STUB: nw_parameters_set_reduce_buffering called");
    return NULL;
}

void* nw_parameters_set_required_address_family(void)
{
    if (verbose) puts("STUB: nw_parameters_set_required_address_family called");
    return NULL;
}

void* nw_parameters_set_required_interface_subtype(void)
{
    if (verbose) puts("STUB: nw_parameters_set_required_interface_subtype called");
    return NULL;
}

void* nw_parameters_set_required_interface_type(void)
{
    if (verbose) puts("STUB: nw_parameters_set_required_interface_type called");
    return NULL;
}

void* nw_parameters_set_required_netagent_classes(void)
{
    if (verbose) puts("STUB: nw_parameters_set_required_netagent_classes called");
    return NULL;
}

void* nw_parameters_set_required_netagent_uuids(void)
{
    if (verbose) puts("STUB: nw_parameters_set_required_netagent_uuids called");
    return NULL;
}

void* nw_parameters_set_resolve_ptr(void)
{
    if (verbose) puts("STUB: nw_parameters_set_resolve_ptr called");
    return NULL;
}

void* nw_parameters_set_reuse_local_address(void)
{
    if (verbose) puts("STUB: nw_parameters_set_reuse_local_address called");
    return NULL;
}

void* nw_parameters_set_server_mode(void)
{
    if (verbose) puts("STUB: nw_parameters_set_server_mode called");
    return NULL;
}

void* nw_parameters_set_service_class(void)
{
    if (verbose) puts("STUB: nw_parameters_set_service_class called");
    return NULL;
}

void* nw_parameters_set_should_skip_probe_sampling(void)
{
    if (verbose) puts("STUB: nw_parameters_set_should_skip_probe_sampling called");
    return NULL;
}

void* nw_parameters_set_should_trust_invalid_certificates(void)
{
    if (verbose) puts("STUB: nw_parameters_set_should_trust_invalid_certificates called");
    return NULL;
}

void* nw_parameters_set_sleep_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_parameters_set_sleep_keepalive_interval called");
    return NULL;
}

void* nw_parameters_set_source_application(void)
{
    if (verbose) puts("STUB: nw_parameters_set_source_application called");
    return NULL;
}

void* nw_parameters_set_source_application_by_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_source_application_by_bundle_id called");
    return NULL;
}

void* nw_parameters_set_source_application_by_bundle_id_internal(void)
{
    if (verbose) puts("STUB: nw_parameters_set_source_application_by_bundle_id_internal called");
    return NULL;
}

void* nw_parameters_set_source_application_by_external_bundle_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_source_application_by_external_bundle_id called");
    return NULL;
}

void* nw_parameters_set_ssl_cipher_suites(void)
{
    if (verbose) puts("STUB: nw_parameters_set_ssl_cipher_suites called");
    return NULL;
}

void* nw_parameters_set_tfo(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tfo called");
    return NULL;
}

void* nw_parameters_set_tfo_no_cookie(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tfo_no_cookie called");
    return NULL;
}

void* nw_parameters_set_tls(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls called");
    return NULL;
}

void* nw_parameters_set_tls13_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls13_enabled called");
    return NULL;
}

void* nw_parameters_set_tls_enforce_ev(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls_enforce_ev called");
    return NULL;
}

void* nw_parameters_set_tls_experiments_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls_experiments_enabled called");
    return NULL;
}

void* nw_parameters_set_tls_session_id(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls_session_id called");
    return NULL;
}

void* nw_parameters_set_tls_session_ticket_enabled(void)
{
    if (verbose) puts("STUB: nw_parameters_set_tls_session_ticket_enabled called");
    return NULL;
}

void* nw_parameters_set_traffic_class(void)
{
    if (verbose) puts("STUB: nw_parameters_set_traffic_class called");
    return NULL;
}

void* nw_parameters_set_transform_array(void)
{
    if (verbose) puts("STUB: nw_parameters_set_transform_array called");
    return NULL;
}

void* nw_parameters_set_uid(void)
{
    if (verbose) puts("STUB: nw_parameters_set_uid called");
    return NULL;
}

void* nw_parameters_set_url(void)
{
    if (verbose) puts("STUB: nw_parameters_set_url called");
    return NULL;
}

void* nw_parameters_set_url_endpoint(void)
{
    if (verbose) puts("STUB: nw_parameters_set_url_endpoint called");
    return NULL;
}

void* nw_parameters_set_use_awdl(void)
{
    if (verbose) puts("STUB: nw_parameters_set_use_awdl called");
    return NULL;
}

void* nw_parameters_set_use_long_outstanding_queries(void)
{
    if (verbose) puts("STUB: nw_parameters_set_use_long_outstanding_queries called");
    return NULL;
}

void* nw_parameters_set_use_p2p(void)
{
    if (verbose) puts("STUB: nw_parameters_set_use_p2p called");
    return NULL;
}

void* nw_parameters_set_use_tfo_heuristics(void)
{
    if (verbose) puts("STUB: nw_parameters_set_use_tfo_heuristics called");
    return NULL;
}

void* nw_path_allows_multipath(void)
{
    if (verbose) puts("STUB: nw_path_allows_multipath called");
    return NULL;
}

void* nw_path_assert_agent(void)
{
    if (verbose) puts("STUB: nw_path_assert_agent called");
    return NULL;
}

void* nw_path_assert_required_agents(void)
{
    if (verbose) puts("STUB: nw_path_assert_required_agents called");
    return NULL;
}

void* nw_path_can_resolve_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_can_resolve_endpoint called");
    return NULL;
}

void* nw_path_can_support_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_can_support_endpoint called");
    return NULL;
}

void* nw_path_changed_from_previous(void)
{
    if (verbose) puts("STUB: nw_path_changed_from_previous called");
    return NULL;
}

void* nw_path_copy_advertise_descriptor(void)
{
    if (verbose) puts("STUB: nw_path_copy_advertise_descriptor called");
    return NULL;
}

void* nw_path_copy_all_client_ids(void)
{
    if (verbose) puts("STUB: nw_path_copy_all_client_ids called");
    return NULL;
}

void* nw_path_copy_all_local_paths(void)
{
    if (verbose) puts("STUB: nw_path_copy_all_local_paths called");
    return NULL;
}

void* nw_path_copy_browse_descriptor(void)
{
    if (verbose) puts("STUB: nw_path_copy_browse_descriptor called");
    return NULL;
}

void* nw_path_copy_connected_interface(void)
{
    if (verbose) puts("STUB: nw_path_copy_connected_interface called");
    return NULL;
}

void* nw_path_copy_delegate_interface(void)
{
    if (verbose) puts("STUB: nw_path_copy_delegate_interface called");
    return NULL;
}

void* nw_path_copy_derived_parameters(void)
{
    if (verbose) puts("STUB: nw_path_copy_derived_parameters called");
    return NULL;
}

void* nw_path_copy_description(void)
{
    if (verbose) puts("STUB: nw_path_copy_description called");
    return NULL;
}

void* nw_path_copy_direct_interface(void)
{
    if (verbose) puts("STUB: nw_path_copy_direct_interface called");
    return NULL;
}

void* nw_path_copy_discovered_endpoints(void)
{
    if (verbose) puts("STUB: nw_path_copy_discovered_endpoints called");
    return NULL;
}

void* nw_path_copy_effective_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_copy_effective_local_endpoint called");
    return NULL;
}

void* nw_path_copy_effective_remote_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_copy_effective_remote_endpoint called");
    return NULL;
}

void* nw_path_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_copy_endpoint called");
    return NULL;
}

void* nw_path_copy_endpoint_from_tlv(void)
{
    if (verbose) puts("STUB: nw_path_copy_endpoint_from_tlv called");
    return NULL;
}

void* nw_path_copy_flow_divert_token(void)
{
    if (verbose) puts("STUB: nw_path_copy_flow_divert_token called");
    return NULL;
}

void* nw_path_copy_flow_registration(void)
{
    if (verbose) puts("STUB: nw_path_copy_flow_registration called");
    return NULL;
}

void* nw_path_copy_flows(void)
{
    if (verbose) puts("STUB: nw_path_copy_flows called");
    return NULL;
}

void* nw_path_copy_for_flow_registration(void)
{
    if (verbose) puts("STUB: nw_path_copy_for_flow_registration called");
    return NULL;
}

void* nw_path_copy_gateways(void)
{
    if (verbose) puts("STUB: nw_path_copy_gateways called");
    return NULL;
}

void* nw_path_copy_inactive_agent_uuids(void)
{
    if (verbose) puts("STUB: nw_path_copy_inactive_agent_uuids called");
    return NULL;
}

void* nw_path_copy_interface(void)
{
    if (verbose) puts("STUB: nw_path_copy_interface called");
    return NULL;
}

void* nw_path_copy_interface_from_cache(void)
{
    if (verbose) puts("STUB: nw_path_copy_interface_from_cache called");
    return NULL;
}

void* nw_path_copy_netagent_dictionary(void)
{
    if (verbose) puts("STUB: nw_path_copy_netagent_dictionary called");
    return NULL;
}

void* nw_path_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_path_copy_parameters called");
    return NULL;
}

void* nw_path_copy_path_for_client(void)
{
    if (verbose) puts("STUB: nw_path_copy_path_for_client called");
    return NULL;
}

void* nw_path_copy_proxy_settings(void)
{
    if (verbose) puts("STUB: nw_path_copy_proxy_settings called");
    return NULL;
}

void* nw_path_copy_resolved_endpoints(void)
{
    if (verbose) puts("STUB: nw_path_copy_resolved_endpoints called");
    return NULL;
}

void* nw_path_copy_scoped_interface(void)
{
    if (verbose) puts("STUB: nw_path_copy_scoped_interface called");
    return NULL;
}

void* nw_path_create_assign_message(void)
{
    if (verbose) puts("STUB: nw_path_create_assign_message called");
    return NULL;
}

void* nw_path_create_browse_result(void)
{
    if (verbose) puts("STUB: nw_path_create_browse_result called");
    return NULL;
}

void* nw_path_create_default_evaluator(void)
{
    if (verbose) puts("STUB: nw_path_create_default_evaluator called");
    return NULL;
}

void* nw_path_create_evaluator_for_advertise(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_advertise called");
    return NULL;
}

void* nw_path_create_evaluator_for_browse(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_browse called");
    return NULL;
}

void* nw_path_create_evaluator_for_client_id(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_client_id called");
    return NULL;
}

void* nw_path_create_evaluator_for_custom_ether(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_custom_ether called");
    return NULL;
}

void* nw_path_create_evaluator_for_custom_ip(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_custom_ip called");
    return NULL;
}

void* nw_path_create_evaluator_for_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_endpoint called");
    return NULL;
}

void* nw_path_create_evaluator_for_interpose(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_interpose called");
    return NULL;
}

void* nw_path_create_evaluator_for_listener(void)
{
    if (verbose) puts("STUB: nw_path_create_evaluator_for_listener called");
    return NULL;
}

void* nw_path_create_from_tlv(void)
{
    if (verbose) puts("STUB: nw_path_create_from_tlv called");
    return NULL;
}

void* nw_path_create_necp_parameters(void)
{
    if (verbose) puts("STUB: nw_path_create_necp_parameters called");
    return NULL;
}

void* nw_path_create_observer(void)
{
    if (verbose) puts("STUB: nw_path_create_observer called");
    return NULL;
}

void* nw_path_create_resolve_result(void)
{
    if (verbose) puts("STUB: nw_path_create_resolve_result called");
    return NULL;
}

void* nw_path_create_static(void)
{
    if (verbose) puts("STUB: nw_path_create_static called");
    return NULL;
}

void* nw_path_endpoint_is_always_satisfied(void)
{
    if (verbose) puts("STUB: nw_path_endpoint_is_always_satisfied called");
    return NULL;
}

void* nw_path_enumerate_browse_options(void)
{
    if (verbose) puts("STUB: nw_path_enumerate_browse_options called");
    return NULL;
}

void* nw_path_enumerate_gateways(void)
{
    if (verbose) puts("STUB: nw_path_enumerate_gateways called");
    return NULL;
}

void* nw_path_enumerate_interface_options(void)
{
    if (verbose) puts("STUB: nw_path_enumerate_interface_options called");
    return NULL;
}

void* nw_path_enumerate_interfaces(void)
{
    if (verbose) puts("STUB: nw_path_enumerate_interfaces called");
    return NULL;
}

void* nw_path_enumerate_resolve_options(void)
{
    if (verbose) puts("STUB: nw_path_enumerate_resolve_options called");
    return NULL;
}

void* nw_path_evaluator_add_endpoint_to_necp_message(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_add_endpoint_to_necp_message called");
    return NULL;
}

void* nw_path_evaluator_cancel(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_cancel called");
    return NULL;
}

void* nw_path_evaluator_copy_description(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_copy_description called");
    return NULL;
}

void* nw_path_evaluator_copy_path(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_copy_path called");
    return NULL;
}

void* nw_path_evaluator_create_flow(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_create_flow called");
    return NULL;
}

void* nw_path_evaluator_force_update(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_force_update called");
    return NULL;
}

void* nw_path_evaluator_get_client_id(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_get_client_id called");
    return NULL;
}

void* nw_path_evaluator_get_error_string(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_get_error_string called");
    return NULL;
}

void* nw_path_evaluator_request_nexus(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_request_nexus called");
    return NULL;
}

void* nw_path_evaluator_set_cancel_handler(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_set_cancel_handler called");
    return NULL;
}

void* nw_path_evaluator_set_queue(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_set_queue called");
    return NULL;
}

void* nw_path_evaluator_set_update_handler(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_set_update_handler called");
    return NULL;
}

void* nw_path_evaluator_start(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_start called");
    return NULL;
}

void* nw_path_evaluator_trigger_agents(void)
{
    if (verbose) puts("STUB: nw_path_evaluator_trigger_agents called");
    return NULL;
}

void* nw_path_fallback_is_forced(void)
{
    if (verbose) puts("STUB: nw_path_fallback_is_forced called");
    return NULL;
}

void* nw_path_fallback_is_weak(void)
{
    if (verbose) puts("STUB: nw_path_fallback_is_weak called");
    return NULL;
}

void* nw_path_fallback_should_not_use_timer(void)
{
    if (verbose) puts("STUB: nw_path_fallback_should_not_use_timer called");
    return NULL;
}

void* nw_path_fillout_route_stats(void)
{
    if (verbose) puts("STUB: nw_path_fillout_route_stats called");
    return NULL;
}

void* nw_path_flow_copy_description(void)
{
    if (verbose) puts("STUB: nw_path_flow_copy_description called");
    return NULL;
}

void* nw_path_flow_copy_interface(void)
{
    if (verbose) puts("STUB: nw_path_flow_copy_interface called");
    return NULL;
}

void* nw_path_flow_copy_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_flow_copy_local_endpoint called");
    return NULL;
}

void* nw_path_flow_copy_remote_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_flow_copy_remote_endpoint called");
    return NULL;
}

void* nw_path_flow_create(void)
{
    if (verbose) puts("STUB: nw_path_flow_create called");
    return NULL;
}

void* nw_path_flow_ecn_enabled(void)
{
    if (verbose) puts("STUB: nw_path_flow_ecn_enabled called");
    return NULL;
}

void* nw_path_flow_fast_open_blocked(void)
{
    if (verbose) puts("STUB: nw_path_flow_fast_open_blocked called");
    return NULL;
}

void* nw_path_flow_get_id(void)
{
    if (verbose) puts("STUB: nw_path_flow_get_id called");
    return NULL;
}

void* nw_path_flow_get_nexus_agent_uuid(void)
{
    if (verbose) puts("STUB: nw_path_flow_get_nexus_agent_uuid called");
    return NULL;
}

void* nw_path_flow_get_nexus_instance(void)
{
    if (verbose) puts("STUB: nw_path_flow_get_nexus_instance called");
    return NULL;
}

void* nw_path_flow_get_nexus_key(void)
{
    if (verbose) puts("STUB: nw_path_flow_get_nexus_key called");
    return NULL;
}

void* nw_path_flow_has_ipv4(void)
{
    if (verbose) puts("STUB: nw_path_flow_has_ipv4 called");
    return NULL;
}

void* nw_path_flow_has_ipv6(void)
{
    if (verbose) puts("STUB: nw_path_flow_has_ipv6 called");
    return NULL;
}

void* nw_path_flow_ids_are_equal(void)
{
    if (verbose) puts("STUB: nw_path_flow_ids_are_equal called");
    return NULL;
}

void* nw_path_flow_is_assigned(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_assigned called");
    return NULL;
}

void* nw_path_flow_is_defunct(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_defunct called");
    return NULL;
}

void* nw_path_flow_is_direct(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_direct called");
    return NULL;
}

void* nw_path_flow_is_equal(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_equal called");
    return NULL;
}

void* nw_path_flow_is_local(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_local called");
    return NULL;
}

void* nw_path_flow_is_viable(void)
{
    if (verbose) puts("STUB: nw_path_flow_is_viable called");
    return NULL;
}

void* nw_path_flow_nexus_can_support_user_packet_pool(void)
{
    if (verbose) puts("STUB: nw_path_flow_nexus_can_support_user_packet_pool called");
    return NULL;
}

void* nw_path_flow_nexus_should_use_event_ring(void)
{
    if (verbose) puts("STUB: nw_path_flow_nexus_should_use_event_ring called");
    return NULL;
}

void* nw_path_flow_registration_access_interface_stats(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_access_interface_stats called");
    return NULL;
}

void* nw_path_flow_registration_clear_stats_regions(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_clear_stats_regions called");
    return NULL;
}

void* nw_path_flow_registration_close(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_close called");
    return NULL;
}

void* nw_path_flow_registration_copy_description(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_copy_description called");
    return NULL;
}

void* nw_path_flow_registration_ecn_enabled(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_ecn_enabled called");
    return NULL;
}

void* nw_path_flow_registration_fast_open_blocked(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_fast_open_blocked called");
    return NULL;
}

void* nw_path_flow_registration_get_advisory_region(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_advisory_region called");
    return NULL;
}

void* nw_path_flow_registration_get_ctl_command(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_ctl_command called");
    return NULL;
}

void* nw_path_flow_registration_get_id(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_id called");
    return NULL;
}

void* nw_path_flow_registration_get_nexus_flow_index(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_nexus_flow_index called");
    return NULL;
}

void* nw_path_flow_registration_get_nexus_instance(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_nexus_instance called");
    return NULL;
}

void* nw_path_flow_registration_get_nexus_key(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_nexus_key called");
    return NULL;
}

void* nw_path_flow_registration_get_partial_checksum_offload(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_partial_checksum_offload called");
    return NULL;
}

void* nw_path_flow_registration_get_stats_area(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_stats_area called");
    return NULL;
}

void* nw_path_flow_registration_get_stats_region(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_stats_region called");
    return NULL;
}

void* nw_path_flow_registration_get_tfo_cookie(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_tfo_cookie called");
    return NULL;
}

void* nw_path_flow_registration_get_tfo_cookie_len(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_get_tfo_cookie_len called");
    return NULL;
}

void* nw_path_flow_registration_override_interface_types(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_override_interface_types called");
    return NULL;
}

void* nw_path_flow_registration_override_traffic_class(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_override_traffic_class called");
    return NULL;
}

void* nw_path_flow_registration_set_advisory_region(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_set_advisory_region called");
    return NULL;
}

void* nw_path_flow_registration_set_ecn_cache(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_set_ecn_cache called");
    return NULL;
}

void* nw_path_flow_registration_set_partial_checksum_offload(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_set_partial_checksum_offload called");
    return NULL;
}

void* nw_path_flow_registration_set_stats_region(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_set_stats_region called");
    return NULL;
}

void* nw_path_flow_registration_set_tfo_cache(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_set_tfo_cache called");
    return NULL;
}

void* nw_path_flow_registration_uses_nexus(void)
{
    if (verbose) puts("STUB: nw_path_flow_registration_uses_nexus called");
    return NULL;
}

void* nw_path_get_client_id(void)
{
    if (verbose) puts("STUB: nw_path_get_client_id called");
    return NULL;
}

void* nw_path_get_connected_interface_index(void)
{
    if (verbose) puts("STUB: nw_path_get_connected_interface_index called");
    return NULL;
}

void* nw_path_get_custom_ethertype(void)
{
    if (verbose) puts("STUB: nw_path_get_custom_ethertype called");
    return NULL;
}

void* nw_path_get_dns_search_domains(void)
{
    if (verbose) puts("STUB: nw_path_get_dns_search_domains called");
    return NULL;
}

void* nw_path_get_dns_servers(void)
{
    if (verbose) puts("STUB: nw_path_get_dns_servers called");
    return NULL;
}

void* nw_path_get_dns_service_id(void)
{
    if (verbose) puts("STUB: nw_path_get_dns_service_id called");
    return NULL;
}

void* nw_path_get_effective_traffic_class(void)
{
    if (verbose) puts("STUB: nw_path_get_effective_traffic_class called");
    return NULL;
}

void* nw_path_get_fallback_agent(void)
{
    if (verbose) puts("STUB: nw_path_get_fallback_agent called");
    return NULL;
}

void* nw_path_get_fallback_generation(void)
{
    if (verbose) puts("STUB: nw_path_get_fallback_generation called");
    return NULL;
}

void* nw_path_get_fallback_interface_index(void)
{
    if (verbose) puts("STUB: nw_path_get_fallback_interface_index called");
    return NULL;
}

void* nw_path_get_filter_unit(void)
{
    if (verbose) puts("STUB: nw_path_get_filter_unit called");
    return NULL;
}

void* nw_path_get_flow_divert_unit(void)
{
    if (verbose) puts("STUB: nw_path_get_flow_divert_unit called");
    return NULL;
}

void* nw_path_get_interface_index(void)
{
    if (verbose) puts("STUB: nw_path_get_interface_index called");
    return NULL;
}

void* nw_path_get_interface_option_count(void)
{
    if (verbose) puts("STUB: nw_path_get_interface_option_count called");
    return NULL;
}

void* nw_path_get_interface_time_delta(void)
{
    if (verbose) puts("STUB: nw_path_get_interface_time_delta called");
    return NULL;
}

void* nw_path_get_ipv4_network_signature(void)
{
    if (verbose) puts("STUB: nw_path_get_ipv4_network_signature called");
    return NULL;
}

void* nw_path_get_ipv6_network_signature(void)
{
    if (verbose) puts("STUB: nw_path_get_ipv6_network_signature called");
    return NULL;
}

void* nw_path_get_maximum_datagram_size(void)
{
    if (verbose) puts("STUB: nw_path_get_maximum_datagram_size called");
    return NULL;
}

void* nw_path_get_maximum_packet_size(void)
{
    if (verbose) puts("STUB: nw_path_get_maximum_packet_size called");
    return NULL;
}

void* nw_path_get_mtu(void)
{
    if (verbose) puts("STUB: nw_path_get_mtu called");
    return NULL;
}

void* nw_path_get_nexus_agent_uuid(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_agent_uuid called");
    return NULL;
}

void* nw_path_get_nexus_agent_uuid_check_assertion(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_agent_uuid_check_assertion called");
    return NULL;
}

void* nw_path_get_nexus_flow_index(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_flow_index called");
    return NULL;
}

void* nw_path_get_nexus_instance(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_instance called");
    return NULL;
}

void* nw_path_get_nexus_key(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_key called");
    return NULL;
}

void* nw_path_get_nexus_protocol_level(void)
{
    if (verbose) puts("STUB: nw_path_get_nexus_protocol_level called");
    return NULL;
}

void* nw_path_get_policy_id(void)
{
    if (verbose) puts("STUB: nw_path_get_policy_id called");
    return NULL;
}

void* nw_path_get_private_dns_config_id(void)
{
    if (verbose) puts("STUB: nw_path_get_private_dns_config_id called");
    return NULL;
}

void* nw_path_get_reason(void)
{
    if (verbose) puts("STUB: nw_path_get_reason called");
    return NULL;
}

void* nw_path_get_reason_description(void)
{
    if (verbose) puts("STUB: nw_path_get_reason_description called");
    return NULL;
}

void* nw_path_get_recommended_mss(void)
{
    if (verbose) puts("STUB: nw_path_get_recommended_mss called");
    return NULL;
}

void* nw_path_get_rtt_values(void)
{
    if (verbose) puts("STUB: nw_path_get_rtt_values called");
    return NULL;
}

void* nw_path_get_scoped_interface_index(void)
{
    if (verbose) puts("STUB: nw_path_get_scoped_interface_index called");
    return NULL;
}

void* nw_path_get_status(void)
{
    if (verbose) puts("STUB: nw_path_get_status called");
    return NULL;
}

void* nw_path_get_sysctls_region(void)
{
    if (verbose) puts("STUB: nw_path_get_sysctls_region called");
    return NULL;
}

void* nw_path_get_vpn_config_id(void)
{
    if (verbose) puts("STUB: nw_path_get_vpn_config_id called");
    return NULL;
}

void* nw_path_has_advertise_descriptor(void)
{
    if (verbose) puts("STUB: nw_path_has_advertise_descriptor called");
    return NULL;
}

void* nw_path_has_browse_descriptor(void)
{
    if (verbose) puts("STUB: nw_path_has_browse_descriptor called");
    return NULL;
}

void* nw_path_has_dns(void)
{
    if (verbose) puts("STUB: nw_path_has_dns called");
    return NULL;
}

void* nw_path_has_flow_for_nexus_agent(void)
{
    if (verbose) puts("STUB: nw_path_has_flow_for_nexus_agent called");
    return NULL;
}

void* nw_path_has_ipv4(void)
{
    if (verbose) puts("STUB: nw_path_has_ipv4 called");
    return NULL;
}

void* nw_path_has_ipv6(void)
{
    if (verbose) puts("STUB: nw_path_has_ipv6 called");
    return NULL;
}

void* nw_path_has_proxy_settings(void)
{
    if (verbose) puts("STUB: nw_path_has_proxy_settings called");
    return NULL;
}

void* nw_path_has_unsatisfied_cellular_agent(void)
{
    if (verbose) puts("STUB: nw_path_has_unsatisfied_cellular_agent called");
    return NULL;
}

void* nw_path_has_unsatisfied_fallback_agent(void)
{
    if (verbose) puts("STUB: nw_path_has_unsatisfied_fallback_agent called");
    return NULL;
}

void* nw_path_has_unsatisfied_route(void)
{
    if (verbose) puts("STUB: nw_path_has_unsatisfied_route called");
    return NULL;
}

void* nw_path_increment_agent_use_count(void)
{
    if (verbose) puts("STUB: nw_path_increment_agent_use_count called");
    return NULL;
}

void* nw_path_ipv4_default_address(void)
{
    if (verbose) puts("STUB: nw_path_ipv4_default_address called");
    return NULL;
}

void* nw_path_ipv6_default_address(void)
{
    if (verbose) puts("STUB: nw_path_ipv6_default_address called");
    return NULL;
}

void* nw_path_is_constrained(void)
{
    if (verbose) puts("STUB: nw_path_is_constrained called");
    return NULL;
}

void* nw_path_is_defunct(void)
{
    if (verbose) puts("STUB: nw_path_is_defunct called");
    return NULL;
}

void* nw_path_is_direct(void)
{
    if (verbose) puts("STUB: nw_path_is_direct called");
    return NULL;
}

void* nw_path_is_eligible_for_CrazyIvan46(void)
{
    if (verbose) puts("STUB: nw_path_is_eligible_for_CrazyIvan46 called");
    return NULL;
}

void* nw_path_is_equal(void)
{
    if (verbose) puts("STUB: nw_path_is_equal called");
    return NULL;
}

void* nw_path_is_equal_inner(void)
{
    if (verbose) puts("STUB: nw_path_is_equal_inner called");
    return NULL;
}

void* nw_path_is_expensive(void)
{
    if (verbose) puts("STUB: nw_path_is_expensive called");
    return NULL;
}

void* nw_path_is_flow_divert(void)
{
    if (verbose) puts("STUB: nw_path_is_flow_divert called");
    return NULL;
}

void* nw_path_is_listener(void)
{
    if (verbose) puts("STUB: nw_path_is_listener called");
    return NULL;
}

void* nw_path_is_local(void)
{
    if (verbose) puts("STUB: nw_path_is_local called");
    return NULL;
}

void* nw_path_is_multilayer_packet_logging_enabled(void)
{
    if (verbose) puts("STUB: nw_path_is_multilayer_packet_logging_enabled called");
    return NULL;
}

void* nw_path_is_override_constrained(void)
{
    if (verbose) puts("STUB: nw_path_is_override_constrained called");
    return NULL;
}

void* nw_path_is_override_expensive(void)
{
    if (verbose) puts("STUB: nw_path_is_override_expensive called");
    return NULL;
}

void* nw_path_is_per_app_vpn(void)
{
    if (verbose) puts("STUB: nw_path_is_per_app_vpn called");
    return NULL;
}

void* nw_path_is_preferred(void)
{
    if (verbose) puts("STUB: nw_path_is_preferred called");
    return NULL;
}

void* nw_path_is_roaming(void)
{
    if (verbose) puts("STUB: nw_path_is_roaming called");
    return NULL;
}

void* nw_path_is_traffic_mgmt_background(void)
{
    if (verbose) puts("STUB: nw_path_is_traffic_mgmt_background called");
    return NULL;
}

void* nw_path_is_tunnelled(void)
{
    if (verbose) puts("STUB: nw_path_is_tunnelled called");
    return NULL;
}

void* nw_path_is_viable(void)
{
    if (verbose) puts("STUB: nw_path_is_viable called");
    return NULL;
}

void* nw_path_link_quality_abort(void)
{
    if (verbose) puts("STUB: nw_path_link_quality_abort called");
    return NULL;
}

void* nw_path_listener_is_interface_specific(void)
{
    if (verbose) puts("STUB: nw_path_listener_is_interface_specific called");
    return NULL;
}

void* nw_path_listener_uses_nexus_only(void)
{
    if (verbose) puts("STUB: nw_path_listener_uses_nexus_only called");
    return NULL;
}

void* nw_path_may_span_multiple_interfaces(void)
{
    if (verbose) puts("STUB: nw_path_may_span_multiple_interfaces called");
    return NULL;
}

void* nw_path_monitor_cancel(void)
{
    if (verbose) puts("STUB: nw_path_monitor_cancel called");
    return NULL;
}

void* nw_path_monitor_create(void)
{
    if (verbose) puts("STUB: nw_path_monitor_create called");
    return NULL;
}

void* nw_path_monitor_create_with_type(void)
{
    if (verbose) puts("STUB: nw_path_monitor_create_with_type called");
    return NULL;
}

void* nw_path_monitor_set_cancel_handler(void)
{
    if (verbose) puts("STUB: nw_path_monitor_set_cancel_handler called");
    return NULL;
}

void* nw_path_monitor_set_queue(void)
{
    if (verbose) puts("STUB: nw_path_monitor_set_queue called");
    return NULL;
}

void* nw_path_monitor_set_update_handler(void)
{
    if (verbose) puts("STUB: nw_path_monitor_set_update_handler called");
    return NULL;
}

void* nw_path_monitor_start(void)
{
    if (verbose) puts("STUB: nw_path_monitor_start called");
    return NULL;
}

void* nw_path_nexus_can_support_user_packet_pool(void)
{
    if (verbose) puts("STUB: nw_path_nexus_can_support_user_packet_pool called");
    return NULL;
}

void* nw_path_nexus_should_use_event_ring(void)
{
    if (verbose) puts("STUB: nw_path_nexus_should_use_event_ring called");
    return NULL;
}

void* nw_path_observer_cancel(void)
{
    if (verbose) puts("STUB: nw_path_observer_cancel called");
    return NULL;
}

void* nw_path_override_interface(void)
{
    if (verbose) puts("STUB: nw_path_override_interface called");
    return NULL;
}

void* nw_path_override_local_endpoint(void)
{
    if (verbose) puts("STUB: nw_path_override_local_endpoint called");
    return NULL;
}

void* nw_path_override_viable(void)
{
    if (verbose) puts("STUB: nw_path_override_viable called");
    return NULL;
}

void* nw_path_parameters_are_equal(void)
{
    if (verbose) puts("STUB: nw_path_parameters_are_equal called");
    return NULL;
}

void* nw_path_parameters_copy_context(void)
{
    if (verbose) puts("STUB: nw_path_parameters_copy_context called");
    return NULL;
}

void* nw_path_parameters_get_context_privacy_level(void)
{
    if (verbose) puts("STUB: nw_path_parameters_get_context_privacy_level called");
    return NULL;
}

void* nw_path_parameters_get_hash(void)
{
    if (verbose) puts("STUB: nw_path_parameters_get_hash called");
    return NULL;
}

void* nw_path_parent_has_forked(void)
{
    if (verbose) puts("STUB: nw_path_parent_has_forked called");
    return NULL;
}

void* nw_path_parse_necp_parameters(void)
{
    if (verbose) puts("STUB: nw_path_parse_necp_parameters called");
    return NULL;
}

void* nw_path_prepare_fork(void)
{
    if (verbose) puts("STUB: nw_path_prepare_fork called");
    return NULL;
}

void* nw_path_request_nexus(void)
{
    if (verbose) puts("STUB: nw_path_request_nexus called");
    return NULL;
}

void* nw_path_set_proxy_settings(void)
{
    if (verbose) puts("STUB: nw_path_set_proxy_settings called");
    return NULL;
}

void* nw_path_set_reason(void)
{
    if (verbose) puts("STUB: nw_path_set_reason called");
    return NULL;
}

void* nw_path_should_fallback(void)
{
    if (verbose) puts("STUB: nw_path_should_fallback called");
    return NULL;
}

void* nw_path_should_probe_connectivity(void)
{
    if (verbose) puts("STUB: nw_path_should_probe_connectivity called");
    return NULL;
}

void* nw_path_should_transform(void)
{
    if (verbose) puts("STUB: nw_path_should_transform called");
    return NULL;
}

void* nw_path_should_use_proxy(void)
{
    if (verbose) puts("STUB: nw_path_should_use_proxy called");
    return NULL;
}

void* nw_path_status_get_description(void)
{
    if (verbose) puts("STUB: nw_path_status_get_description called");
    return NULL;
}

void* nw_path_supports_browse(void)
{
    if (verbose) puts("STUB: nw_path_supports_browse called");
    return NULL;
}

void* nw_path_trigger_agent(void)
{
    if (verbose) puts("STUB: nw_path_trigger_agent called");
    return NULL;
}

void* nw_path_trigger_inactive_cellular_agent_if_necessary(void)
{
    if (verbose) puts("STUB: nw_path_trigger_inactive_cellular_agent_if_necessary called");
    return NULL;
}

void* nw_path_unassert_agent(void)
{
    if (verbose) puts("STUB: nw_path_unassert_agent called");
    return NULL;
}

void* nw_path_update_parameters_for_fallback(void)
{
    if (verbose) puts("STUB: nw_path_update_parameters_for_fallback called");
    return NULL;
}

void* nw_path_uses_interface_subtype(void)
{
    if (verbose) puts("STUB: nw_path_uses_interface_subtype called");
    return NULL;
}

void* nw_path_uses_interface_type(void)
{
    if (verbose) puts("STUB: nw_path_uses_interface_type called");
    return NULL;
}

void* nw_path_uses_nexus(void)
{
    if (verbose) puts("STUB: nw_path_uses_nexus called");
    return NULL;
}

void* nw_path_voluntary_agent_matches_address(void)
{
    if (verbose) puts("STUB: nw_path_voluntary_agent_matches_address called");
    return NULL;
}

void* nw_protocol_can_join_existing(void)
{
    if (verbose) puts("STUB: nw_protocol_can_join_existing called");
    return NULL;
}

void* nw_protocol_copy_ip_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_ip_definition called");
    return NULL;
}

void* nw_protocol_copy_quic_connection_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_quic_connection_definition called");
    return NULL;
}

void* nw_protocol_copy_quic_stream_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_quic_stream_definition called");
    return NULL;
}

void* nw_protocol_copy_subdata(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_subdata called");
    return NULL;
}

void* nw_protocol_copy_superdata(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_superdata called");
    return NULL;
}

void* nw_protocol_copy_tcp_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_tcp_definition called");
    return NULL;
}

void* nw_protocol_copy_tls_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_tls_definition called");
    return NULL;
}

void* nw_protocol_copy_udp_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_udp_definition called");
    return NULL;
}

void* nw_protocol_copy_ws_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_copy_ws_definition called");
    return NULL;
}

void* nw_protocol_create(void)
{
    if (verbose) puts("STUB: nw_protocol_create called");
    return NULL;
}

void* nw_protocol_create_inbound_data(void)
{
    if (verbose) puts("STUB: nw_protocol_create_inbound_data called");
    return NULL;
}

void* nw_protocol_create_options(void)
{
    if (verbose) puts("STUB: nw_protocol_create_options called");
    return NULL;
}

void* nw_protocol_data_access_buffer(void)
{
    if (verbose) puts("STUB: nw_protocol_data_access_buffer called");
    return NULL;
}

void* nw_protocol_data_array_append(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_append called");
    return NULL;
}

void* nw_protocol_data_array_apply(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_apply called");
    return NULL;
}

void* nw_protocol_data_array_apppend_array(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_apppend_array called");
    return NULL;
}

void* nw_protocol_data_array_count(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_count called");
    return NULL;
}

void* nw_protocol_data_array_create(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_create called");
    return NULL;
}

void* nw_protocol_data_array_data_length(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_data_length called");
    return NULL;
}

void* nw_protocol_data_array_first(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_first called");
    return NULL;
}

void* nw_protocol_data_array_insert_after(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_insert_after called");
    return NULL;
}

void* nw_protocol_data_array_is_empty(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_is_empty called");
    return NULL;
}

void* nw_protocol_data_array_last(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_last called");
    return NULL;
}

void* nw_protocol_data_array_next(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_next called");
    return NULL;
}

void* nw_protocol_data_array_prepend(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_prepend called");
    return NULL;
}

void* nw_protocol_data_array_prepend_array(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_prepend_array called");
    return NULL;
}

void* nw_protocol_data_array_remove(void)
{
    if (verbose) puts("STUB: nw_protocol_data_array_remove called");
    return NULL;
}

void* nw_protocol_data_get_size(void)
{
    if (verbose) puts("STUB: nw_protocol_data_get_size called");
    return NULL;
}

void* nw_protocol_data_is_in_array(void)
{
    if (verbose) puts("STUB: nw_protocol_data_is_in_array called");
    return NULL;
}

void* nw_protocol_data_trim(void)
{
    if (verbose) puts("STUB: nw_protocol_data_trim called");
    return NULL;
}

void* nw_protocol_definition_create(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_create called");
    return NULL;
}

void* nw_protocol_definition_create_named(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_create_named called");
    return NULL;
}

void* nw_protocol_definition_create_with_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_create_with_identifier called");
    return NULL;
}

void* nw_protocol_definition_get_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_get_identifier called");
    return NULL;
}

void* nw_protocol_definition_get_variant(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_get_variant called");
    return NULL;
}

void* nw_protocol_definition_is_equal(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_is_equal called");
    return NULL;
}

void* nw_protocol_definition_register(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_register called");
    return NULL;
}

void* nw_protocol_definition_set_cache_entry_deallocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_cache_entry_deallocator called");
    return NULL;
}

void* nw_protocol_definition_set_copy_establishment_report(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_copy_establishment_report called");
    return NULL;
}

void* nw_protocol_definition_set_copy_metadata(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_copy_metadata called");
    return NULL;
}

void* nw_protocol_definition_set_custom_flow_map_key_size(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_custom_flow_map_key_size called");
    return NULL;
}

void* nw_protocol_definition_set_destroy(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_destroy called");
    return NULL;
}

void* nw_protocol_definition_set_flow_state_allocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_flow_state_allocator called");
    return NULL;
}

void* nw_protocol_definition_set_globals_allocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_globals_allocator called");
    return NULL;
}

void* nw_protocol_definition_set_handle_error(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_handle_error called");
    return NULL;
}

void* nw_protocol_definition_set_handle_inbound(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_handle_inbound called");
    return NULL;
}

void* nw_protocol_definition_set_handle_outbound(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_handle_outbound called");
    return NULL;
}

void* nw_protocol_definition_set_inbound_events(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_inbound_events called");
    return NULL;
}

void* nw_protocol_definition_set_initialize(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_initialize called");
    return NULL;
}

void* nw_protocol_definition_set_instance_state_allocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_instance_state_allocator called");
    return NULL;
}

void* nw_protocol_definition_set_link_state_update(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_link_state_update called");
    return NULL;
}

void* nw_protocol_definition_set_metadata_allocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_metadata_allocator called");
    return NULL;
}

void* nw_protocol_definition_set_metadata_copy_message_options(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_metadata_copy_message_options called");
    return NULL;
}

void* nw_protocol_definition_set_metadata_copy_reply(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_metadata_copy_reply called");
    return NULL;
}

void* nw_protocol_definition_set_options_allocator(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_options_allocator called");
    return NULL;
}

void* nw_protocol_definition_set_options_equality_check(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_options_equality_check called");
    return NULL;
}

void* nw_protocol_definition_set_outbound_events(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_outbound_events called");
    return NULL;
}

void* nw_protocol_definition_set_should_flush_cache_entry(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_should_flush_cache_entry called");
    return NULL;
}

void* nw_protocol_definition_set_start(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_start called");
    return NULL;
}

void* nw_protocol_definition_set_stop(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_set_stop called");
    return NULL;
}

void* nw_protocol_definition_unregister(void)
{
    if (verbose) puts("STUB: nw_protocol_definition_unregister called");
    return NULL;
}

void* nw_protocol_establishment_report_create(void)
{
    if (verbose) puts("STUB: nw_protocol_establishment_report_create called");
    return NULL;
}

void* nw_protocol_find_instance_to_join(void)
{
    if (verbose) puts("STUB: nw_protocol_find_instance_to_join called");
    return NULL;
}

void* nw_protocol_get_quic_connection_protocol_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_get_quic_connection_protocol_identifier called");
    return NULL;
}

void* nw_protocol_get_quic_stream_protocol_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_get_quic_stream_protocol_identifier called");
    return NULL;
}

void* nw_protocol_get_tcp_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_get_tcp_identifier called");
    return NULL;
}

void* nw_protocol_hash_table_create(void)
{
    if (verbose) puts("STUB: nw_protocol_hash_table_create called");
    return NULL;
}

void* nw_protocol_http2_transport_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_http2_transport_identifier called");
    return NULL;
}

void* nw_protocol_http2_transport_parameters_set_connection_receive_window_size(void)
{
    if (verbose) puts("STUB: nw_protocol_http2_transport_parameters_set_connection_receive_window_size called");
    return NULL;
}

void* nw_protocol_http2_transport_parameters_set_stream_receive_window_size(void)
{
    if (verbose) puts("STUB: nw_protocol_http2_transport_parameters_set_stream_receive_window_size called");
    return NULL;
}

void* nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay(void)
{
    if (verbose) puts("STUB: nw_protocol_http2_transport_parameters_set_tunnel_teardown_delay called");
    return NULL;
}

void* nw_protocol_input_handler_is_connection_flow(void)
{
    if (verbose) puts("STUB: nw_protocol_input_handler_is_connection_flow called");
    return NULL;
}

void* nw_protocol_instance_access_cached_content(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_access_cached_content called");
    return NULL;
}

void* nw_protocol_instance_access_flow_state(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_access_flow_state called");
    return NULL;
}

void* nw_protocol_instance_access_globals(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_access_globals called");
    return NULL;
}

void* nw_protocol_instance_access_state(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_access_state called");
    return NULL;
}

void* nw_protocol_instance_add_inbound(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_add_inbound called");
    return NULL;
}

void* nw_protocol_instance_add_new_flow(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_add_new_flow called");
    return NULL;
}

void* nw_protocol_instance_add_outbound(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_add_outbound called");
    return NULL;
}

void* nw_protocol_instance_clear_flow_for_key(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_clear_flow_for_key called");
    return NULL;
}

void* nw_protocol_instance_copy_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_copy_definition called");
    return NULL;
}

void* nw_protocol_instance_copy_options(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_copy_options called");
    return NULL;
}

void* nw_protocol_instance_copy_path(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_copy_path called");
    return NULL;
}

void* nw_protocol_instance_enumerate_flow_keys(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_enumerate_flow_keys called");
    return NULL;
}

void* nw_protocol_instance_enumerate_flows(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_enumerate_flows called");
    return NULL;
}

void* nw_protocol_instance_get_flow_for_key(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_get_flow_for_key called");
    return NULL;
}

void* nw_protocol_instance_get_stats(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_get_stats called");
    return NULL;
}

void* nw_protocol_instance_get_stats_region(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_get_stats_region called");
    return NULL;
}

void* nw_protocol_instance_notify_updated_metadata(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_notify_updated_metadata called");
    return NULL;
}

void* nw_protocol_instance_report_done(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_report_done called");
    return NULL;
}

void* nw_protocol_instance_report_ready(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_report_ready called");
    return NULL;
}

void* nw_protocol_instance_schedule_wakeup(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_schedule_wakeup called");
    return NULL;
}

void* nw_protocol_instance_set_allow_buffering(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_allow_buffering called");
    return NULL;
}

void* nw_protocol_instance_set_cached_content(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_cached_content called");
    return NULL;
}

void* nw_protocol_instance_set_flow_for_key(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_flow_for_key called");
    return NULL;
}

void* nw_protocol_instance_set_is_datagram(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_is_datagram called");
    return NULL;
}

void* nw_protocol_instance_set_limit_outbound_data(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_limit_outbound_data called");
    return NULL;
}

void* nw_protocol_instance_set_maximum_content_size(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_maximum_content_size called");
    return NULL;
}

void* nw_protocol_instance_set_reserve_footer_size(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_reserve_footer_size called");
    return NULL;
}

void* nw_protocol_instance_set_reserve_header_size(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_reserve_header_size called");
    return NULL;
}

void* nw_protocol_instance_set_wakeup_handler(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_set_wakeup_handler called");
    return NULL;
}

void* nw_protocol_instance_update_outbound_data_limit(void)
{
    if (verbose) puts("STUB: nw_protocol_instance_update_outbound_data_limit called");
    return NULL;
}

void* nw_protocol_is_registered(void)
{
    if (verbose) puts("STUB: nw_protocol_is_registered called");
    return NULL;
}

void* nw_protocol_metadata_access_handle(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_access_handle called");
    return NULL;
}

void* nw_protocol_metadata_copy_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_copy_definition called");
    return NULL;
}

void* nw_protocol_metadata_copy_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_copy_identifier called");
    return NULL;
}

void* nw_protocol_metadata_copy_message_options(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_copy_message_options called");
    return NULL;
}

void* nw_protocol_metadata_copy_original(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_copy_original called");
    return NULL;
}

void* nw_protocol_metadata_create(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_create called");
    return NULL;
}

void* nw_protocol_metadata_create_reply(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_create_reply called");
    return NULL;
}

void* nw_protocol_metadata_create_singleton(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_create_singleton called");
    return NULL;
}

void* nw_protocol_metadata_is_framer_message(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_framer_message called");
    return NULL;
}

void* nw_protocol_metadata_is_ip(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_ip called");
    return NULL;
}

void* nw_protocol_metadata_is_quic_connection(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_quic_connection called");
    return NULL;
}

void* nw_protocol_metadata_is_quic_stream(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_quic_stream called");
    return NULL;
}

void* nw_protocol_metadata_is_tcp(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_tcp called");
    return NULL;
}

void* nw_protocol_metadata_is_tls(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_tls called");
    return NULL;
}

void* nw_protocol_metadata_is_udp(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_udp called");
    return NULL;
}

void* nw_protocol_metadata_is_ws(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_is_ws called");
    return NULL;
}

void* nw_protocol_metadata_set_original(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_set_original called");
    return NULL;
}

void* nw_protocol_metadata_supports_replies(void)
{
    if (verbose) puts("STUB: nw_protocol_metadata_supports_replies called");
    return NULL;
}

void* nw_protocol_modify_parameters(void)
{
    if (verbose) puts("STUB: nw_protocol_modify_parameters called");
    return NULL;
}

void* nw_protocol_notification_type_to_string(void)
{
    if (verbose) puts("STUB: nw_protocol_notification_type_to_string called");
    return NULL;
}

void* nw_protocol_option_is_equal(void)
{
    if (verbose) puts("STUB: nw_protocol_option_is_equal called");
    return NULL;
}

void* nw_protocol_options_access_handle(void)
{
    if (verbose) puts("STUB: nw_protocol_options_access_handle called");
    return NULL;
}

void* nw_protocol_options_copy(void)
{
    if (verbose) puts("STUB: nw_protocol_options_copy called");
    return NULL;
}

void* nw_protocol_options_copy_definition(void)
{
    if (verbose) puts("STUB: nw_protocol_options_copy_definition called");
    return NULL;
}

void* nw_protocol_options_get_hash(void)
{
    if (verbose) puts("STUB: nw_protocol_options_get_hash called");
    return NULL;
}

void* nw_protocol_options_get_log_id_num(void)
{
    if (verbose) puts("STUB: nw_protocol_options_get_log_id_num called");
    return NULL;
}

void* nw_protocol_options_get_log_id_str(void)
{
    if (verbose) puts("STUB: nw_protocol_options_get_log_id_str called");
    return NULL;
}

void* nw_protocol_options_is_quic(void)
{
    if (verbose) puts("STUB: nw_protocol_options_is_quic called");
    return NULL;
}

void* nw_protocol_options_is_quic_connection(void)
{
    if (verbose) puts("STUB: nw_protocol_options_is_quic_connection called");
    return NULL;
}

void* nw_protocol_options_is_quic_stream(void)
{
    if (verbose) puts("STUB: nw_protocol_options_is_quic_stream called");
    return NULL;
}

void* nw_protocol_options_is_tcp(void)
{
    if (verbose) puts("STUB: nw_protocol_options_is_tcp called");
    return NULL;
}

void* nw_protocol_parameters_copy_value(void)
{
    if (verbose) puts("STUB: nw_protocol_parameters_copy_value called");
    return NULL;
}

void* nw_protocol_parameters_get_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_parameters_get_identifier called");
    return NULL;
}

void* nw_protocol_parameters_iterate_stack(void)
{
    if (verbose) puts("STUB: nw_protocol_parameters_iterate_stack called");
    return NULL;
}

void* nw_protocol_recorder_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_recorder_identifier called");
    return NULL;
}

void* nw_protocol_register(void)
{
    if (verbose) puts("STUB: nw_protocol_register called");
    return NULL;
}

void* nw_protocol_register_extended(void)
{
    if (verbose) puts("STUB: nw_protocol_register_extended called");
    return NULL;
}

void* nw_protocol_register_handle(void)
{
    if (verbose) puts("STUB: nw_protocol_register_handle called");
    return NULL;
}

void* nw_protocol_register_many_to_one(void)
{
    if (verbose) puts("STUB: nw_protocol_register_many_to_one called");
    return NULL;
}

void* nw_protocol_register_parameter_modifier(void)
{
    if (verbose) puts("STUB: nw_protocol_register_parameter_modifier called");
    return NULL;
}

void* nw_protocol_remove_instance(void)
{
    if (verbose) puts("STUB: nw_protocol_remove_instance called");
    return NULL;
}

void* nw_protocol_request_outbound_data(void)
{
    if (verbose) puts("STUB: nw_protocol_request_outbound_data called");
    return NULL;
}

void* nw_protocol_set_default_one_to_one_callbacks(void)
{
    if (verbose) puts("STUB: nw_protocol_set_default_one_to_one_callbacks called");
    return NULL;
}

void* nw_protocol_stack_append_application_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_append_application_protocol called");
    return NULL;
}

void* nw_protocol_stack_clear_application_protocols(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_clear_application_protocols called");
    return NULL;
}

void* nw_protocol_stack_copy_application_protocols(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_copy_application_protocols called");
    return NULL;
}

void* nw_protocol_stack_copy_internet_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_copy_internet_protocol called");
    return NULL;
}

void* nw_protocol_stack_copy_transport_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_copy_transport_protocol called");
    return NULL;
}

void* nw_protocol_stack_create_empty(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_create_empty called");
    return NULL;
}

void* nw_protocol_stack_includes_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_includes_protocol called");
    return NULL;
}

void* nw_protocol_stack_iterate_application_protocols(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_iterate_application_protocols called");
    return NULL;
}

void* nw_protocol_stack_prepend_application_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_prepend_application_protocol called");
    return NULL;
}

void* nw_protocol_stack_remove_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_remove_protocol called");
    return NULL;
}

void* nw_protocol_stack_set_application_protocols(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_set_application_protocols called");
    return NULL;
}

void* nw_protocol_stack_set_internet_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_set_internet_protocol called");
    return NULL;
}

void* nw_protocol_stack_set_transport_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_stack_set_transport_protocol called");
    return NULL;
}

void* nw_protocol_tcp_not_available(void)
{
    if (verbose) puts("STUB: nw_protocol_tcp_not_available called");
    return NULL;
}

void* nw_protocol_trainer_bottom_check_output(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_bottom_check_output called");
    return NULL;
}

void* nw_protocol_trainer_bottom_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_bottom_identifier called");
    return NULL;
}

void* nw_protocol_trainer_bottom_inject_input(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_bottom_inject_input called");
    return NULL;
}

void* nw_protocol_trainer_bottom_notify_input(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_bottom_notify_input called");
    return NULL;
}

void* nw_protocol_trainer_bottom_set_output_style(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_bottom_set_output_style called");
    return NULL;
}

void* nw_protocol_trainer_expect_frames_consumed(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_expect_frames_consumed called");
    return NULL;
}

void* nw_protocol_trainer_set_local(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_set_local called");
    return NULL;
}

void* nw_protocol_trainer_top_check_input(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_check_input called");
    return NULL;
}

void* nw_protocol_trainer_top_connect(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_connect called");
    return NULL;
}

void* nw_protocol_trainer_top_disconnect(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_disconnect called");
    return NULL;
}

void* nw_protocol_trainer_top_expect_connected(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_expect_connected called");
    return NULL;
}

void* nw_protocol_trainer_top_expect_disconnected(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_expect_disconnected called");
    return NULL;
}

void* nw_protocol_trainer_top_flush_output(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_flush_output called");
    return NULL;
}

void* nw_protocol_trainer_top_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_identifier called");
    return NULL;
}

void* nw_protocol_trainer_top_inject_output(void)
{
    if (verbose) puts("STUB: nw_protocol_trainer_top_inject_output called");
    return NULL;
}

void* nw_protocol_transform_append_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_append_protocol called");
    return NULL;
}

void* nw_protocol_transform_clear_protocols_at_level(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_clear_protocols_at_level called");
    return NULL;
}

void* nw_protocol_transform_copy(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_copy called");
    return NULL;
}

void* nw_protocol_transform_copy_endpoint(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_copy_endpoint called");
    return NULL;
}

void* nw_protocol_transform_create(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_create called");
    return NULL;
}

void* nw_protocol_transform_disable_protocol(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_disable_protocol called");
    return NULL;
}

void* nw_protocol_transform_get_data_mode(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_data_mode called");
    return NULL;
}

void* nw_protocol_transform_get_fallback_mode(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_fallback_mode called");
    return NULL;
}

void* nw_protocol_transform_get_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_fast_open_force_enable called");
    return NULL;
}

void* nw_protocol_transform_get_hash(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_hash called");
    return NULL;
}

void* nw_protocol_transform_get_multipath_service(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_multipath_service called");
    return NULL;
}

void* nw_protocol_transform_get_no_path_fallback(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_no_path_fallback called");
    return NULL;
}

void* nw_protocol_transform_get_no_proxy(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_no_proxy called");
    return NULL;
}

void* nw_protocol_transform_get_prohibit_direct(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_prohibit_direct called");
    return NULL;
}

void* nw_protocol_transform_get_tfo(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_tfo called");
    return NULL;
}

void* nw_protocol_transform_get_tfo_no_cookie(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_tfo_no_cookie called");
    return NULL;
}

void* nw_protocol_transform_get_use_tfo_heuristics(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_get_use_tfo_heuristics called");
    return NULL;
}

void* nw_protocol_transform_is_equal(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_is_equal called");
    return NULL;
}

void* nw_protocol_transform_modify_parameters(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_modify_parameters called");
    return NULL;
}

void* nw_protocol_transform_replace_endpoint(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_replace_endpoint called");
    return NULL;
}

void* nw_protocol_transform_set_data_mode(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_data_mode called");
    return NULL;
}

void* nw_protocol_transform_set_fallback_mode(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_fallback_mode called");
    return NULL;
}

void* nw_protocol_transform_set_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_fast_open_force_enable called");
    return NULL;
}

void* nw_protocol_transform_set_multipath_service(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_multipath_service called");
    return NULL;
}

void* nw_protocol_transform_set_no_path_fallback(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_no_path_fallback called");
    return NULL;
}

void* nw_protocol_transform_set_no_proxy(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_no_proxy called");
    return NULL;
}

void* nw_protocol_transform_set_prohibit_direct(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_prohibit_direct called");
    return NULL;
}

void* nw_protocol_transform_set_tfo(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_tfo called");
    return NULL;
}

void* nw_protocol_transform_set_tfo_no_cookie(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_tfo_no_cookie called");
    return NULL;
}

void* nw_protocol_transform_set_use_tfo_heuristics(void)
{
    if (verbose) puts("STUB: nw_protocol_transform_set_use_tfo_heuristics called");
    return NULL;
}

void* nw_protocol_udp_identifier(void)
{
    if (verbose) puts("STUB: nw_protocol_udp_identifier called");
    return NULL;
}

void* nw_protocol_unregister(void)
{
    if (verbose) puts("STUB: nw_protocol_unregister called");
    return NULL;
}

void* nw_protocols_are_equal(void)
{
    if (verbose) puts("STUB: nw_protocols_are_equal called");
    return NULL;
}

void* nw_proxy_copy_http_connect_definition(void)
{
    if (verbose) puts("STUB: nw_proxy_copy_http_connect_definition called");
    return NULL;
}

void* nw_proxy_create_options(void)
{
    if (verbose) puts("STUB: nw_proxy_create_options called");
    return NULL;
}

void* nw_proxy_options_set_authentication_challenge_handler(void)
{
    if (verbose) puts("STUB: nw_proxy_options_set_authentication_challenge_handler called");
    return NULL;
}

void* nw_proxy_options_set_http_proxy_authorization_header(void)
{
    if (verbose) puts("STUB: nw_proxy_options_set_http_proxy_authorization_header called");
    return NULL;
}

void* nw_queue_activate_source(void)
{
    if (verbose) puts("STUB: nw_queue_activate_source called");
    return NULL;
}

void* nw_queue_assert_context(void)
{
    if (verbose) puts("STUB: nw_queue_assert_context called");
    return NULL;
}

void* nw_queue_async(void)
{
    if (verbose) puts("STUB: nw_queue_async called");
    return NULL;
}

void* nw_queue_async_current(void)
{
    if (verbose) puts("STUB: nw_queue_async_current called");
    return NULL;
}

void* nw_queue_cancel_source(void)
{
    if (verbose) puts("STUB: nw_queue_cancel_source called");
    return NULL;
}

void* nw_queue_context_async(void)
{
    if (verbose) puts("STUB: nw_queue_context_async called");
    return NULL;
}

void* nw_queue_context_async_if_needed(void)
{
    if (verbose) puts("STUB: nw_queue_context_async_if_needed called");
    return NULL;
}

void* nw_queue_context_create_source(void)
{
    if (verbose) puts("STUB: nw_queue_context_create_source called");
    return NULL;
}

void* nw_queue_context_target_dispatch_queue(void)
{
    if (verbose) puts("STUB: nw_queue_context_target_dispatch_queue called");
    return NULL;
}

void* nw_queue_create_source(void)
{
    if (verbose) puts("STUB: nw_queue_create_source called");
    return NULL;
}

void* nw_queue_register_dispatch_queue(void)
{
    if (verbose) puts("STUB: nw_queue_register_dispatch_queue called");
    return NULL;
}

void* nw_queue_resume_source(void)
{
    if (verbose) puts("STUB: nw_queue_resume_source called");
    return NULL;
}

void* nw_queue_set_timer_values(void)
{
    if (verbose) puts("STUB: nw_queue_set_timer_values called");
    return NULL;
}

void* nw_queue_source_get_data(void)
{
    if (verbose) puts("STUB: nw_queue_source_get_data called");
    return NULL;
}

void* nw_queue_source_get_handle(void)
{
    if (verbose) puts("STUB: nw_queue_source_get_handle called");
    return NULL;
}

void* nw_queue_suspend_source(void)
{
    if (verbose) puts("STUB: nw_queue_suspend_source called");
    return NULL;
}

void* nw_queue_target_dispatch_queue(void)
{
    if (verbose) puts("STUB: nw_queue_target_dispatch_queue called");
    return NULL;
}

void* nw_quic_connection_copy_sec_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_quic_connection_copy_sec_protocol_metadata called");
    return NULL;
}

void* nw_quic_connection_copy_sec_protocol_options(void)
{
    if (verbose) puts("STUB: nw_quic_connection_copy_sec_protocol_options called");
    return NULL;
}

void* nw_quic_connection_get_idle_timeout(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_idle_timeout called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_data(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_data called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_stream_data_bidirectional_local(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_stream_data_bidirectional_local called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_stream_data_bidirectional_remote(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_stream_data_bidirectional_remote called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_stream_data_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_stream_data_unidirectional called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_streams_bidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_streams_bidirectional called");
    return NULL;
}

void* nw_quic_connection_get_initial_max_streams_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_initial_max_streams_unidirectional called");
    return NULL;
}

void* nw_quic_connection_get_max_packet_size(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_max_packet_size called");
    return NULL;
}

void* nw_quic_connection_get_max_streams_bidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_max_streams_bidirectional called");
    return NULL;
}

void* nw_quic_connection_get_max_streams_bidirectional_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_max_streams_bidirectional_handler called");
    return NULL;
}

void* nw_quic_connection_get_max_streams_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_max_streams_unidirectional called");
    return NULL;
}

void* nw_quic_connection_get_max_streams_unidirectional_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_get_max_streams_unidirectional_handler called");
    return NULL;
}

void* nw_quic_connection_metadata_set_stream_options(void)
{
    if (verbose) puts("STUB: nw_quic_connection_metadata_set_stream_options called");
    return NULL;
}

void* nw_quic_connection_set_idle_timeout(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_idle_timeout called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_data(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_data called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_stream_data_bidirectional_local(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_stream_data_bidirectional_local called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_stream_data_bidirectional_remote(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_stream_data_bidirectional_remote called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_stream_data_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_stream_data_unidirectional called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_streams_bidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_streams_bidirectional called");
    return NULL;
}

void* nw_quic_connection_set_initial_max_streams_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_initial_max_streams_unidirectional called");
    return NULL;
}

void* nw_quic_connection_set_max_data(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_data called");
    return NULL;
}

void* nw_quic_connection_set_max_data_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_data_handler called");
    return NULL;
}

void* nw_quic_connection_set_max_packet_size(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_packet_size called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_bidirectional_local(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_bidirectional_local called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_bidirectional_local_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_bidirectional_local_handler called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_bidirectional_remote(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_bidirectional_remote called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_bidirectional_remote_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_bidirectional_remote_handler called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_unidirectional called");
    return NULL;
}

void* nw_quic_connection_set_max_stream_data_unidirectional_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_stream_data_unidirectional_handler called");
    return NULL;
}

void* nw_quic_connection_set_max_streams_bidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_streams_bidirectional called");
    return NULL;
}

void* nw_quic_connection_set_max_streams_bidirectional_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_streams_bidirectional_handler called");
    return NULL;
}

void* nw_quic_connection_set_max_streams_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_streams_unidirectional called");
    return NULL;
}

void* nw_quic_connection_set_max_streams_unidirectional_handler(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_max_streams_unidirectional_handler called");
    return NULL;
}

void* nw_quic_connection_set_sec_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_quic_connection_set_sec_protocol_metadata called");
    return NULL;
}

void* nw_quic_create_connection_metadata(void)
{
    if (verbose) puts("STUB: nw_quic_create_connection_metadata called");
    return NULL;
}

void* nw_quic_create_connection_options(void)
{
    if (verbose) puts("STUB: nw_quic_create_connection_options called");
    return NULL;
}

void* nw_quic_create_stream_options(void)
{
    if (verbose) puts("STUB: nw_quic_create_stream_options called");
    return NULL;
}

void* nw_quic_metadata_copy_stream_options(void)
{
    if (verbose) puts("STUB: nw_quic_metadata_copy_stream_options called");
    return NULL;
}

void* nw_quic_metadata_set_original(void)
{
    if (verbose) puts("STUB: nw_quic_metadata_set_original called");
    return NULL;
}

void* nw_quic_stream_copy_shared_connection_options(void)
{
    if (verbose) puts("STUB: nw_quic_stream_copy_shared_connection_options called");
    return NULL;
}

void* nw_quic_stream_get_is_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_stream_get_is_unidirectional called");
    return NULL;
}

void* nw_quic_stream_set_is_unidirectional(void)
{
    if (verbose) puts("STUB: nw_quic_stream_set_is_unidirectional called");
    return NULL;
}

void* nw_release(void)
{
    if (verbose) puts("STUB: nw_release called");
    return NULL;
}

void* nw_resolver_cancel(void)
{
    if (verbose) puts("STUB: nw_resolver_cancel called");
    return NULL;
}

void* nw_resolver_create_srv_weighted_variant(void)
{
    if (verbose) puts("STUB: nw_resolver_create_srv_weighted_variant called");
    return NULL;
}

void* nw_resolver_create_with_endpoint(void)
{
    if (verbose) puts("STUB: nw_resolver_create_with_endpoint called");
    return NULL;
}

void* nw_resolver_create_with_path(void)
{
    if (verbose) puts("STUB: nw_resolver_create_with_path called");
    return NULL;
}

void* nw_resolver_get_error(void)
{
    if (verbose) puts("STUB: nw_resolver_get_error called");
    return NULL;
}

void* nw_resolver_get_status(void)
{
    if (verbose) puts("STUB: nw_resolver_get_status called");
    return NULL;
}

void* nw_resolver_inject_dns_service_error(void)
{
    if (verbose) puts("STUB: nw_resolver_inject_dns_service_error called");
    return NULL;
}

void* nw_resolver_set_cancel_handler(void)
{
    if (verbose) puts("STUB: nw_resolver_set_cancel_handler called");
    return NULL;
}

void* nw_resolver_set_enable_esni(void)
{
    if (verbose) puts("STUB: nw_resolver_set_enable_esni called");
    return NULL;
}

void* nw_resolver_set_update_handler(void)
{
    if (verbose) puts("STUB: nw_resolver_set_update_handler called");
    return NULL;
}

void* nw_retain(void)
{
    if (verbose) puts("STUB: nw_retain called");
    return NULL;
}

void* nw_service_connector_cancel(void)
{
    if (verbose) puts("STUB: nw_service_connector_cancel called");
    return NULL;
}

void* nw_service_connector_cancel_active_connection(void)
{
    if (verbose) puts("STUB: nw_service_connector_cancel_active_connection called");
    return NULL;
}

void* nw_service_connector_cancel_request(void)
{
    if (verbose) puts("STUB: nw_service_connector_cancel_request called");
    return NULL;
}

void* nw_service_connector_create(void)
{
    if (verbose) puts("STUB: nw_service_connector_create called");
    return NULL;
}

void* nw_service_connector_set_service_available_block(void)
{
    if (verbose) puts("STUB: nw_service_connector_set_service_available_block called");
    return NULL;
}

void* nw_service_connector_start(void)
{
    if (verbose) puts("STUB: nw_service_connector_start called");
    return NULL;
}

void* nw_service_connector_start_request(void)
{
    if (verbose) puts("STUB: nw_service_connector_start_request called");
    return NULL;
}

void* nw_settings_register_boringssl_log_debug_updates(void)
{
    if (verbose) puts("STUB: nw_settings_register_boringssl_log_debug_updates called");
    return NULL;
}

void* nw_settings_register_networkd_privileged(void)
{
    if (verbose) puts("STUB: nw_settings_register_networkd_privileged called");
    return NULL;
}

void* nw_settings_register_quic_log_debug_updates(void)
{
    if (verbose) puts("STUB: nw_settings_register_quic_log_debug_updates called");
    return NULL;
}

void* nw_settings_setup_atfork(void)
{
    if (verbose) puts("STUB: nw_settings_setup_atfork called");
    return NULL;
}

void* nw_shoes_server_cancel(void)
{
    if (verbose) puts("STUB: nw_shoes_server_cancel called");
    return NULL;
}

void* nw_shoes_server_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_shoes_server_copy_parameters called");
    return NULL;
}

void* nw_shoes_server_create(void)
{
    if (verbose) puts("STUB: nw_shoes_server_create called");
    return NULL;
}

void* nw_shoes_server_fillout_statistics(void)
{
    if (verbose) puts("STUB: nw_shoes_server_fillout_statistics called");
    return NULL;
}

void* nw_shoes_server_get_port(void)
{
    if (verbose) puts("STUB: nw_shoes_server_get_port called");
    return NULL;
}

void* nw_shoes_server_set_error_handler(void)
{
    if (verbose) puts("STUB: nw_shoes_server_set_error_handler called");
    return NULL;
}

void* nw_shoes_server_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_shoes_server_set_state_changed_handler called");
    return NULL;
}

void* nw_shoes_server_start(void)
{
    if (verbose) puts("STUB: nw_shoes_server_start called");
    return NULL;
}

void* nw_socket_protocol_identifier(void)
{
    if (verbose) puts("STUB: nw_socket_protocol_identifier called");
    return NULL;
}

void* nw_socks5_server_cancel(void)
{
    if (verbose) puts("STUB: nw_socks5_server_cancel called");
    return NULL;
}

void* nw_socks5_server_copy_parameters(void)
{
    if (verbose) puts("STUB: nw_socks5_server_copy_parameters called");
    return NULL;
}

void* nw_socks5_server_create(void)
{
    if (verbose) puts("STUB: nw_socks5_server_create called");
    return NULL;
}

void* nw_socks5_server_get_port(void)
{
    if (verbose) puts("STUB: nw_socks5_server_get_port called");
    return NULL;
}

void* nw_socks5_server_set_error_handler(void)
{
    if (verbose) puts("STUB: nw_socks5_server_set_error_handler called");
    return NULL;
}

void* nw_socks5_server_set_state_changed_handler(void)
{
    if (verbose) puts("STUB: nw_socks5_server_set_state_changed_handler called");
    return NULL;
}

void* nw_socks5_server_start(void)
{
    if (verbose) puts("STUB: nw_socks5_server_start called");
    return NULL;
}

void* nw_tcp_connection_copy_error(void)
{
    if (verbose) puts("STUB: nw_tcp_connection_copy_error called");
    return NULL;
}

void* nw_tcp_connection_set_tls_message_handler(void)
{
    if (verbose) puts("STUB: nw_tcp_connection_set_tls_message_handler called");
    return NULL;
}

void* nw_tcp_connection_set_tls_prepare_handler(void)
{
    if (verbose) puts("STUB: nw_tcp_connection_set_tls_prepare_handler called");
    return NULL;
}

void* nw_tcp_create_metadata(void)
{
    if (verbose) puts("STUB: nw_tcp_create_metadata called");
    return NULL;
}

void* nw_tcp_create_options(void)
{
    if (verbose) puts("STUB: nw_tcp_create_options called");
    return NULL;
}

void* nw_tcp_get_available_receive_buffer(void)
{
    if (verbose) puts("STUB: nw_tcp_get_available_receive_buffer called");
    return NULL;
}

void* nw_tcp_get_available_send_buffer(void)
{
    if (verbose) puts("STUB: nw_tcp_get_available_send_buffer called");
    return NULL;
}

void* nw_tcp_options_get_connection_timeout(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_connection_timeout called");
    return NULL;
}

void* nw_tcp_options_get_disable_ack_stretching(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_disable_ack_stretching called");
    return NULL;
}

void* nw_tcp_options_get_disable_blackhole_detection(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_disable_blackhole_detection called");
    return NULL;
}

void* nw_tcp_options_get_disable_ecn(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_disable_ecn called");
    return NULL;
}

void* nw_tcp_options_get_enable_background_traffic_management(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_enable_background_traffic_management called");
    return NULL;
}

void* nw_tcp_options_get_enable_fast_open(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_enable_fast_open called");
    return NULL;
}

void* nw_tcp_options_get_enable_keepalive(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_enable_keepalive called");
    return NULL;
}

void* nw_tcp_options_get_enable_keepalive_offload(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_enable_keepalive_offload called");
    return NULL;
}

void* nw_tcp_options_get_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_fast_open_force_enable called");
    return NULL;
}

void* nw_tcp_options_get_keepalive_count(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_keepalive_count called");
    return NULL;
}

void* nw_tcp_options_get_keepalive_idle_time(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_keepalive_idle_time called");
    return NULL;
}

void* nw_tcp_options_get_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_keepalive_interval called");
    return NULL;
}

void* nw_tcp_options_get_maximum_segment_size(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_maximum_segment_size called");
    return NULL;
}

void* nw_tcp_options_get_no_delay(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_no_delay called");
    return NULL;
}

void* nw_tcp_options_get_no_fast_open_cookie(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_no_fast_open_cookie called");
    return NULL;
}

void* nw_tcp_options_get_no_options(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_no_options called");
    return NULL;
}

void* nw_tcp_options_get_no_push(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_no_push called");
    return NULL;
}

void* nw_tcp_options_get_no_timewait(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_no_timewait called");
    return NULL;
}

void* nw_tcp_options_get_persist_timeout(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_persist_timeout called");
    return NULL;
}

void* nw_tcp_options_get_reduce_buffering(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_reduce_buffering called");
    return NULL;
}

void* nw_tcp_options_get_retransmit_connection_drop_time(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_retransmit_connection_drop_time called");
    return NULL;
}

void* nw_tcp_options_get_retransmit_fin_drop(void)
{
    if (verbose) puts("STUB: nw_tcp_options_get_retransmit_fin_drop called");
    return NULL;
}

void* nw_tcp_options_set_connection_timeout(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_connection_timeout called");
    return NULL;
}

void* nw_tcp_options_set_disable_ack_stretching(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_disable_ack_stretching called");
    return NULL;
}

void* nw_tcp_options_set_disable_blackhole_detection(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_disable_blackhole_detection called");
    return NULL;
}

void* nw_tcp_options_set_disable_ecn(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_disable_ecn called");
    return NULL;
}

void* nw_tcp_options_set_enable_background_traffic_management(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_enable_background_traffic_management called");
    return NULL;
}

void* nw_tcp_options_set_enable_fast_open(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_enable_fast_open called");
    return NULL;
}

void* nw_tcp_options_set_enable_keepalive(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_enable_keepalive called");
    return NULL;
}

void* nw_tcp_options_set_enable_keepalive_offload(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_enable_keepalive_offload called");
    return NULL;
}

void* nw_tcp_options_set_fast_open_force_enable(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_fast_open_force_enable called");
    return NULL;
}

void* nw_tcp_options_set_keepalive_count(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_keepalive_count called");
    return NULL;
}

void* nw_tcp_options_set_keepalive_idle_time(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_keepalive_idle_time called");
    return NULL;
}

void* nw_tcp_options_set_keepalive_interval(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_keepalive_interval called");
    return NULL;
}

void* nw_tcp_options_set_maximum_segment_size(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_maximum_segment_size called");
    return NULL;
}

void* nw_tcp_options_set_no_delay(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_no_delay called");
    return NULL;
}

void* nw_tcp_options_set_no_fast_open_cookie(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_no_fast_open_cookie called");
    return NULL;
}

void* nw_tcp_options_set_no_options(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_no_options called");
    return NULL;
}

void* nw_tcp_options_set_no_push(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_no_push called");
    return NULL;
}

void* nw_tcp_options_set_no_timewait(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_no_timewait called");
    return NULL;
}

void* nw_tcp_options_set_persist_timeout(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_persist_timeout called");
    return NULL;
}

void* nw_tcp_options_set_reduce_buffering(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_reduce_buffering called");
    return NULL;
}

void* nw_tcp_options_set_retransmit_connection_drop_time(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_retransmit_connection_drop_time called");
    return NULL;
}

void* nw_tcp_options_set_retransmit_fin_drop(void)
{
    if (verbose) puts("STUB: nw_tcp_options_set_retransmit_fin_drop called");
    return NULL;
}

void* nw_tcp_set_callbacks(void)
{
    if (verbose) puts("STUB: nw_tcp_set_callbacks called");
    return NULL;
}

void* nw_tls_copy_peer_certificates(void)
{
    if (verbose) puts("STUB: nw_tls_copy_peer_certificates called");
    return NULL;
}

void* nw_tls_copy_sec_protocol_metadata(void)
{
    if (verbose) puts("STUB: nw_tls_copy_sec_protocol_metadata called");
    return NULL;
}

void* nw_tls_copy_sec_protocol_options(void)
{
    if (verbose) puts("STUB: nw_tls_copy_sec_protocol_options called");
    return NULL;
}

void* nw_tls_create_options(void)
{
    if (verbose) puts("STUB: nw_tls_create_options called");
    return NULL;
}

void* nw_tls_create_peer_acceptable_distinguished_names(void)
{
    if (verbose) puts("STUB: nw_tls_create_peer_acceptable_distinguished_names called");
    return NULL;
}

void* nw_tls_create_peer_trust(void)
{
    if (verbose) puts("STUB: nw_tls_create_peer_trust called");
    return NULL;
}

void* nw_tls_create_secret(void)
{
    if (verbose) puts("STUB: nw_tls_create_secret called");
    return NULL;
}

void* nw_tls_create_secret_with_context(void)
{
    if (verbose) puts("STUB: nw_tls_create_secret_with_context called");
    return NULL;
}

void* nw_tls_fetch_peer_public_key(void)
{
    if (verbose) puts("STUB: nw_tls_fetch_peer_public_key called");
    return NULL;
}

void* nw_tls_get_fallback(void)
{
    if (verbose) puts("STUB: nw_tls_get_fallback called");
    return NULL;
}

void* nw_tls_get_false_start(void)
{
    if (verbose) puts("STUB: nw_tls_get_false_start called");
    return NULL;
}

void* nw_tls_get_maximum_protocol_version(void)
{
    if (verbose) puts("STUB: nw_tls_get_maximum_protocol_version called");
    return NULL;
}

void* nw_tls_get_maximum_ssl_protocol(void)
{
    if (verbose) puts("STUB: nw_tls_get_maximum_ssl_protocol called");
    return NULL;
}

void* nw_tls_get_minimum_protocol_version(void)
{
    if (verbose) puts("STUB: nw_tls_get_minimum_protocol_version called");
    return NULL;
}

void* nw_tls_get_minimum_ssl_protocol(void)
{
    if (verbose) puts("STUB: nw_tls_get_minimum_ssl_protocol called");
    return NULL;
}

void* nw_tls_get_negotiated_cipher_spec(void)
{
    if (verbose) puts("STUB: nw_tls_get_negotiated_cipher_spec called");
    return NULL;
}

void* nw_tls_get_negotiated_protocol_version(void)
{
    if (verbose) puts("STUB: nw_tls_get_negotiated_protocol_version called");
    return NULL;
}

void* nw_tls_get_negotiated_ssl_protocol(void)
{
    if (verbose) puts("STUB: nw_tls_get_negotiated_ssl_protocol called");
    return NULL;
}

void* nw_tls_get_peer_alpn_data(void)
{
    if (verbose) puts("STUB: nw_tls_get_peer_alpn_data called");
    return NULL;
}

void* nw_tls_get_peer_hostname(void)
{
    if (verbose) puts("STUB: nw_tls_get_peer_hostname called");
    return NULL;
}

void* nw_tls_get_peer_npn_data(void)
{
    if (verbose) puts("STUB: nw_tls_get_peer_npn_data called");
    return NULL;
}

void* nw_tls_get_peer_ocsp_response(void)
{
    if (verbose) puts("STUB: nw_tls_get_peer_ocsp_response called");
    return NULL;
}

void* nw_tls_set_alpn_data(void)
{
    if (verbose) puts("STUB: nw_tls_set_alpn_data called");
    return NULL;
}

void* nw_tls_set_ciphersuites(void)
{
    if (verbose) puts("STUB: nw_tls_set_ciphersuites called");
    return NULL;
}

void* nw_tls_set_client_auth(void)
{
    if (verbose) puts("STUB: nw_tls_set_client_auth called");
    return NULL;
}

void* nw_tls_set_client_auth_type(void)
{
    if (verbose) puts("STUB: nw_tls_set_client_auth_type called");
    return NULL;
}

void* nw_tls_set_config(void)
{
    if (verbose) puts("STUB: nw_tls_set_config called");
    return NULL;
}

void* nw_tls_set_dh_parameters(void)
{
    if (verbose) puts("STUB: nw_tls_set_dh_parameters called");
    return NULL;
}

void* nw_tls_set_fallback(void)
{
    if (verbose) puts("STUB: nw_tls_set_fallback called");
    return NULL;
}

void* nw_tls_set_false_start(void)
{
    if (verbose) puts("STUB: nw_tls_set_false_start called");
    return NULL;
}

void* nw_tls_set_identity_from_array(void)
{
    if (verbose) puts("STUB: nw_tls_set_identity_from_array called");
    return NULL;
}

void* nw_tls_set_maximum_protocol_version(void)
{
    if (verbose) puts("STUB: nw_tls_set_maximum_protocol_version called");
    return NULL;
}

void* nw_tls_set_maximum_ssl_protocol(void)
{
    if (verbose) puts("STUB: nw_tls_set_maximum_ssl_protocol called");
    return NULL;
}

void* nw_tls_set_minimum_protocol_version(void)
{
    if (verbose) puts("STUB: nw_tls_set_minimum_protocol_version called");
    return NULL;
}

void* nw_tls_set_minimum_ssl_protocol(void)
{
    if (verbose) puts("STUB: nw_tls_set_minimum_ssl_protocol called");
    return NULL;
}

void* nw_tls_set_npn_data(void)
{
    if (verbose) puts("STUB: nw_tls_set_npn_data called");
    return NULL;
}

void* nw_tls_set_npn_enabled(void)
{
    if (verbose) puts("STUB: nw_tls_set_npn_enabled called");
    return NULL;
}

void* nw_tls_set_peer_ec_public_key(void)
{
    if (verbose) puts("STUB: nw_tls_set_peer_ec_public_key called");
    return NULL;
}

void* nw_tls_set_peer_hostname(void)
{
    if (verbose) puts("STUB: nw_tls_set_peer_hostname called");
    return NULL;
}

void* nw_tls_set_peer_rsa_public_key(void)
{
    if (verbose) puts("STUB: nw_tls_set_peer_rsa_public_key called");
    return NULL;
}

void* nw_tls_set_peer_trust(void)
{
    if (verbose) puts("STUB: nw_tls_set_peer_trust called");
    return NULL;
}

void* nw_tls_set_psk_identity(void)
{
    if (verbose) puts("STUB: nw_tls_set_psk_identity called");
    return NULL;
}

void* nw_tls_set_psk_identity_hint(void)
{
    if (verbose) puts("STUB: nw_tls_set_psk_identity_hint called");
    return NULL;
}

void* nw_tls_set_psk_secret(void)
{
    if (verbose) puts("STUB: nw_tls_set_psk_secret called");
    return NULL;
}

void* nw_tls_set_session_resumption_enabled(void)
{
    if (verbose) puts("STUB: nw_tls_set_session_resumption_enabled called");
    return NULL;
}

void* nw_tls_set_session_ticket_enabled(void)
{
    if (verbose) puts("STUB: nw_tls_set_session_ticket_enabled called");
    return NULL;
}

void* nw_txt_record_access_bytes(void)
{
    if (verbose) puts("STUB: nw_txt_record_access_bytes called");
    return NULL;
}

void* nw_txt_record_access_key(void)
{
    if (verbose) puts("STUB: nw_txt_record_access_key called");
    return NULL;
}

void* nw_txt_record_apply(void)
{
    if (verbose) puts("STUB: nw_txt_record_apply called");
    return NULL;
}

void* nw_txt_record_apply_internal_locked(void)
{
    if (verbose) puts("STUB: nw_txt_record_apply_internal_locked called");
    return NULL;
}

void* nw_txt_record_conforms_to_rfc_1464(void)
{
    if (verbose) puts("STUB: nw_txt_record_conforms_to_rfc_1464 called");
    return NULL;
}

void* nw_txt_record_copy(void)
{
    if (verbose) puts("STUB: nw_txt_record_copy called");
    return NULL;
}

void* nw_txt_record_create_dictionary(void)
{
    if (verbose) puts("STUB: nw_txt_record_create_dictionary called");
    return NULL;
}

void* nw_txt_record_create_dictionary_with_initial_length(void)
{
    if (verbose) puts("STUB: nw_txt_record_create_dictionary_with_initial_length called");
    return NULL;
}

void* nw_txt_record_create_with_bytes(void)
{
    if (verbose) puts("STUB: nw_txt_record_create_with_bytes called");
    return NULL;
}

void* nw_txt_record_find_key(void)
{
    if (verbose) puts("STUB: nw_txt_record_find_key called");
    return NULL;
}

void* nw_txt_record_find_start_of_key_locked(void)
{
    if (verbose) puts("STUB: nw_txt_record_find_start_of_key_locked called");
    return NULL;
}

void* nw_txt_record_get_bytes(void)
{
    if (verbose) puts("STUB: nw_txt_record_get_bytes called");
    return NULL;
}

void* nw_txt_record_get_key(void)
{
    if (verbose) puts("STUB: nw_txt_record_get_key called");
    return NULL;
}

void* nw_txt_record_get_key_count(void)
{
    if (verbose) puts("STUB: nw_txt_record_get_key_count called");
    return NULL;
}

void* nw_txt_record_get_key_value_result(void)
{
    if (verbose) puts("STUB: nw_txt_record_get_key_value_result called");
    return NULL;
}

void* nw_txt_record_get_length(void)
{
    if (verbose) puts("STUB: nw_txt_record_get_length called");
    return NULL;
}

void* nw_txt_record_is_dictionary(void)
{
    if (verbose) puts("STUB: nw_txt_record_is_dictionary called");
    return NULL;
}

void* nw_txt_record_is_equal(void)
{
    if (verbose) puts("STUB: nw_txt_record_is_equal called");
    return NULL;
}

void* nw_txt_record_key_is_valid(void)
{
    if (verbose) puts("STUB: nw_txt_record_key_is_valid called");
    return NULL;
}

void* nw_txt_record_remove_key(void)
{
    if (verbose) puts("STUB: nw_txt_record_remove_key called");
    return NULL;
}

void* nw_txt_record_remove_key_locked(void)
{
    if (verbose) puts("STUB: nw_txt_record_remove_key_locked called");
    return NULL;
}

void* nw_txt_record_set_key(void)
{
    if (verbose) puts("STUB: nw_txt_record_set_key called");
    return NULL;
}

void* nw_udp_create_metadata(void)
{
    if (verbose) puts("STUB: nw_udp_create_metadata called");
    return NULL;
}

void* nw_udp_create_options(void)
{
    if (verbose) puts("STUB: nw_udp_create_options called");
    return NULL;
}

void* nw_udp_options_get_no_metadata(void)
{
    if (verbose) puts("STUB: nw_udp_options_get_no_metadata called");
    return NULL;
}

void* nw_udp_options_set_no_metadata(void)
{
    if (verbose) puts("STUB: nw_udp_options_set_no_metadata called");
    return NULL;
}

void* nw_udp_options_set_prefer_no_checksum(void)
{
    if (verbose) puts("STUB: nw_udp_options_set_prefer_no_checksum called");
    return NULL;
}

void* nw_unordered_xpc_array_is_equal(void)
{
    if (verbose) puts("STUB: nw_unordered_xpc_array_is_equal called");
    return NULL;
}

void* nw_utf8_validator_init(void)
{
    if (verbose) puts("STUB: nw_utf8_validator_init called");
    return NULL;
}

void* nw_utf8_validator_is_parsing(void)
{
    if (verbose) puts("STUB: nw_utf8_validator_is_parsing called");
    return NULL;
}

void* nw_utf8_validator_parse(void)
{
    if (verbose) puts("STUB: nw_utf8_validator_parse called");
    return NULL;
}

void* nw_utilities_cidr_string_to_subnet_and_mask(void)
{
    if (verbose) puts("STUB: nw_utilities_cidr_string_to_subnet_and_mask called");
    return NULL;
}

void* nw_utilities_copy_local_entitlement_value(void)
{
    if (verbose) puts("STUB: nw_utilities_copy_local_entitlement_value called");
    return NULL;
}

void* nw_utilities_copy_sanitized_url(void)
{
    if (verbose) puts("STUB: nw_utilities_copy_sanitized_url called");
    return NULL;
}

void* nw_utilities_create_c_string_from_cfstring(void)
{
    if (verbose) puts("STUB: nw_utilities_create_c_string_from_cfstring called");
    return NULL;
}

void* nw_ws_copy_response_for_challenge(void)
{
    if (verbose) puts("STUB: nw_ws_copy_response_for_challenge called");
    return NULL;
}

void* nw_ws_create_client_request(void)
{
    if (verbose) puts("STUB: nw_ws_create_client_request called");
    return NULL;
}

void* nw_ws_create_metadata(void)
{
    if (verbose) puts("STUB: nw_ws_create_metadata called");
    return NULL;
}

void* nw_ws_create_options(void)
{
    if (verbose) puts("STUB: nw_ws_create_options called");
    return NULL;
}

void* nw_ws_metadata_copy_server_response(void)
{
    if (verbose) puts("STUB: nw_ws_metadata_copy_server_response called");
    return NULL;
}

void* nw_ws_metadata_get_close_code(void)
{
    if (verbose) puts("STUB: nw_ws_metadata_get_close_code called");
    return NULL;
}

void* nw_ws_metadata_get_opcode(void)
{
    if (verbose) puts("STUB: nw_ws_metadata_get_opcode called");
    return NULL;
}

void* nw_ws_metadata_set_close_code(void)
{
    if (verbose) puts("STUB: nw_ws_metadata_set_close_code called");
    return NULL;
}

void* nw_ws_metadata_set_pong_handler(void)
{
    if (verbose) puts("STUB: nw_ws_metadata_set_pong_handler called");
    return NULL;
}

void* nw_ws_options_add_additional_header(void)
{
    if (verbose) puts("STUB: nw_ws_options_add_additional_header called");
    return NULL;
}

void* nw_ws_options_add_protocol(void)
{
    if (verbose) puts("STUB: nw_ws_options_add_protocol called");
    return NULL;
}

void* nw_ws_options_add_subprotocol(void)
{
    if (verbose) puts("STUB: nw_ws_options_add_subprotocol called");
    return NULL;
}

void* nw_ws_options_set_auto_reply_ping(void)
{
    if (verbose) puts("STUB: nw_ws_options_set_auto_reply_ping called");
    return NULL;
}

void* nw_ws_options_set_client_request_handler(void)
{
    if (verbose) puts("STUB: nw_ws_options_set_client_request_handler called");
    return NULL;
}

void* nw_ws_options_set_maximum_message_size(void)
{
    if (verbose) puts("STUB: nw_ws_options_set_maximum_message_size called");
    return NULL;
}

void* nw_ws_options_set_prepend_data(void)
{
    if (verbose) puts("STUB: nw_ws_options_set_prepend_data called");
    return NULL;
}

void* nw_ws_options_set_skip_handshake(void)
{
    if (verbose) puts("STUB: nw_ws_options_set_skip_handshake called");
    return NULL;
}

void* nw_ws_present_request_to_user(void)
{
    if (verbose) puts("STUB: nw_ws_present_request_to_user called");
    return NULL;
}

void* nw_ws_request_enumerate_additional_headers(void)
{
    if (verbose) puts("STUB: nw_ws_request_enumerate_additional_headers called");
    return NULL;
}

void* nw_ws_request_enumerate_subprotocols(void)
{
    if (verbose) puts("STUB: nw_ws_request_enumerate_subprotocols called");
    return NULL;
}

void* nw_ws_response_add_additional_header(void)
{
    if (verbose) puts("STUB: nw_ws_response_add_additional_header called");
    return NULL;
}

void* nw_ws_response_create(void)
{
    if (verbose) puts("STUB: nw_ws_response_create called");
    return NULL;
}

void* nw_ws_response_enumerate_additional_headers(void)
{
    if (verbose) puts("STUB: nw_ws_response_enumerate_additional_headers called");
    return NULL;
}

void* nw_ws_response_get_selected_subprotocol(void)
{
    if (verbose) puts("STUB: nw_ws_response_get_selected_subprotocol called");
    return NULL;
}

void* nw_ws_response_get_status(void)
{
    if (verbose) puts("STUB: nw_ws_response_get_status called");
    return NULL;
}

void* nw_ws_validate_client_request(void)
{
    if (verbose) puts("STUB: nw_ws_validate_client_request called");
    return NULL;
}

void* nw_ws_validate_server_response(void)
{
    if (verbose) puts("STUB: nw_ws_validate_server_response called");
    return NULL;
}

void* nwlog_get_private_redacted(void)
{
    if (verbose) puts("STUB: nwlog_get_private_redacted called");
    return NULL;
}

void* nwlog_get_string_for_dns_service_error(void)
{
    if (verbose) puts("STUB: nwlog_get_string_for_dns_service_error called");
    return NULL;
}

void* nwlog_send_copy_to_fd(void)
{
    if (verbose) puts("STUB: nwlog_send_copy_to_fd called");
    return NULL;
}

void* sa_dst_compare(void)
{
    if (verbose) puts("STUB: sa_dst_compare called");
    return NULL;
}

void* sa_dst_compare_no_dependencies(void)
{
    if (verbose) puts("STUB: sa_dst_compare_no_dependencies called");
    return NULL;
}

void* sa_dst_compare_no_stats(void)
{
    if (verbose) puts("STUB: sa_dst_compare_no_stats called");
    return NULL;
}

void* tcp_connection_accept(void)
{
    if (verbose) puts("STUB: tcp_connection_accept called");
    return NULL;
}

void* tcp_connection_add_event_adaptive_read_timeout(void)
{
    if (verbose) puts("STUB: tcp_connection_add_event_adaptive_read_timeout called");
    return NULL;
}

void* tcp_connection_add_event_adaptive_write_timeout(void)
{
    if (verbose) puts("STUB: tcp_connection_add_event_adaptive_write_timeout called");
    return NULL;
}

void* tcp_connection_add_event_excessive_keepalives(void)
{
    if (verbose) puts("STUB: tcp_connection_add_event_excessive_keepalives called");
    return NULL;
}

void* tcp_connection_allow_client_socket_access(void)
{
    if (verbose) puts("STUB: tcp_connection_allow_client_socket_access called");
    return NULL;
}

void* tcp_connection_are_proxies_supported(void)
{
    if (verbose) puts("STUB: tcp_connection_are_proxies_supported called");
    return NULL;
}

void* tcp_connection_cancel(void)
{
    if (verbose) puts("STUB: tcp_connection_cancel called");
    return NULL;
}

void* tcp_connection_conditions_get_unmet_reason(void)
{
    if (verbose) puts("STUB: tcp_connection_conditions_get_unmet_reason called");
    return NULL;
}

void* tcp_connection_conditions_met(void)
{
    if (verbose) puts("STUB: tcp_connection_conditions_met called");
    return NULL;
}

void* tcp_connection_copy_connected_path(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_connected_path called");
    return NULL;
}

void* tcp_connection_copy_context(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_context called");
    return NULL;
}

void* tcp_connection_copy_description(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_description called");
    return NULL;
}

void* tcp_connection_copy_endpoint(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_endpoint called");
    return NULL;
}

void* tcp_connection_copy_metadata(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_metadata called");
    return NULL;
}

void* tcp_connection_copy_nw_connection(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_nw_connection called");
    return NULL;
}

void* tcp_connection_copy_parameters(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_parameters called");
    return NULL;
}

void* tcp_connection_copy_proxy(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_proxy called");
    return NULL;
}

void* tcp_connection_copy_socket(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_socket called");
    return NULL;
}

void* tcp_connection_copy_tcp_info(void)
{
    if (verbose) puts("STUB: tcp_connection_copy_tcp_info called");
    return NULL;
}

void* tcp_connection_create(void)
{
    if (verbose) puts("STUB: tcp_connection_create called");
    return NULL;
}

void* tcp_connection_create_inbound(void)
{
    if (verbose) puts("STUB: tcp_connection_create_inbound called");
    return NULL;
}

void* tcp_connection_create_upgrade(void)
{
    if (verbose) puts("STUB: tcp_connection_create_upgrade called");
    return NULL;
}

void* tcp_connection_create_with_connected_fd(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_connected_fd called");
    return NULL;
}

void* tcp_connection_create_with_connection(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_connection called");
    return NULL;
}

void* tcp_connection_create_with_endpoint_and_parameters(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_endpoint_and_parameters called");
    return NULL;
}

void* tcp_connection_create_with_nw_connection(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_nw_connection called");
    return NULL;
}

void* tcp_connection_create_with_service(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_service called");
    return NULL;
}

void* tcp_connection_create_with_sockaddr(void)
{
    if (verbose) puts("STUB: tcp_connection_create_with_sockaddr called");
    return NULL;
}

void* tcp_connection_did_fallback(void)
{
    if (verbose) puts("STUB: tcp_connection_did_fallback called");
    return NULL;
}

void* tcp_connection_event_to_string(void)
{
    if (verbose) puts("STUB: tcp_connection_event_to_string called");
    return NULL;
}

void* tcp_connection_fallback_is_fast(void)
{
    if (verbose) puts("STUB: tcp_connection_fallback_is_fast called");
    return NULL;
}

void* tcp_connection_fallback_watcher_create(void)
{
    if (verbose) puts("STUB: tcp_connection_fallback_watcher_create called");
    return NULL;
}

void* tcp_connection_fallback_watcher_destroy(void)
{
    if (verbose) puts("STUB: tcp_connection_fallback_watcher_destroy called");
    return NULL;
}

void* tcp_connection_fillout_tcp_connection_info(void)
{
    if (verbose) puts("STUB: tcp_connection_fillout_tcp_connection_info called");
    return NULL;
}

void* tcp_connection_get_connection_quality(void)
{
    if (verbose) puts("STUB: tcp_connection_get_connection_quality called");
    return NULL;
}

void* tcp_connection_get_counts(void)
{
    if (verbose) puts("STUB: tcp_connection_get_counts called");
    return NULL;
}

void* tcp_connection_get_error(void)
{
    if (verbose) puts("STUB: tcp_connection_get_error called");
    return NULL;
}

void* tcp_connection_get_hostname(void)
{
    if (verbose) puts("STUB: tcp_connection_get_hostname called");
    return NULL;
}

void* tcp_connection_get_interface(void)
{
    if (verbose) puts("STUB: tcp_connection_get_interface called");
    return NULL;
}

void* tcp_connection_get_local(void)
{
    if (verbose) puts("STUB: tcp_connection_get_local called");
    return NULL;
}

void* tcp_connection_get_remote(void)
{
    if (verbose) puts("STUB: tcp_connection_get_remote called");
    return NULL;
}

void* tcp_connection_get_socket(void)
{
    if (verbose) puts("STUB: tcp_connection_get_socket called");
    return NULL;
}

void* tcp_connection_get_statistics(void)
{
    if (verbose) puts("STUB: tcp_connection_get_statistics called");
    return NULL;
}

void* tcp_connection_get_tfo_success(void)
{
    if (verbose) puts("STUB: tcp_connection_get_tfo_success called");
    return NULL;
}

void* tcp_connection_get_txtrecord(void)
{
    if (verbose) puts("STUB: tcp_connection_get_txtrecord called");
    return NULL;
}

void* tcp_connection_get_unsent_length(void)
{
    if (verbose) puts("STUB: tcp_connection_get_unsent_length called");
    return NULL;
}

void* tcp_connection_has_better_route(void)
{
    if (verbose) puts("STUB: tcp_connection_has_better_route called");
    return NULL;
}

void* tcp_connection_id(void)
{
    if (verbose) puts("STUB: tcp_connection_id called");
    return NULL;
}

void* tcp_connection_is_cellular(void)
{
    if (verbose) puts("STUB: tcp_connection_is_cellular called");
    return NULL;
}

void* tcp_connection_is_expensive(void)
{
    if (verbose) puts("STUB: tcp_connection_is_expensive called");
    return NULL;
}

void* tcp_connection_is_multipath(void)
{
    if (verbose) puts("STUB: tcp_connection_is_multipath called");
    return NULL;
}

void* tcp_connection_is_sleep_proxied(void)
{
    if (verbose) puts("STUB: tcp_connection_is_sleep_proxied called");
    return NULL;
}

void* tcp_connection_is_viable(void)
{
    if (verbose) puts("STUB: tcp_connection_is_viable called");
    return NULL;
}

void* tcp_connection_log_event(void)
{
    if (verbose) puts("STUB: tcp_connection_log_event called");
    return NULL;
}

void* tcp_connection_multipath_copy_subflow_switch_counts(void)
{
    if (verbose) puts("STUB: tcp_connection_multipath_copy_subflow_switch_counts called");
    return NULL;
}

void* tcp_connection_multipath_get_primary_subflow_ifindex(void)
{
    if (verbose) puts("STUB: tcp_connection_multipath_get_primary_subflow_ifindex called");
    return NULL;
}

void* tcp_connection_multipath_get_subflow_count(void)
{
    if (verbose) puts("STUB: tcp_connection_multipath_get_subflow_count called");
    return NULL;
}

void* tcp_connection_override_obscure(void)
{
    if (verbose) puts("STUB: tcp_connection_override_obscure called");
    return NULL;
}

void* tcp_connection_read(void)
{
    if (verbose) puts("STUB: tcp_connection_read called");
    return NULL;
}

void* tcp_connection_read_buffer(void)
{
    if (verbose) puts("STUB: tcp_connection_read_buffer called");
    return NULL;
}

void* tcp_connection_release(void)
{
    if (verbose) puts("STUB: tcp_connection_release called");
    return NULL;
}

void* tcp_connection_retain(void)
{
    if (verbose) puts("STUB: tcp_connection_retain called");
    return NULL;
}

void* tcp_connection_retry(void)
{
    if (verbose) puts("STUB: tcp_connection_retry called");
    return NULL;
}

void* tcp_connection_set_account_identifier(void)
{
    if (verbose) puts("STUB: tcp_connection_set_account_identifier called");
    return NULL;
}

void* tcp_connection_set_background_traffic_management(void)
{
    if (verbose) puts("STUB: tcp_connection_set_background_traffic_management called");
    return NULL;
}

void* tcp_connection_set_cancel_handler(void)
{
    if (verbose) puts("STUB: tcp_connection_set_cancel_handler called");
    return NULL;
}

void* tcp_connection_set_cellular_service(void)
{
    if (verbose) puts("STUB: tcp_connection_set_cellular_service called");
    return NULL;
}

void* tcp_connection_set_connection_attempt_timeout(void)
{
    if (verbose) puts("STUB: tcp_connection_set_connection_attempt_timeout called");
    return NULL;
}

void* tcp_connection_set_connection_pool(void)
{
    if (verbose) puts("STUB: tcp_connection_set_connection_pool called");
    return NULL;
}

void* tcp_connection_set_context(void)
{
    if (verbose) puts("STUB: tcp_connection_set_context called");
    return NULL;
}

void* tcp_connection_set_duet_conditional(void)
{
    if (verbose) puts("STUB: tcp_connection_set_duet_conditional called");
    return NULL;
}

void* tcp_connection_set_ecn_enabled(void)
{
    if (verbose) puts("STUB: tcp_connection_set_ecn_enabled called");
    return NULL;
}

void* tcp_connection_set_event_handler(void)
{
    if (verbose) puts("STUB: tcp_connection_set_event_handler called");
    return NULL;
}

void* tcp_connection_set_event_handler_f(void)
{
    if (verbose) puts("STUB: tcp_connection_set_event_handler_f called");
    return NULL;
}

void* tcp_connection_set_extended_background_idle(void)
{
    if (verbose) puts("STUB: tcp_connection_set_extended_background_idle called");
    return NULL;
}

void* tcp_connection_set_fallback_fast(void)
{
    if (verbose) puts("STUB: tcp_connection_set_fallback_fast called");
    return NULL;
}

void* tcp_connection_set_force_address_family(void)
{
    if (verbose) puts("STUB: tcp_connection_set_force_address_family called");
    return NULL;
}

void* tcp_connection_set_indefinite(void)
{
    if (verbose) puts("STUB: tcp_connection_set_indefinite called");
    return NULL;
}

void* tcp_connection_set_initial_data_payload(void)
{
    if (verbose) puts("STUB: tcp_connection_set_initial_data_payload called");
    return NULL;
}

void* tcp_connection_set_interface_by_index(void)
{
    if (verbose) puts("STUB: tcp_connection_set_interface_by_index called");
    return NULL;
}

void* tcp_connection_set_interface_by_name(void)
{
    if (verbose) puts("STUB: tcp_connection_set_interface_by_name called");
    return NULL;
}

void* tcp_connection_set_keepalive(void)
{
    if (verbose) puts("STUB: tcp_connection_set_keepalive called");
    return NULL;
}

void* tcp_connection_set_keepalive_offload(void)
{
    if (verbose) puts("STUB: tcp_connection_set_keepalive_offload called");
    return NULL;
}

void* tcp_connection_set_low_latency(void)
{
    if (verbose) puts("STUB: tcp_connection_set_low_latency called");
    return NULL;
}

void* tcp_connection_set_metadata(void)
{
    if (verbose) puts("STUB: tcp_connection_set_metadata called");
    return NULL;
}

void* tcp_connection_set_minimum_throughput(void)
{
    if (verbose) puts("STUB: tcp_connection_set_minimum_throughput called");
    return NULL;
}

void* tcp_connection_set_multipath(void)
{
    if (verbose) puts("STUB: tcp_connection_set_multipath called");
    return NULL;
}

void* tcp_connection_set_multipath_service(void)
{
    if (verbose) puts("STUB: tcp_connection_set_multipath_service called");
    return NULL;
}

void* tcp_connection_set_no_cellular(void)
{
    if (verbose) puts("STUB: tcp_connection_set_no_cellular called");
    return NULL;
}

void* tcp_connection_set_no_delay(void)
{
    if (verbose) puts("STUB: tcp_connection_set_no_delay called");
    return NULL;
}

void* tcp_connection_set_no_expensive(void)
{
    if (verbose) puts("STUB: tcp_connection_set_no_expensive called");
    return NULL;
}

void* tcp_connection_set_no_fallback(void)
{
    if (verbose) puts("STUB: tcp_connection_set_no_fallback called");
    return NULL;
}

void* tcp_connection_set_opportunistic(void)
{
    if (verbose) puts("STUB: tcp_connection_set_opportunistic called");
    return NULL;
}

void* tcp_connection_set_persistent(void)
{
    if (verbose) puts("STUB: tcp_connection_set_persistent called");
    return NULL;
}

void* tcp_connection_set_power_nap(void)
{
    if (verbose) puts("STUB: tcp_connection_set_power_nap called");
    return NULL;
}

void* tcp_connection_set_preparesocket(void)
{
    if (verbose) puts("STUB: tcp_connection_set_preparesocket called");
    return NULL;
}

void* tcp_connection_set_prohibited_interface_subtypes(void)
{
    if (verbose) puts("STUB: tcp_connection_set_prohibited_interface_subtypes called");
    return NULL;
}

void* tcp_connection_set_prohibited_interface_types(void)
{
    if (verbose) puts("STUB: tcp_connection_set_prohibited_interface_types called");
    return NULL;
}

void* tcp_connection_set_proxies(void)
{
    if (verbose) puts("STUB: tcp_connection_set_proxies called");
    return NULL;
}

void* tcp_connection_set_queue(void)
{
    if (verbose) puts("STUB: tcp_connection_set_queue called");
    return NULL;
}

void* tcp_connection_set_read_buffer_size(void)
{
    if (verbose) puts("STUB: tcp_connection_set_read_buffer_size called");
    return NULL;
}

void* tcp_connection_set_receive_any_interface(void)
{
    if (verbose) puts("STUB: tcp_connection_set_receive_any_interface called");
    return NULL;
}

void* tcp_connection_set_requires_power(void)
{
    if (verbose) puts("STUB: tcp_connection_set_requires_power called");
    return NULL;
}

void* tcp_connection_set_sleep_idle_interval(void)
{
    if (verbose) puts("STUB: tcp_connection_set_sleep_idle_interval called");
    return NULL;
}

void* tcp_connection_set_source_application(void)
{
    if (verbose) puts("STUB: tcp_connection_set_source_application called");
    return NULL;
}

void* tcp_connection_set_source_application_by_bundle(void)
{
    if (verbose) puts("STUB: tcp_connection_set_source_application_by_bundle called");
    return NULL;
}

void* tcp_connection_set_tfo(void)
{
    if (verbose) puts("STUB: tcp_connection_set_tfo called");
    return NULL;
}

void* tcp_connection_set_timeframe(void)
{
    if (verbose) puts("STUB: tcp_connection_set_timeframe called");
    return NULL;
}

void* tcp_connection_set_tls(void)
{
    if (verbose) puts("STUB: tcp_connection_set_tls called");
    return NULL;
}

void* tcp_connection_set_tls_handshake_message_handler(void)
{
    if (verbose) puts("STUB: tcp_connection_set_tls_handshake_message_handler called");
    return NULL;
}

void* tcp_connection_set_tls_mode(void)
{
    if (verbose) puts("STUB: tcp_connection_set_tls_mode called");
    return NULL;
}

void* tcp_connection_set_tls_prepare(void)
{
    if (verbose) puts("STUB: tcp_connection_set_tls_prepare called");
    return NULL;
}

void* tcp_connection_set_traffic_class(void)
{
    if (verbose) puts("STUB: tcp_connection_set_traffic_class called");
    return NULL;
}

void* tcp_connection_set_url(void)
{
    if (verbose) puts("STUB: tcp_connection_set_url called");
    return NULL;
}

void* tcp_connection_set_usage_model(void)
{
    if (verbose) puts("STUB: tcp_connection_set_usage_model called");
    return NULL;
}

void* tcp_connection_set_workload(void)
{
    if (verbose) puts("STUB: tcp_connection_set_workload called");
    return NULL;
}

void* tcp_connection_start(void)
{
    if (verbose) puts("STUB: tcp_connection_start called");
    return NULL;
}

void* tcp_connection_write(void)
{
    if (verbose) puts("STUB: tcp_connection_write called");
    return NULL;
}

void* tcp_connection_write_buffer(void)
{
    if (verbose) puts("STUB: tcp_connection_write_buffer called");
    return NULL;
}

void* tcp_connection_write_eof(void)
{
    if (verbose) puts("STUB: tcp_connection_write_eof called");
    return NULL;
}

void* tcp_fallback_watcher_fallback_inuse(void)
{
    if (verbose) puts("STUB: tcp_fallback_watcher_fallback_inuse called");
    return NULL;
}

void* tcp_listener_cancel(void)
{
    if (verbose) puts("STUB: tcp_listener_cancel called");
    return NULL;
}

void* tcp_listener_create(void)
{
    if (verbose) puts("STUB: tcp_listener_create called");
    return NULL;
}

void* tcp_listener_create_launchd(void)
{
    if (verbose) puts("STUB: tcp_listener_create_launchd called");
    return NULL;
}

void* tcp_listener_enable_coprocessor_interface(void)
{
    if (verbose) puts("STUB: tcp_listener_enable_coprocessor_interface called");
    return NULL;
}

void* tcp_listener_get_dns_service_ref(void)
{
    if (verbose) puts("STUB: tcp_listener_get_dns_service_ref called");
    return NULL;
}

void* tcp_listener_get_port(void)
{
    if (verbose) puts("STUB: tcp_listener_get_port called");
    return NULL;
}

void* tcp_listener_release(void)
{
    if (verbose) puts("STUB: tcp_listener_release called");
    return NULL;
}

void* tcp_listener_retain(void)
{
    if (verbose) puts("STUB: tcp_listener_retain called");
    return NULL;
}

void* tcp_listener_set_accept_handler(void)
{
    if (verbose) puts("STUB: tcp_listener_set_accept_handler called");
    return NULL;
}

void* tcp_listener_set_accept_handler_f(void)
{
    if (verbose) puts("STUB: tcp_listener_set_accept_handler_f called");
    return NULL;
}

void* tcp_listener_set_error_handler(void)
{
    if (verbose) puts("STUB: tcp_listener_set_error_handler called");
    return NULL;
}

void* tcp_listener_set_error_handler_f(void)
{
    if (verbose) puts("STUB: tcp_listener_set_error_handler_f called");
    return NULL;
}

void* tcp_listener_set_interface(void)
{
    if (verbose) puts("STUB: tcp_listener_set_interface called");
    return NULL;
}

void* tcp_listener_set_local_only(void)
{
    if (verbose) puts("STUB: tcp_listener_set_local_only called");
    return NULL;
}

void* tcp_listener_set_port(void)
{
    if (verbose) puts("STUB: tcp_listener_set_port called");
    return NULL;
}

void* tcp_listener_set_register_p2p(void)
{
    if (verbose) puts("STUB: tcp_listener_set_register_p2p called");
    return NULL;
}

void* tcp_listener_set_service(void)
{
    if (verbose) puts("STUB: tcp_listener_set_service called");
    return NULL;
}

void* tcp_listener_set_tfo(void)
{
    if (verbose) puts("STUB: tcp_listener_set_tfo called");
    return NULL;
}

void* tcp_listener_start(void)
{
    if (verbose) puts("STUB: tcp_listener_start called");
    return NULL;
}

void* udp_validate_cksum(void)
{
    if (verbose) puts("STUB: udp_validate_cksum called");
    return NULL;
}

void* validate_tcp_cksum(void)
{
    if (verbose) puts("STUB: validate_tcp_cksum called");
    return NULL;
}
