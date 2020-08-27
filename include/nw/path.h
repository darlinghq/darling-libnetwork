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

#ifndef _NW_PATH_H_
#define _NW_PATH_H_

#include <nw/base.h>

_NW_OPAQUE(nw_path);

void* nw_path_allows_multipath(void);
void* nw_path_assert_agent(void);
void* nw_path_assert_required_agents(void);
void* nw_path_can_resolve_endpoint(void);
void* nw_path_can_support_endpoint(void);
void* nw_path_changed_from_previous(void);
void* nw_path_copy_advertise_descriptor(void);
void* nw_path_copy_all_client_ids(void);
void* nw_path_copy_all_local_paths(void);
void* nw_path_copy_browse_descriptor(void);
void* nw_path_copy_connected_interface(void);
void* nw_path_copy_delegate_interface(void);
void* nw_path_copy_derived_parameters(void);
void* nw_path_copy_description(void);
void* nw_path_copy_direct_interface(void);
void* nw_path_copy_discovered_endpoints(void);
void* nw_path_copy_effective_local_endpoint(void);
void* nw_path_copy_effective_remote_endpoint(void);
void* nw_path_copy_endpoint(void);
void* nw_path_copy_endpoint_from_tlv(void);
void* nw_path_copy_flow_divert_token(void);
void* nw_path_copy_flow_registration(void);
void* nw_path_copy_flows(void);
void* nw_path_copy_for_flow_registration(void);
void* nw_path_copy_gateways(void);
void* nw_path_copy_inactive_agent_uuids(void);
void* nw_path_copy_interface(void);
void* nw_path_copy_interface_from_cache(void);
void* nw_path_copy_netagent_dictionary(void);
void* nw_path_copy_parameters(void);
void* nw_path_copy_path_for_client(void);
void* nw_path_copy_proxy_settings(void);
void* nw_path_copy_resolved_endpoints(void);
void* nw_path_copy_scoped_interface(void);
void* nw_path_create_assign_message(void);
void* nw_path_create_browse_result(void);
void* nw_path_create_default_evaluator(void);
void* nw_path_create_evaluator_for_advertise(void);
void* nw_path_create_evaluator_for_browse(void);
void* nw_path_create_evaluator_for_client_id(void);
void* nw_path_create_evaluator_for_custom_ether(void);
void* nw_path_create_evaluator_for_custom_ip(void);
void* nw_path_create_evaluator_for_endpoint(void);
void* nw_path_create_evaluator_for_interpose(void);
void* nw_path_create_evaluator_for_listener(void);
void* nw_path_create_from_tlv(void);
void* nw_path_create_necp_parameters(void);
void* nw_path_create_observer(void);
void* nw_path_create_resolve_result(void);
void* nw_path_create_static(void);
void* nw_path_endpoint_is_always_satisfied(void);
void* nw_path_enumerate_browse_options(void);
void* nw_path_enumerate_gateways(void);
void* nw_path_enumerate_interface_options(void);
void* nw_path_enumerate_interfaces(void);
void* nw_path_enumerate_resolve_options(void);
void* nw_path_fillout_route_stats(void);
void* nw_path_get_client_id(void);
void* nw_path_get_connected_interface_index(void);
void* nw_path_get_custom_ethertype(void);
void* nw_path_get_dns_search_domains(void);
void* nw_path_get_dns_servers(void);
void* nw_path_get_dns_service_id(void);
void* nw_path_get_effective_traffic_class(void);
void* nw_path_get_fallback_agent(void);
void* nw_path_get_fallback_generation(void);
void* nw_path_get_fallback_interface_index(void);
void* nw_path_get_filter_unit(void);
void* nw_path_get_flow_divert_unit(void);
void* nw_path_get_interface_index(void);
void* nw_path_get_interface_option_count(void);
void* nw_path_get_interface_time_delta(void);
void* nw_path_get_ipv4_network_signature(void);
void* nw_path_get_ipv6_network_signature(void);
void* nw_path_get_maximum_datagram_size(void);
void* nw_path_get_maximum_packet_size(void);
void* nw_path_get_mtu(void);
void* nw_path_get_nexus_agent_uuid(void);
void* nw_path_get_nexus_agent_uuid_check_assertion(void);
void* nw_path_get_nexus_flow_index(void);
void* nw_path_get_nexus_instance(void);
void* nw_path_get_nexus_key(void);
void* nw_path_get_nexus_protocol_level(void);
void* nw_path_get_policy_id(void);
void* nw_path_get_private_dns_config_id(void);
void* nw_path_get_reason(void);
void* nw_path_get_reason_description(void);
void* nw_path_get_recommended_mss(void);
void* nw_path_get_rtt_values(void);
void* nw_path_get_scoped_interface_index(void);
void* nw_path_get_status(void);
void* nw_path_get_sysctls_region(void);
void* nw_path_get_vpn_config_id(void);
void* nw_path_has_advertise_descriptor(void);
void* nw_path_has_browse_descriptor(void);
void* nw_path_has_dns(void);
void* nw_path_has_flow_for_nexus_agent(void);
void* nw_path_has_ipv4(void);
void* nw_path_has_ipv6(void);
void* nw_path_has_proxy_settings(void);
void* nw_path_has_unsatisfied_cellular_agent(void);
void* nw_path_has_unsatisfied_fallback_agent(void);
void* nw_path_has_unsatisfied_route(void);
void* nw_path_increment_agent_use_count(void);
void* nw_path_ipv4_default_address(void);
void* nw_path_ipv6_default_address(void);
void* nw_path_is_constrained(void);
void* nw_path_is_defunct(void);
void* nw_path_is_direct(void);
void* nw_path_is_eligible_for_CrazyIvan46(void);
void* nw_path_is_equal(void);
void* nw_path_is_equal_inner(void);
void* nw_path_is_expensive(void);
void* nw_path_is_flow_divert(void);
void* nw_path_is_listener(void);
void* nw_path_is_local(void);
void* nw_path_is_multilayer_packet_logging_enabled(void);
void* nw_path_is_override_constrained(void);
void* nw_path_is_override_expensive(void);
void* nw_path_is_per_app_vpn(void);
void* nw_path_is_preferred(void);
void* nw_path_is_roaming(void);
void* nw_path_is_traffic_mgmt_background(void);
void* nw_path_is_tunnelled(void);
void* nw_path_is_viable(void);
void* nw_path_link_quality_abort(void);
void* nw_path_may_span_multiple_interfaces(void);
void* nw_path_override_interface(void);
void* nw_path_override_local_endpoint(void);
void* nw_path_override_viable(void);
void* nw_path_parent_has_forked(void);
void* nw_path_parse_necp_parameters(void);
void* nw_path_prepare_fork(void);
void* nw_path_request_nexus(void);
void* nw_path_set_proxy_settings(void);
void* nw_path_set_reason(void);
void* nw_path_should_fallback(void);
void* nw_path_should_probe_connectivity(void);
void* nw_path_should_transform(void);
void* nw_path_should_use_proxy(void);
void* nw_path_status_get_description(void);
void* nw_path_supports_browse(void);
void* nw_path_trigger_agent(void);
void* nw_path_trigger_inactive_cellular_agent_if_necessary(void);
void* nw_path_unassert_agent(void);
void* nw_path_update_parameters_for_fallback(void);
void* nw_path_uses_interface_subtype(void);
void* nw_path_uses_interface_type(void);
void* nw_path_uses_nexus(void);
void* nw_path_voluntary_agent_matches_address(void);

// i think these might belong elsewhere
void* nw_path_nexus_can_support_user_packet_pool(void);
void* nw_path_nexus_should_use_event_ring(void);

// same with these
void* nw_path_monitor_cancel(void);
void* nw_path_monitor_create(void);
void* nw_path_monitor_create_with_type(void);
void* nw_path_monitor_set_cancel_handler(void);
void* nw_path_monitor_set_queue(void);
void* nw_path_monitor_set_update_handler(void);
void* nw_path_monitor_start(void);

// maybe these too?
void* nw_path_listener_is_interface_specific(void);
void* nw_path_listener_uses_nexus_only(void);

// and possibly these?
void* nw_path_fallback_is_forced(void);
void* nw_path_fallback_is_weak(void);
void* nw_path_fallback_should_not_use_timer(void);

#endif // _NW_PATH_H_
