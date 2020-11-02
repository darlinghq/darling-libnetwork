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

#ifndef _NW_PARAMETERS_H_
#define _NW_PARAMETERS_H_

#include <nw/base.h>
#include <nw/protocol_options.h>
#include <nw/interface.h>

#include <sys/types.h>
#include <uuid/uuid.h>

_NW_OPAQUE(nw_parameters);

#if _NW_BLOCKS
	typedef void(^nw_parameters_configure_protocol_block_t)(nw_protocol_options_t NW_NON_NULL options);

	extern nw_parameters_configure_protocol_block_t _nw_parameters_configure_protocol_default_configuration;
	extern nw_parameters_configure_protocol_block_t _nw_parameters_configure_protocol_disable;

	#define NW_PARAMETERS_DEFAULT_CONFIGURATION _nw_parameters_configure_protocol_default_configuration
	#define NW_PARAMETERS_DISABLE_PROTOCOL _nw_parameters_configure_protocol_disable
#endif

void* nw_parameters_add_protocol_stack_member(void);
void* nw_parameters_add_proxy_options(void);
void* nw_parameters_add_to_protocol_stack(void);
void* nw_parameters_are_compatible(void);
void* nw_parameters_are_valid(void);
void* nw_parameters_clear_prohibited_interface_types(void);
void* nw_parameters_clear_prohibited_interfaces(void);
void* nw_parameters_clear_protocol_stack(void);
void* nw_parameters_clear_proxy_options(void);
void* nw_parameters_copy(void);
void* nw_parameters_copy_avoided_netagent_domains(void);
void* nw_parameters_copy_avoided_netagent_types(void);
void* nw_parameters_copy_avoided_netagent_uuids(void);
void* nw_parameters_copy_connected(void);
void* nw_parameters_copy_context(void);
void* nw_parameters_copy_default_protocol_stack(void);
void* nw_parameters_copy_description(void);
void* nw_parameters_copy_dictionary(void);
void* nw_parameters_copy_effective_proxy_settings(void);
void* nw_parameters_copy_initial_data_payload(void);
void* nw_parameters_copy_local_address(void);
void* nw_parameters_copy_local_endpoint(void);
void* nw_parameters_copy_metadata(void);
void* nw_parameters_copy_path_parameters(void);
void* nw_parameters_copy_preferred_netagent_domains(void);
void* nw_parameters_copy_preferred_netagent_types(void);
void* nw_parameters_copy_preferred_netagent_uuids(void);
void* nw_parameters_copy_prohibited_interface_subtypes(void);
void* nw_parameters_copy_prohibited_interface_types(void);
void* nw_parameters_copy_prohibited_interfaces(void);
void* nw_parameters_copy_prohibited_netagent_domains(void);
void* nw_parameters_copy_prohibited_netagent_types(void);
void* nw_parameters_copy_prohibited_netagent_uuids(void);
void* nw_parameters_copy_protocol_options(void);
void* nw_parameters_copy_protocol_options_for_definition(void);
void* nw_parameters_copy_protocol_options_legacy(void);
void* nw_parameters_copy_protocol_value(void);
void* nw_parameters_copy_proxy_configuration(void);
void* nw_parameters_copy_required_interface(void);
void* nw_parameters_copy_required_netagent_domains(void);
void* nw_parameters_copy_required_netagent_types(void);
void* nw_parameters_copy_required_netagent_uuids(void);
void* nw_parameters_copy_tls_session_id(void);
void* nw_parameters_copy_transform_array(void);
void* nw_parameters_copy_url_endpoint(void);
void* nw_parameters_create(void);
void* nw_parameters_create_custom_ip(void);
void* nw_parameters_create_empty_stack(void);
void* nw_parameters_create_from_dictionary(void);
void* nw_parameters_create_legacy_tcp_socket(void);
void* nw_parameters_create_protocol_parameters(void);
void* nw_parameters_create_quic_connection(void);
void* nw_parameters_create_quic_connection_with_tls_fallback(void);
void* nw_parameters_create_quic_stream(void);
void* nw_parameters_create_quic_stream_with_tls_fallback(void);
void* nw_parameters_create_secure_udp(void);
void* nw_parameters_get_account_id(void);
void* nw_parameters_get_allow_duplicate_state_updates(void);
void* nw_parameters_get_allow_joining_connected_fd(void);
void* nw_parameters_get_allow_socket_access(void);
void* nw_parameters_get_allow_unusable_addresses(void);
void* nw_parameters_get_always_open_listener_socket(void);
void* nw_parameters_get_attach_protocol_listener(void);
void* nw_parameters_get_background_traffic_management(void);
void* nw_parameters_get_bundle_id_to_uuid_mapping_failed(void);
void* nw_parameters_get_companion_link_upgrade_preference(void);
void* nw_parameters_get_companion_preference(void);
void* nw_parameters_get_context_privacy_level(void);
void* nw_parameters_get_data_mode(void);
void* nw_parameters_get_delegated_unique_pid(void);
void* nw_parameters_get_desperate_ivan(void);
void* nw_parameters_get_discretionary(void);
void* nw_parameters_get_dry_run(void);
void* nw_parameters_get_e_proc_uuid(void);
void* nw_parameters_get_ecn_mode(void);
void* nw_parameters_get_effective_audit_token(void);
void* nw_parameters_get_effective_bundle_id(void);
void* nw_parameters_get_expected_workload(void);
void* nw_parameters_get_expired_dns_behavior(void);
void* nw_parameters_get_fast_open_enabled(void);
void* nw_parameters_get_fast_open_force_enable(void);
void* nw_parameters_get_hash(void);
void* nw_parameters_get_https_proxy_is_opaque(void);
void* nw_parameters_get_https_proxy_over_tls(void);
void* nw_parameters_get_ignore_resolver_stats(void);
void* nw_parameters_get_include_peer_to_peer(void);
void* nw_parameters_get_indefinite(void);
void* nw_parameters_get_indefinite_set(void);
void* nw_parameters_get_ip_protocol(void);
void* nw_parameters_get_is_probe(void);
void* nw_parameters_get_keepalive_enabled(void);
void* nw_parameters_get_keepalive_idle_time(void);
void* nw_parameters_get_keepalive_interval(void);
void* nw_parameters_get_keepalive_offload(void);
void* nw_parameters_get_local_address_preference(void);
void* nw_parameters_get_local_only(void);
void* nw_parameters_get_maximum_tls_protocol_version(void);
void* nw_parameters_get_minimum_tls_protocol_version(void);
void* nw_parameters_get_multipath(void);
void* nw_parameters_get_multipath_force_enable(void);
void* nw_parameters_get_multipath_service(void);
void* nw_parameters_get_no_cellular_fallback(void);
void* nw_parameters_get_no_delay(void);
void* nw_parameters_get_no_fallback(void);
void* nw_parameters_get_no_fullstack_fallback(void);
void* nw_parameters_get_no_opaque_proxy(void);
void* nw_parameters_get_no_proxy(void);
void* nw_parameters_get_no_proxy_path_selection(void);
void* nw_parameters_get_no_transform(void);
void* nw_parameters_get_only_primary_requires_type(void);
void* nw_parameters_get_parent_id(void);
void* nw_parameters_get_pid(void);
void* nw_parameters_get_pid_to_uuid_mapping_failed(void);
void* nw_parameters_get_prefer_no_proxy(void);
void* nw_parameters_get_proc_uuid(void);
void* nw_parameters_get_prohibit_cellular(void);
void* nw_parameters_get_prohibit_constrained(void);
void* nw_parameters_get_prohibit_expensive(void);
void* nw_parameters_get_prohibit_joining_protocols(void);
void* nw_parameters_get_prohibit_roaming(void);
void* nw_parameters_get_protocol_count(void);
void* nw_parameters_get_proxy_bundle_id(void);
void* nw_parameters_get_receive_any_interface(void);
void* nw_parameters_get_reduce_buffering(void);
void* nw_parameters_get_required_address_family(void);
void* nw_parameters_get_required_interface_index(void);
void* nw_parameters_get_required_interface_subtype(void);
void* nw_parameters_get_required_interface_type(void);
void* nw_parameters_get_resolve_ptr(void);
void* nw_parameters_get_reuse_local_address(void);
void* nw_parameters_get_sanitized_url(void);
void* nw_parameters_get_self_bundle_id(void);
void* nw_parameters_get_server_mode(void);
void* nw_parameters_get_service_class(void);
void* nw_parameters_get_should_skip_probe_sampling(void);
void* nw_parameters_get_should_trust_invalid_certificates(void);
void* nw_parameters_get_sleep_keepalive_interval(void);
void* nw_parameters_get_ssl_cipher_suites(void);
void* nw_parameters_get_tfo(void);
void* nw_parameters_get_tfo_no_cookie(void);
void* nw_parameters_get_tls(void);
void* nw_parameters_get_tls13_enabled(void);
void* nw_parameters_get_tls_experiments_enabled(void);
void* nw_parameters_get_tls_session_ticket_enabled(void);
void* nw_parameters_get_traffic_class(void);
void* nw_parameters_get_uid(void);
void* nw_parameters_get_upper_transport_protocol(void);
void* nw_parameters_get_upper_transport_protocol_options(void);
void* nw_parameters_get_url(void);
void* nw_parameters_get_use_awdl(void);
void* nw_parameters_get_use_long_outstanding_queries(void);
void* nw_parameters_get_use_p2p(void);
void* nw_parameters_get_use_tfo_heuristics(void);
void* nw_parameters_has_delegated_proc_pid(void);
void* nw_parameters_has_delegated_proc_uuid(void);
void* nw_parameters_has_initial_data_payload(void);
void* nw_parameters_has_non_empty_proxy_configuration(void);
void* nw_parameters_has_preferred_netagents(void);
void* nw_parameters_has_prohibited_interface_subtypes(void);
void* nw_parameters_has_prohibited_interface_types(void);
void* nw_parameters_has_prohibited_interfaces(void);
void* nw_parameters_has_prohibited_netagents(void);
void* nw_parameters_has_protocol_at_level(void);
void* nw_parameters_has_protocol_in_stack(void);
void* nw_parameters_has_required_interface_subtype(void);
void* nw_parameters_has_required_interface_type(void);
void* nw_parameters_has_required_netagents(void);
void* nw_parameters_has_transforms(void);
void* nw_parameters_internal_iterate_protocol_stack(void);
void* nw_parameters_is_custom_protocols_only(void);
void* nw_parameters_is_equal(void);
void* nw_parameters_is_fallback(void);
void* nw_parameters_iterate_prohibited_interface_types(void);
void* nw_parameters_iterate_prohibited_interfaces(void);
void* nw_parameters_multipath_fallback_allowed(void);
void* nw_parameters_prohibit_interface(void);
void* nw_parameters_prohibit_interface_type(void);
void* nw_parameters_remove_definition_from_protocol_stack(void);
void* nw_parameters_remove_from_protocol_stack(void);
void* nw_parameters_set_account_id(void);
void* nw_parameters_set_allow_duplicate_state_updates(void);
void* nw_parameters_set_allow_joining_connected_fd(void);
void* nw_parameters_set_allow_socket_access(void);
void* nw_parameters_set_allow_unusable_addresses(void);
void* nw_parameters_set_always_open_listener_socket(void);
void* nw_parameters_set_attach_protocol_listener(void);
void* nw_parameters_set_avoided_netagent_classes(void);
void* nw_parameters_set_avoided_netagent_uuids(void);
void* nw_parameters_set_background_traffic_management(void);
void* nw_parameters_set_companion_link_upgrade_preference(void);
void* nw_parameters_set_companion_preference(void);
void* nw_parameters_set_context(void);
void* nw_parameters_set_custom_protocols_only(void);
void* nw_parameters_set_data_mode(void);
void* nw_parameters_set_delegated_unique_pid(void);
void* nw_parameters_set_desperate_ivan(void);
void* nw_parameters_set_discretionary(void);
void* nw_parameters_set_dry_run(void);
void* nw_parameters_set_ecn_mode(void);
void* nw_parameters_set_effective_audit_token(void);
void* nw_parameters_set_effective_bundle_id(void);
void* nw_parameters_set_effective_proxy_settings(void);
void* nw_parameters_set_expected_workload(void);
void* nw_parameters_set_expired_dns_behavior(void);
void* nw_parameters_set_fast_open_enabled(void);
void* nw_parameters_set_fast_open_force_enable(void);
void* nw_parameters_set_https_proxy_is_opaque(void);
void* nw_parameters_set_https_proxy_over_tls(void);
void* nw_parameters_set_ignore_resolver_stats(void);
void* nw_parameters_set_include_peer_to_peer(void);
void* nw_parameters_set_initial_data_payload(void);
void* nw_parameters_set_is_fallback(void);
void* nw_parameters_set_is_probe(void);
void* nw_parameters_set_keepalive_enabled(void);
void* nw_parameters_set_keepalive_idle_time(void);
void* nw_parameters_set_keepalive_interval(void);
void* nw_parameters_set_keepalive_offload(void);
void* nw_parameters_set_local_address(void);
void* nw_parameters_set_local_address_preference(void);
void* nw_parameters_set_local_endpoint(void);
void* nw_parameters_set_local_only(void);
void* nw_parameters_set_maximum_tls_protocol_version(void);
void* nw_parameters_set_metadata(void);
void* nw_parameters_set_minimum_tls_protocol_version(void);
void* nw_parameters_set_multipath(void);
void* nw_parameters_set_multipath_force_enable(void);
void* nw_parameters_set_multipath_service(void);
void* nw_parameters_set_no_cellular_fallback(void);
void* nw_parameters_set_no_delay(void);
void* nw_parameters_set_no_fallback(void);
void* nw_parameters_set_no_fullstack_fallback(void);
void* nw_parameters_set_no_opaque_proxy(void);
void* nw_parameters_set_no_proxy(void);
void* nw_parameters_set_no_proxy_path_selection(void);
void* nw_parameters_set_no_transform(void);
void* nw_parameters_set_only_primary_requires_type(void);
void* nw_parameters_set_parent_id(void);
void* nw_parameters_set_prefer_no_proxy(void);
void* nw_parameters_set_preferred_netagent_classes(void);
void* nw_parameters_set_preferred_netagent_uuids(void);
void* nw_parameters_set_proc_uuid(void);
void* nw_parameters_set_prohibit_constrained(void);
void* nw_parameters_set_prohibit_expensive(void);
void* nw_parameters_set_prohibit_joining_protocols(void);
void* nw_parameters_set_prohibit_roaming(void);
void* nw_parameters_set_prohibited_interface_subtypes(void);
void* nw_parameters_set_prohibited_interface_types(void);
void* nw_parameters_set_prohibited_interfaces(void);
void* nw_parameters_set_prohibited_netagent_classes(void);
void* nw_parameters_set_prohibited_netagent_uuids(void);
void* nw_parameters_set_protocol_instance(void);
void* nw_parameters_set_protocol_value(void);
void* nw_parameters_set_proxy_bundle_id(void);
void* nw_parameters_set_proxy_configuration(void);
void* nw_parameters_set_receive_any_interface(void);
void* nw_parameters_set_reduce_buffering(void);
void* nw_parameters_set_required_address_family(void);
void* nw_parameters_set_required_interface_subtype(void);
void* nw_parameters_set_required_interface_type(void);
void* nw_parameters_set_required_netagent_classes(void);
void* nw_parameters_set_required_netagent_uuids(void);
void* nw_parameters_set_resolve_ptr(void);
void* nw_parameters_set_reuse_local_address(void);
void* nw_parameters_set_server_mode(void);
void* nw_parameters_set_service_class(void);
void* nw_parameters_set_should_skip_probe_sampling(void);
void* nw_parameters_set_should_trust_invalid_certificates(void);
void* nw_parameters_set_sleep_keepalive_interval(void);
void* nw_parameters_set_source_application(void);
void* nw_parameters_set_source_application_by_bundle_id(void);
void* nw_parameters_set_source_application_by_bundle_id_internal(void);
void* nw_parameters_set_source_application_by_external_bundle_id(void);
void* nw_parameters_set_ssl_cipher_suites(void);
void* nw_parameters_set_tfo(void);
void* nw_parameters_set_tfo_no_cookie(void);
void* nw_parameters_set_tls(void);
void* nw_parameters_set_tls13_enabled(void);
void* nw_parameters_set_tls_enforce_ev(void);
void* nw_parameters_set_tls_experiments_enabled(void);
void* nw_parameters_set_tls_session_id(void);
void* nw_parameters_set_tls_session_ticket_enabled(void);
void* nw_parameters_set_traffic_class(void);
void* nw_parameters_set_transform_array(void);
void* nw_parameters_set_url(void);
void* nw_parameters_set_url_endpoint(void);
void* nw_parameters_set_use_awdl(void);
void* nw_parameters_set_use_long_outstanding_queries(void);
void* nw_parameters_set_use_p2p(void);
void* nw_parameters_set_use_tfo_heuristics(void);

#if _NW_BLOCKS
	nw_parameters_t nw_parameters_create_secure_tcp(nw_parameters_configure_protocol_block_t configure_tls, nw_parameters_configure_protocol_block_t configure_tcp);
#endif

void nw_parameters_set_e_proc_uuid(nw_parameters_t parameters, uuid_t uuid);
void nw_parameters_set_indefinite(nw_parameters_t parameters, bool value);
void nw_parameters_set_pid(nw_parameters_t parameters, pid_t pid);
void nw_parameters_set_uid(nw_parameters_t parameters, uid_t uid);

void nw_parameters_require_interface(nw_parameters_t parameters, nw_interface_t interface);

#endif // _NW_PARAMETERS_H_
