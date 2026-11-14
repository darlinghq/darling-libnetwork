/*
 This file is part of Darling.

 Copyright (C) 2026 Lubos Dolezel

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

// The nw_* prototypes the Swift Network overlay calls: every function is assigned to a pointer of its documented
// type, so a wrong argument or return type fails to compile (nullability is not part of that check; it was
// compared against the real SDK with the compiler's AST dump); the enums have the documented values. The
// library's implementation of these functions is a stub (it ignores its arguments and returns 0, NULL or false),
// so nothing is called. Compile against the Darling headers (-I <libnetwork>/include) or, with
// -DNW_TEST_PUBLIC_HEADER, against <Network/Network.h> of a real SDK; build with -Werror to catch incompatible
// pointer types. Prints PASS when everything holds; the exit code is the number of failed checks.

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifdef NW_TEST_PUBLIC_HEADER
#include <Network/Network.h>
#include <Security/SecProtocolMetadata.h>
#else
#include <nw/nw.h>
#endif

static int failures;

#define CHECK(cond) do { if (!(cond)) { printf("FAIL line %d: %s\n", __LINE__, #cond); failures++; } } while (0)

static void test_prototypes(void)
{
    void (*p_nw_tcp_options_set_no_delay)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_no_delay;
    CHECK(p_nw_tcp_options_set_no_delay != NULL);
    void (*p_nw_tcp_options_set_no_push)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_no_push;
    CHECK(p_nw_tcp_options_set_no_push != NULL);
    void (*p_nw_tcp_options_set_no_options)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_no_options;
    CHECK(p_nw_tcp_options_set_no_options != NULL);
    void (*p_nw_tcp_options_set_enable_keepalive)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_enable_keepalive;
    CHECK(p_nw_tcp_options_set_enable_keepalive != NULL);
    void (*p_nw_tcp_options_set_retransmit_fin_drop)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_retransmit_fin_drop;
    CHECK(p_nw_tcp_options_set_retransmit_fin_drop != NULL);
    void (*p_nw_tcp_options_set_disable_ack_stretching)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_disable_ack_stretching;
    CHECK(p_nw_tcp_options_set_disable_ack_stretching != NULL);
    void (*p_nw_tcp_options_set_enable_fast_open)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_enable_fast_open;
    CHECK(p_nw_tcp_options_set_enable_fast_open != NULL);
    void (*p_nw_tcp_options_set_disable_ecn)(nw_protocol_options_t _Nonnull, bool) = nw_tcp_options_set_disable_ecn;
    CHECK(p_nw_tcp_options_set_disable_ecn != NULL);
    void (*p_nw_tcp_options_set_keepalive_count)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_keepalive_count;
    CHECK(p_nw_tcp_options_set_keepalive_count != NULL);
    void (*p_nw_tcp_options_set_keepalive_idle_time)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_keepalive_idle_time;
    CHECK(p_nw_tcp_options_set_keepalive_idle_time != NULL);
    void (*p_nw_tcp_options_set_keepalive_interval)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_keepalive_interval;
    CHECK(p_nw_tcp_options_set_keepalive_interval != NULL);
    void (*p_nw_tcp_options_set_maximum_segment_size)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_maximum_segment_size;
    CHECK(p_nw_tcp_options_set_maximum_segment_size != NULL);
    void (*p_nw_tcp_options_set_connection_timeout)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_connection_timeout;
    CHECK(p_nw_tcp_options_set_connection_timeout != NULL);
    void (*p_nw_tcp_options_set_persist_timeout)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_persist_timeout;
    CHECK(p_nw_tcp_options_set_persist_timeout != NULL);
    void (*p_nw_tcp_options_set_retransmit_connection_drop_time)(nw_protocol_options_t _Nonnull, uint32_t) = nw_tcp_options_set_retransmit_connection_drop_time;
    CHECK(p_nw_tcp_options_set_retransmit_connection_drop_time != NULL);
    nw_protocol_options_t _Nonnull (*p_nw_tcp_create_options)(void) = nw_tcp_create_options;
    CHECK(p_nw_tcp_create_options != NULL);
    uint32_t (*p_nw_tcp_get_available_receive_buffer)(nw_protocol_metadata_t _Nonnull) = nw_tcp_get_available_receive_buffer;
    CHECK(p_nw_tcp_get_available_receive_buffer != NULL);
    uint32_t (*p_nw_tcp_get_available_send_buffer)(nw_protocol_metadata_t _Nonnull) = nw_tcp_get_available_send_buffer;
    CHECK(p_nw_tcp_get_available_send_buffer != NULL);
    nw_protocol_options_t _Nonnull (*p_nw_udp_create_options)(void) = nw_udp_create_options;
    CHECK(p_nw_udp_create_options != NULL);
    nw_protocol_metadata_t _Nonnull (*p_nw_udp_create_metadata)(void) = nw_udp_create_metadata;
    CHECK(p_nw_udp_create_metadata != NULL);
    void (*p_nw_udp_options_set_prefer_no_checksum)(nw_protocol_options_t _Nonnull, bool) = nw_udp_options_set_prefer_no_checksum;
    CHECK(p_nw_udp_options_set_prefer_no_checksum != NULL);
    nw_protocol_metadata_t _Nonnull (*p_nw_ip_create_metadata)(void) = nw_ip_create_metadata;
    CHECK(p_nw_ip_create_metadata != NULL);
    void (*p_nw_ip_options_set_version)(nw_protocol_options_t _Nonnull, nw_ip_version_t) = nw_ip_options_set_version;
    CHECK(p_nw_ip_options_set_version != NULL);
    void (*p_nw_ip_options_set_hop_limit)(nw_protocol_options_t _Nonnull, uint8_t) = nw_ip_options_set_hop_limit;
    CHECK(p_nw_ip_options_set_hop_limit != NULL);
    void (*p_nw_ip_options_set_use_minimum_mtu)(nw_protocol_options_t _Nonnull, bool) = nw_ip_options_set_use_minimum_mtu;
    CHECK(p_nw_ip_options_set_use_minimum_mtu != NULL);
    void (*p_nw_ip_options_set_disable_fragmentation)(nw_protocol_options_t _Nonnull, bool) = nw_ip_options_set_disable_fragmentation;
    CHECK(p_nw_ip_options_set_disable_fragmentation != NULL);
    void (*p_nw_ip_options_set_calculate_receive_time)(nw_protocol_options_t _Nonnull, bool) = nw_ip_options_set_calculate_receive_time;
    CHECK(p_nw_ip_options_set_calculate_receive_time != NULL);
    void (*p_nw_ip_metadata_set_ecn_flag)(nw_protocol_metadata_t _Nonnull, nw_ip_ecn_flag_t) = nw_ip_metadata_set_ecn_flag;
    CHECK(p_nw_ip_metadata_set_ecn_flag != NULL);
    nw_ip_ecn_flag_t (*p_nw_ip_metadata_get_ecn_flag)(nw_protocol_metadata_t _Nonnull) = nw_ip_metadata_get_ecn_flag;
    CHECK(p_nw_ip_metadata_get_ecn_flag != NULL);
    void (*p_nw_ip_metadata_set_service_class)(nw_protocol_metadata_t _Nonnull, nw_service_class_t) = nw_ip_metadata_set_service_class;
    CHECK(p_nw_ip_metadata_set_service_class != NULL);
    nw_service_class_t (*p_nw_ip_metadata_get_service_class)(nw_protocol_metadata_t _Nonnull) = nw_ip_metadata_get_service_class;
    CHECK(p_nw_ip_metadata_get_service_class != NULL);
    uint64_t (*p_nw_ip_metadata_get_receive_time)(nw_protocol_metadata_t _Nonnull) = nw_ip_metadata_get_receive_time;
    CHECK(p_nw_ip_metadata_get_receive_time != NULL);
    nw_interface_type_t (*p_nw_interface_get_type)(nw_interface_t _Nonnull) = nw_interface_get_type;
    CHECK(p_nw_interface_get_type != NULL);
    const char * _Nonnull (*p_nw_interface_get_name)(nw_interface_t _Nonnull) = nw_interface_get_name;
    CHECK(p_nw_interface_get_name != NULL);
}

static void test_enums(void)
{
    CHECK(nw_service_class_best_effort == 0 && nw_service_class_background == 1);
    CHECK(nw_service_class_interactive_video == 2 && nw_service_class_interactive_voice == 3);
    CHECK(nw_service_class_responsive_data == 4 && nw_service_class_signaling == 5);
    CHECK(nw_ip_version_any == 0 && nw_ip_version_4 == 4 && nw_ip_version_6 == 6);
    CHECK(nw_ip_ecn_flag_non_ect == 0 && nw_ip_ecn_flag_ect_1 == 1 && nw_ip_ecn_flag_ect_0 == 2 && nw_ip_ecn_flag_ce == 3);
    CHECK(sizeof(nw_service_class_t) == 4 && sizeof(nw_ip_version_t) == 4 && sizeof(nw_ip_ecn_flag_t) == 4);
    CHECK(nw_interface_type_other == 0 && nw_interface_type_wifi == 1 && nw_interface_type_cellular == 2);
    CHECK(nw_interface_type_wired == 3 && nw_interface_type_loopback == 4);
}


#define PROTO(ret, name, params) \
    ret (*p_##name) params = name; \
    CHECK(p_##name != NULL)

// The functions of the second part: connection, content context, endpoint, error, listener, parameters, path,
// protocol definition/metadata/stack and TLS. The block-taking ones use the handler types of the same shape. A function-pointer assignment does not
// check nullability, so the nullability was compared separately against the real SDK with the compiler AST.
static void test_prototypes_2(void)
{
    // functions that already had implementations: their prototypes now carry the nullability too
    PROTO(nw_connection_t _Nonnull, nw_connection_create, (nw_endpoint_t _Nonnull, nw_parameters_t _Nonnull));
    PROTO(void, nw_connection_start, (nw_connection_t _Nonnull));
    PROTO(void, nw_connection_cancel, (nw_connection_t _Nonnull));
    PROTO(nw_endpoint_t _Nonnull, nw_connection_copy_endpoint, (nw_connection_t _Nonnull));
    PROTO(void, nw_connection_set_queue, (nw_connection_t _Nonnull, dispatch_queue_t _Nonnull));
    PROTO(void, nw_connection_send, (nw_connection_t _Nonnull, dispatch_data_t _Nullable, nw_content_context_t _Nonnull, bool, nw_connection_send_completion_t _Nonnull));
    PROTO(void, nw_connection_receive, (nw_connection_t _Nonnull, uint32_t, uint32_t, nw_connection_receive_completion_t _Nonnull));
    PROTO(void, nw_connection_set_state_changed_handler, (nw_connection_t _Nonnull, nw_connection_state_changed_handler_t _Nullable));
    PROTO(nw_endpoint_t _Nonnull, nw_endpoint_create_host, (const char * _Nonnull, const char * _Nonnull));
    PROTO(const char * _Nonnull, nw_endpoint_get_hostname, (nw_endpoint_t _Nonnull));
    PROTO(uint16_t, nw_endpoint_get_port, (nw_endpoint_t _Nonnull));
    PROTO(int, nw_error_get_error_code, (nw_error_t _Nonnull));
    PROTO(sec_protocol_options_t _Nonnull, nw_tls_copy_sec_protocol_options, (nw_protocol_options_t _Nonnull));
    PROTO(nw_path_monitor_t _Nonnull, nw_path_monitor_create, (void));
    PROTO(nw_path_monitor_t _Nonnull, nw_path_monitor_create_with_type, (nw_interface_type_t));
    PROTO(void, nw_path_monitor_set_queue, (nw_path_monitor_t _Nonnull, dispatch_queue_t _Nonnull));
    PROTO(void, nw_path_monitor_start, (nw_path_monitor_t _Nonnull));
    PROTO(void, nw_path_monitor_cancel, (nw_path_monitor_t _Nonnull));
    PROTO(void, nw_path_monitor_set_update_handler, (nw_path_monitor_t _Nonnull, nw_path_monitor_update_handler_t _Nonnull));
    PROTO(nw_path_status_t, nw_path_get_status, (nw_path_t _Nonnull));
    PROTO(bool, nw_path_is_expensive, (nw_path_t _Nonnull));
    PROTO(bool, nw_path_has_ipv4, (nw_path_t _Nonnull));
    PROTO(bool, nw_path_has_ipv6, (nw_path_t _Nonnull));
    PROTO(bool, nw_path_has_dns, (nw_path_t _Nonnull));
    PROTO(bool, nw_path_uses_interface_type, (nw_path_t _Nonnull, nw_interface_type_t));
    PROTO(bool, nw_path_is_equal, (nw_path_t _Nonnull, nw_path_t _Nonnull));
    PROTO(void, nw_path_enumerate_interfaces, (nw_path_t _Nonnull, nw_path_enumerate_interfaces_block_t _Nonnull));
    PROTO(uint32_t, nw_interface_get_index, (nw_interface_t _Nonnull));

    // advertise descriptor
    PROTO(nw_advertise_descriptor_t _Nullable, nw_advertise_descriptor_create_bonjour_service, (const char * _Nullable, const char * _Nonnull, const char * _Nullable));
    PROTO(void, nw_advertise_descriptor_set_txt_record, (nw_advertise_descriptor_t _Nonnull, const void * _Nullable, size_t));

    // connection
    PROTO(void, nw_connection_batch, (nw_connection_t _Nonnull, void (^ _Nonnull)(void)));
    PROTO(void, nw_connection_cancel_current_endpoint, (nw_connection_t _Nonnull));
    PROTO(nw_path_t _Nullable, nw_connection_copy_current_path, (nw_connection_t _Nonnull));
    PROTO(nw_protocol_metadata_t _Nullable, nw_connection_copy_protocol_metadata, (nw_connection_t _Nonnull, nw_protocol_definition_t _Nonnull));
    PROTO(void, nw_connection_force_cancel, (nw_connection_t _Nonnull));
    PROTO(uint32_t, nw_connection_get_maximum_datagram_size, (nw_connection_t _Nonnull));
    PROTO(void, nw_connection_receive_message, (nw_connection_t _Nonnull, nw_connection_receive_completion_t _Nonnull));
    PROTO(void, nw_connection_restart, (nw_connection_t _Nonnull));
    PROTO(void, nw_connection_set_better_path_available_handler, (nw_connection_t _Nonnull, nw_connection_boolean_event_handler_t _Nullable));
    PROTO(void, nw_connection_set_path_changed_handler, (nw_connection_t _Nonnull, nw_connection_path_event_handler_t _Nullable));
    PROTO(void, nw_connection_set_viability_changed_handler, (nw_connection_t _Nonnull, nw_connection_boolean_event_handler_t _Nullable));

    // content context
    PROTO(nw_content_context_t _Nonnull, nw_content_context_create, (const char * _Nonnull));
    PROTO(const char * _Nonnull, nw_content_context_get_identifier, (nw_content_context_t _Nonnull));
    PROTO(bool, nw_content_context_get_is_final, (nw_content_context_t _Nonnull));
    PROTO(void, nw_content_context_set_is_final, (nw_content_context_t _Nonnull, bool));
    PROTO(void, nw_content_context_set_expiration_milliseconds, (nw_content_context_t _Nonnull, uint64_t));
    PROTO(void, nw_content_context_set_relative_priority, (nw_content_context_t _Nonnull, double));
    PROTO(void, nw_content_context_set_antecedent, (nw_content_context_t _Nonnull, nw_content_context_t _Nullable));
    PROTO(void, nw_content_context_set_metadata_for_protocol, (nw_content_context_t _Nonnull, nw_protocol_metadata_t _Nonnull));
    PROTO(nw_protocol_metadata_t _Nullable, nw_content_context_copy_protocol_metadata, (nw_content_context_t _Nonnull, nw_protocol_definition_t _Nonnull));
    PROTO(void, nw_content_context_foreach_protocol_metadata, (nw_content_context_t _Nonnull, void (^ _Nonnull)(nw_protocol_definition_t _Nonnull, nw_protocol_metadata_t _Nonnull)));

    // endpoint
    PROTO(nw_endpoint_t _Nonnull, nw_endpoint_create_address, (const struct sockaddr * _Nonnull));
    PROTO(nw_endpoint_t _Nonnull, nw_endpoint_create_bonjour_service, (const char * _Nonnull, const char * _Nonnull, const char * _Nonnull));
    PROTO(nw_endpoint_type_t, nw_endpoint_get_type, (nw_endpoint_t _Nonnull));
    PROTO(const struct sockaddr * _Nonnull, nw_endpoint_get_address, (nw_endpoint_t _Nonnull));
    PROTO(const char * _Nonnull, nw_endpoint_get_bonjour_service_name, (nw_endpoint_t _Nonnull));
    PROTO(const char * _Nonnull, nw_endpoint_get_bonjour_service_type, (nw_endpoint_t _Nonnull));
    PROTO(const char * _Nonnull, nw_endpoint_get_bonjour_service_domain, (nw_endpoint_t _Nonnull));
    PROTO(char * _Nonnull, nw_endpoint_copy_address_string, (nw_endpoint_t _Nonnull));

    // error
    PROTO(nw_error_domain_t, nw_error_get_error_domain, (nw_error_t _Nonnull));

    // listener
    PROTO(nw_listener_t _Nullable, nw_listener_create, (nw_parameters_t _Nonnull));
    PROTO(nw_listener_t _Nullable, nw_listener_create_with_port, (const char * _Nonnull, nw_parameters_t _Nonnull));
    PROTO(nw_listener_t _Nullable, nw_listener_create_with_connection, (nw_connection_t _Nonnull, nw_parameters_t _Nonnull));
    PROTO(void, nw_listener_set_queue, (nw_listener_t _Nonnull, dispatch_queue_t _Nonnull));
    PROTO(void, nw_listener_start, (nw_listener_t _Nonnull));
    PROTO(void, nw_listener_cancel, (nw_listener_t _Nonnull));
    PROTO(uint16_t, nw_listener_get_port, (nw_listener_t _Nonnull));
    PROTO(void, nw_listener_set_new_connection_handler, (nw_listener_t _Nonnull, nw_listener_new_connection_handler_t _Nullable));
    PROTO(void, nw_listener_set_state_changed_handler, (nw_listener_t _Nonnull, nw_listener_state_changed_handler_t _Nullable));
    PROTO(void, nw_listener_set_advertise_descriptor, (nw_listener_t _Nonnull, nw_advertise_descriptor_t _Nullable));
    PROTO(void, nw_listener_set_advertised_endpoint_changed_handler, (nw_listener_t _Nonnull, nw_listener_advertised_endpoint_changed_handler_t _Nullable));

    // parameters
    PROTO(nw_parameters_t _Nonnull, nw_parameters_create, (void));
    PROTO(nw_parameters_t _Nonnull, nw_parameters_copy, (nw_parameters_t _Nonnull));
    PROTO(nw_protocol_stack_t _Nonnull, nw_parameters_copy_default_protocol_stack, (nw_parameters_t _Nonnull));
    PROTO(nw_endpoint_t _Nullable, nw_parameters_copy_local_endpoint, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_local_endpoint, (nw_parameters_t _Nonnull, nw_endpoint_t _Nullable));
    PROTO(nw_interface_t _Nullable, nw_parameters_copy_required_interface, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_require_interface, (nw_parameters_t _Nonnull, nw_interface_t _Nullable));
    PROTO(nw_interface_type_t, nw_parameters_get_required_interface_type, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_required_interface_type, (nw_parameters_t _Nonnull, nw_interface_type_t));
    PROTO(void, nw_parameters_prohibit_interface, (nw_parameters_t _Nonnull, nw_interface_t _Nonnull));
    PROTO(void, nw_parameters_clear_prohibited_interfaces, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_iterate_prohibited_interfaces, (nw_parameters_t _Nonnull, bool (^ _Nonnull)(nw_interface_t _Nonnull)));
    PROTO(void, nw_parameters_prohibit_interface_type, (nw_parameters_t _Nonnull, nw_interface_type_t));
    PROTO(void, nw_parameters_clear_prohibited_interface_types, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_iterate_prohibited_interface_types, (nw_parameters_t _Nonnull, bool (^ _Nonnull)(nw_interface_type_t)));
    PROTO(bool, nw_parameters_get_local_only, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_local_only, (nw_parameters_t _Nonnull, bool));
    PROTO(bool, nw_parameters_get_prohibit_expensive, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_prohibit_expensive, (nw_parameters_t _Nonnull, bool));
    PROTO(bool, nw_parameters_get_prefer_no_proxy, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_prefer_no_proxy, (nw_parameters_t _Nonnull, bool));
    PROTO(bool, nw_parameters_get_reuse_local_address, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_reuse_local_address, (nw_parameters_t _Nonnull, bool));
    PROTO(bool, nw_parameters_get_fast_open_enabled, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_fast_open_enabled, (nw_parameters_t _Nonnull, bool));
    PROTO(bool, nw_parameters_get_include_peer_to_peer, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_include_peer_to_peer, (nw_parameters_t _Nonnull, bool));
    PROTO(nw_service_class_t, nw_parameters_get_service_class, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_service_class, (nw_parameters_t _Nonnull, nw_service_class_t));
    PROTO(nw_multipath_service_t, nw_parameters_get_multipath_service, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_multipath_service, (nw_parameters_t _Nonnull, nw_multipath_service_t));
    PROTO(nw_parameters_expired_dns_behavior_t, nw_parameters_get_expired_dns_behavior, (nw_parameters_t _Nonnull));
    PROTO(void, nw_parameters_set_expired_dns_behavior, (nw_parameters_t _Nonnull, nw_parameters_expired_dns_behavior_t));

    PROTO(nw_parameters_t _Nonnull, nw_parameters_create_custom_ip, (uint8_t, nw_parameters_configure_protocol_block_t _Nonnull));

    // path
    PROTO(nw_endpoint_t _Nullable, nw_path_copy_effective_local_endpoint, (nw_path_t _Nonnull));
    PROTO(nw_endpoint_t _Nullable, nw_path_copy_effective_remote_endpoint, (nw_path_t _Nonnull));

    // protocol definitions, metadata, options and stack
    PROTO(nw_protocol_definition_t _Nonnull, nw_protocol_copy_ip_definition, (void));
    PROTO(nw_protocol_definition_t _Nonnull, nw_protocol_copy_tcp_definition, (void));
    PROTO(nw_protocol_definition_t _Nonnull, nw_protocol_copy_tls_definition, (void));
    PROTO(nw_protocol_definition_t _Nonnull, nw_protocol_copy_udp_definition, (void));
    PROTO(bool, nw_protocol_definition_is_equal, (nw_protocol_definition_t _Nonnull, nw_protocol_definition_t _Nonnull));
    PROTO(bool, nw_protocol_metadata_is_ip, (nw_protocol_metadata_t _Nonnull));
    PROTO(bool, nw_protocol_metadata_is_tcp, (nw_protocol_metadata_t _Nonnull));
    PROTO(bool, nw_protocol_metadata_is_tls, (nw_protocol_metadata_t _Nonnull));
    PROTO(bool, nw_protocol_metadata_is_udp, (nw_protocol_metadata_t _Nonnull));
    PROTO(nw_protocol_definition_t _Nonnull, nw_protocol_options_copy_definition, (nw_protocol_options_t _Nonnull));
    PROTO(void, nw_protocol_stack_prepend_application_protocol, (nw_protocol_stack_t _Nonnull, nw_protocol_options_t _Nonnull));
    PROTO(void, nw_protocol_stack_clear_application_protocols, (nw_protocol_stack_t _Nonnull));
    PROTO(void, nw_protocol_stack_iterate_application_protocols, (nw_protocol_stack_t _Nonnull, void (^ _Nonnull)(nw_protocol_options_t _Nonnull)));
    PROTO(void, nw_protocol_stack_set_transport_protocol, (nw_protocol_stack_t _Nonnull, nw_protocol_options_t _Nonnull));
    PROTO(nw_protocol_options_t _Nullable, nw_protocol_stack_copy_transport_protocol, (nw_protocol_stack_t _Nonnull));
    PROTO(nw_protocol_options_t _Nullable, nw_protocol_stack_copy_internet_protocol, (nw_protocol_stack_t _Nonnull));

    // TLS
    PROTO(nw_protocol_options_t _Nonnull, nw_tls_create_options, (void));
    PROTO(sec_protocol_metadata_t _Nonnull, nw_tls_copy_sec_protocol_metadata, (nw_protocol_metadata_t _Nonnull));
}

#ifndef NW_TEST_PUBLIC_HEADER
// Functions the Swift Network overlay calls that are not part of the public SDK (it declares them itself in its
// shim header, with these types), so the real-SDK build leaves them out.
static void test_private_prototypes(void)
{
    PROTO(nw_endpoint_t _Nullable, nw_endpoint_create_unix, (const char * _Nonnull));
    PROTO(nw_interface_t _Nullable, nw_endpoint_copy_interface, (nw_endpoint_t _Nonnull));
    PROTO(void, nw_endpoint_set_interface, (nw_endpoint_t _Nonnull, nw_interface_t _Nullable));
    PROTO(nw_interface_t _Nullable, nw_interface_create_with_name, (const char * _Nonnull));
    PROTO(nw_interface_t _Nullable, nw_interface_create_with_index, (uint32_t));
    PROTO(const char * _Nonnull, nwlog_get_string_for_dns_service_error, (int32_t));
}
#endif

// The data symbols that stand for the default message, default stream and final message contexts and for the
// idempotent send completion (the NW_CONNECTION_* macros of the original framework expand to them).
static void test_context_symbols(void)
{
    const nw_content_context_t _Nonnull *p_message = &_nw_content_context_default_message;
    const nw_content_context_t _Nonnull *p_stream = &_nw_content_context_default_stream;
    const nw_content_context_t _Nonnull *p_final = &_nw_content_context_final_send;
    const nw_connection_send_completion_t _Nonnull *p_idempotent = &_nw_connection_send_idempotent_content;
    CHECK(*p_message != NULL && *p_stream != NULL && *p_final != NULL && *p_idempotent != NULL);
    CHECK(*p_message != *p_stream && *p_message != *p_final && *p_stream != *p_final);
}

static void test_enums_2(void)
{
    CHECK(nw_endpoint_type_invalid == 0 && nw_endpoint_type_address == 1);
    CHECK(nw_endpoint_type_host == 2 && nw_endpoint_type_bonjour_service == 3);
    CHECK(nw_error_domain_invalid == 0 && nw_error_domain_posix == 1);
    CHECK(nw_error_domain_dns == 2 && nw_error_domain_tls == 3);
    CHECK(nw_listener_state_invalid == 0 && nw_listener_state_waiting == 1 && nw_listener_state_ready == 2);
    CHECK(nw_listener_state_failed == 3 && nw_listener_state_cancelled == 4);
    CHECK(nw_multipath_service_disabled == 0 && nw_multipath_service_handover == 1);
    CHECK(nw_multipath_service_interactive == 2 && nw_multipath_service_aggregate == 3);
    CHECK(nw_parameters_expired_dns_behavior_default == 0 && nw_parameters_expired_dns_behavior_allow == 1);
    CHECK(nw_parameters_expired_dns_behavior_prohibit == 2);
    CHECK(sizeof(nw_endpoint_type_t) == 4 && sizeof(nw_error_domain_t) == 4 && sizeof(nw_listener_state_t) == 4);
    CHECK(sizeof(nw_multipath_service_t) == 4 && sizeof(nw_parameters_expired_dns_behavior_t) == 4);
}

int main(void)
{
    test_prototypes();
    test_enums();
    test_prototypes_2();
    test_enums_2();
    test_context_symbols();
#ifndef NW_TEST_PUBLIC_HEADER
    test_private_prototypes();
#endif
    if (!failures) printf("PASS\n");
    return failures;
}
