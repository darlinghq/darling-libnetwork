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

// The nw_* prototypes the Swift Network overlay calls for the TCP, UDP and IP protocol options and metadata:
// every function is assigned to a pointer of its documented type, so a wrong argument or return type (or
// nullability) fails to compile; the enums have the documented values. The library's implementation of these
// functions is a stub (it ignores its arguments and returns 0, NULL or false), so the calls below only check
// that they are safe with a NULL object. Compile against the Darling headers (-I <libnetwork>/include) or,
// with -DNW_TEST_PUBLIC_HEADER, against <Network/Network.h> of a real SDK; build with -Werror to catch
// incompatible pointer types. Prints PASS when everything holds; the exit code is the number of failed checks.

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#ifdef NW_TEST_PUBLIC_HEADER
#include <Network/Network.h>
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

int main(void)
{
    test_prototypes();
    test_enums();
    if (!failures) printf("PASS\n");
    return failures;
}
