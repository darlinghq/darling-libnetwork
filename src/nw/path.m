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

#include <nw/internal/path.h>
#include <nw/internal/stubs.h>

@implementation _NW_CONCRETE_IMPL(nw_path)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_path_allows_multipath);
DARLING_NW_STUB(nw_path_assert_agent);
DARLING_NW_STUB(nw_path_assert_required_agents);
DARLING_NW_STUB(nw_path_can_resolve_endpoint);
DARLING_NW_STUB(nw_path_can_support_endpoint);
DARLING_NW_STUB(nw_path_changed_from_previous);
DARLING_NW_STUB(nw_path_copy_advertise_descriptor);
DARLING_NW_STUB(nw_path_copy_all_client_ids);
DARLING_NW_STUB(nw_path_copy_all_local_paths);
DARLING_NW_STUB(nw_path_copy_browse_descriptor);
DARLING_NW_STUB(nw_path_copy_connected_interface);
DARLING_NW_STUB(nw_path_copy_delegate_interface);
DARLING_NW_STUB(nw_path_copy_derived_parameters);
DARLING_NW_STUB(nw_path_copy_description);
DARLING_NW_STUB(nw_path_copy_direct_interface);
DARLING_NW_STUB(nw_path_copy_discovered_endpoints);
DARLING_NW_STUB(nw_path_copy_effective_local_endpoint);
DARLING_NW_STUB(nw_path_copy_effective_remote_endpoint);
DARLING_NW_STUB(nw_path_copy_endpoint);
DARLING_NW_STUB(nw_path_copy_endpoint_from_tlv);
DARLING_NW_STUB(nw_path_copy_flow_divert_token);
DARLING_NW_STUB(nw_path_copy_flow_registration);
DARLING_NW_STUB(nw_path_copy_flows);
DARLING_NW_STUB(nw_path_copy_for_flow_registration);
DARLING_NW_STUB(nw_path_copy_gateways);
DARLING_NW_STUB(nw_path_copy_inactive_agent_uuids);
DARLING_NW_STUB(nw_path_copy_interface);
DARLING_NW_STUB(nw_path_copy_interface_from_cache);
DARLING_NW_STUB(nw_path_copy_netagent_dictionary);
DARLING_NW_STUB(nw_path_copy_parameters);
DARLING_NW_STUB(nw_path_copy_path_for_client);
DARLING_NW_STUB(nw_path_copy_proxy_settings);
DARLING_NW_STUB(nw_path_copy_resolved_endpoints);
DARLING_NW_STUB(nw_path_create_assign_message);
DARLING_NW_STUB(nw_path_create_browse_result);
DARLING_NW_STUB(nw_path_create_from_tlv);
DARLING_NW_STUB(nw_path_create_necp_parameters);
DARLING_NW_STUB(nw_path_create_observer);
DARLING_NW_STUB(nw_path_create_resolve_result);
DARLING_NW_STUB(nw_path_create_static);
DARLING_NW_STUB(nw_path_endpoint_is_always_satisfied);
DARLING_NW_STUB(nw_path_enumerate_browse_options);
DARLING_NW_STUB(nw_path_enumerate_gateways);
DARLING_NW_STUB(nw_path_enumerate_interface_options);
DARLING_NW_STUB(nw_path_enumerate_interfaces);
DARLING_NW_STUB(nw_path_enumerate_resolve_options);
DARLING_NW_STUB(nw_path_fallback_is_forced);
DARLING_NW_STUB(nw_path_fallback_is_weak);
DARLING_NW_STUB(nw_path_fallback_should_not_use_timer);
DARLING_NW_STUB(nw_path_fillout_route_stats);
DARLING_NW_STUB(nw_path_get_client_id);
DARLING_NW_STUB(nw_path_get_connected_interface_index);
DARLING_NW_STUB(nw_path_get_custom_ethertype);
DARLING_NW_STUB(nw_path_get_dns_search_domains);
DARLING_NW_STUB(nw_path_get_dns_servers);
DARLING_NW_STUB(nw_path_get_dns_service_id);
DARLING_NW_STUB(nw_path_get_effective_traffic_class);
DARLING_NW_STUB(nw_path_get_fallback_agent);
DARLING_NW_STUB(nw_path_get_fallback_generation);
DARLING_NW_STUB(nw_path_get_fallback_interface_index);
DARLING_NW_STUB(nw_path_get_filter_unit);
DARLING_NW_STUB(nw_path_get_interface_index);
DARLING_NW_STUB(nw_path_get_interface_option_count);
DARLING_NW_STUB(nw_path_get_interface_time_delta);
DARLING_NW_STUB(nw_path_get_ipv4_network_signature);
DARLING_NW_STUB(nw_path_get_ipv6_network_signature);
DARLING_NW_STUB(nw_path_get_maximum_datagram_size);
DARLING_NW_STUB(nw_path_get_maximum_packet_size);
DARLING_NW_STUB(nw_path_get_mtu);
DARLING_NW_STUB(nw_path_get_nexus_agent_uuid);
DARLING_NW_STUB(nw_path_get_nexus_agent_uuid_check_assertion);
DARLING_NW_STUB(nw_path_get_nexus_flow_index);
DARLING_NW_STUB(nw_path_get_nexus_instance);
DARLING_NW_STUB(nw_path_get_nexus_key);
DARLING_NW_STUB(nw_path_get_nexus_protocol_level);
DARLING_NW_STUB(nw_path_get_policy_id);
DARLING_NW_STUB(nw_path_get_private_dns_config_id);
DARLING_NW_STUB(nw_path_get_reason_description);
DARLING_NW_STUB(nw_path_get_recommended_mss);
DARLING_NW_STUB(nw_path_get_rtt_values);
DARLING_NW_STUB(nw_path_get_scoped_interface_index);
DARLING_NW_STUB(nw_path_get_sysctls_region);
DARLING_NW_STUB(nw_path_has_advertise_descriptor);
DARLING_NW_STUB(nw_path_has_browse_descriptor);
DARLING_NW_STUB(nw_path_has_dns);
DARLING_NW_STUB(nw_path_has_flow_for_nexus_agent);
DARLING_NW_STUB(nw_path_has_proxy_settings);
DARLING_NW_STUB(nw_path_has_unsatisfied_cellular_agent);
DARLING_NW_STUB(nw_path_has_unsatisfied_fallback_agent);
DARLING_NW_STUB(nw_path_has_unsatisfied_route);
DARLING_NW_STUB(nw_path_increment_agent_use_count);
DARLING_NW_STUB(nw_path_ipv4_default_address);
DARLING_NW_STUB(nw_path_ipv6_default_address);
DARLING_NW_STUB(nw_path_is_defunct);
DARLING_NW_STUB(nw_path_is_direct);
DARLING_NW_STUB(nw_path_is_eligible_for_CrazyIvan46);
DARLING_NW_STUB(nw_path_is_equal);
DARLING_NW_STUB(nw_path_is_equal_inner);
DARLING_NW_STUB(nw_path_is_listener);
DARLING_NW_STUB(nw_path_is_local);
DARLING_NW_STUB(nw_path_is_multilayer_packet_logging_enabled);
DARLING_NW_STUB(nw_path_is_override_constrained);
DARLING_NW_STUB(nw_path_is_override_expensive);
DARLING_NW_STUB(nw_path_is_preferred);
DARLING_NW_STUB(nw_path_is_roaming);
DARLING_NW_STUB(nw_path_is_traffic_mgmt_background);
DARLING_NW_STUB(nw_path_is_tunnelled);
DARLING_NW_STUB(nw_path_is_viable);
DARLING_NW_STUB(nw_path_link_quality_abort);
DARLING_NW_STUB(nw_path_listener_is_interface_specific);
DARLING_NW_STUB(nw_path_listener_uses_nexus_only);
DARLING_NW_STUB(nw_path_may_span_multiple_interfaces);
DARLING_NW_STUB(nw_path_monitor_cancel);
DARLING_NW_STUB(nw_path_monitor_create);
DARLING_NW_STUB(nw_path_monitor_create_with_type);
DARLING_NW_STUB(nw_path_monitor_set_cancel_handler);
DARLING_NW_STUB(nw_path_monitor_set_queue);
DARLING_NW_STUB(nw_path_monitor_set_update_handler);
DARLING_NW_STUB(nw_path_monitor_start);
DARLING_NW_STUB(nw_path_nexus_can_support_user_packet_pool);
DARLING_NW_STUB(nw_path_nexus_should_use_event_ring);
DARLING_NW_STUB(nw_path_override_interface);
DARLING_NW_STUB(nw_path_override_local_endpoint);
DARLING_NW_STUB(nw_path_override_viable);
DARLING_NW_STUB(nw_path_parent_has_forked);
DARLING_NW_STUB(nw_path_parse_necp_parameters);
DARLING_NW_STUB(nw_path_prepare_fork);
DARLING_NW_STUB(nw_path_request_nexus);
DARLING_NW_STUB(nw_path_set_proxy_settings);
DARLING_NW_STUB(nw_path_set_reason);
DARLING_NW_STUB(nw_path_should_fallback);
DARLING_NW_STUB(nw_path_should_probe_connectivity);
DARLING_NW_STUB(nw_path_should_transform);
DARLING_NW_STUB(nw_path_should_use_proxy);
DARLING_NW_STUB(nw_path_status_get_description);
DARLING_NW_STUB(nw_path_supports_browse);
DARLING_NW_STUB(nw_path_trigger_agent);
DARLING_NW_STUB(nw_path_trigger_inactive_cellular_agent_if_necessary);
DARLING_NW_STUB(nw_path_unassert_agent);
DARLING_NW_STUB(nw_path_update_parameters_for_fallback);
DARLING_NW_STUB(nw_path_uses_interface_subtype);
DARLING_NW_STUB(nw_path_uses_interface_type);
DARLING_NW_STUB(nw_path_uses_nexus);
DARLING_NW_STUB(nw_path_voluntary_agent_matches_address);

int32_t nw_path_get_flow_divert_unit(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return 0;
};

nw_path_status_t nw_path_get_status(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return nw_path_status_invalid;
};

nw_path_reason_t nw_path_get_reason(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return nw_path_reason_no_reason;
};

nw_interface_t nw_path_copy_scoped_interface(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

bool nw_path_is_constrained(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_is_expensive(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_has_ipv4(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_has_ipv6(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
};

bool nw_path_is_flow_divert(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
}

bool nw_path_get_vpn_config_id(nw_path_t path, uuid_t *uuid) {
	DARLING_NW_STUB_PRINT;
	return false;
}

bool nw_path_is_per_app_vpn(nw_path_t path) {
	DARLING_NW_STUB_PRINT;
	return false;
}
