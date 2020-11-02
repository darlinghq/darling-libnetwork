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

#include <nw/nw.h>
#include <nw/internal/stubs.h>
DARLING_NW_STUB(__nw_create_backtrace_string);
DARLING_NW_STUB(__nw_should_simulate_crash);
DARLING_NW_STUB(copyassocids);
DARLING_NW_STUB(copyconnids);
DARLING_NW_STUB(copyconninfo);
DARLING_NW_STUB(copymptcpinfo);
DARLING_NW_STUB(freeassocids);
DARLING_NW_STUB(freeconnids);
DARLING_NW_STUB(freeconninfo);
DARLING_NW_STUB(freemptcpinfo);
DARLING_NW_STUB(in6_pseudo);
DARLING_NW_STUB(in_addword);
DARLING_NW_STUB(in_adjust_cksum);
DARLING_NW_STUB(in_finalize_cksum);
DARLING_NW_STUB(in_pseudo);
DARLING_NW_STUB(inet_cksum);
DARLING_NW_STUB(nw_SSLAllocBuffer);
DARLING_NW_STUB(nw_SSLCopyBuffer);
DARLING_NW_STUB(nw_SSLCopyBufferFromData);
DARLING_NW_STUB(nw_SSLFreeBuffer);
DARLING_NW_STUB(nw_allow_use_of_dispatch);
DARLING_NW_STUB(nw_allow_use_of_dispatch_internal);
DARLING_NW_STUB(nw_data_mode_to_string);
DARLING_NW_STUB(nw_dispatch_data_is_equal);
DARLING_NW_STUB(nw_is_dispatch_allowed);
DARLING_NW_STUB(nw_link_get_flow_control_status);
DARLING_NW_STUB(nw_link_set_flow_control_status);
DARLING_NW_STUB(nw_mem_buffer_allocate);
DARLING_NW_STUB(nw_mem_buffer_free);
DARLING_NW_STUB(nw_mpkl_child_has_forked);
DARLING_NW_STUB(nw_mpkl_copy_log_object);
DARLING_NW_STUB(nw_packet_hash_table_create);
DARLING_NW_STUB(nw_settings_register_boringssl_log_debug_updates);
DARLING_NW_STUB(nw_settings_register_networkd_privileged);
DARLING_NW_STUB(nw_settings_register_quic_log_debug_updates);
DARLING_NW_STUB(nw_settings_setup_atfork);
DARLING_NW_STUB(nw_socket_protocol_identifier);
DARLING_NW_STUB(nw_unordered_xpc_array_is_equal);
DARLING_NW_STUB(nw_utf8_validator_init);
DARLING_NW_STUB(nw_utf8_validator_is_parsing);
DARLING_NW_STUB(nw_utf8_validator_parse);
DARLING_NW_STUB(sa_dst_compare);
DARLING_NW_STUB(sa_dst_compare_no_dependencies);
DARLING_NW_STUB(sa_dst_compare_no_stats);
DARLING_NW_STUB(tcp_fallback_watcher_fallback_inuse);
DARLING_NW_STUB(udp_validate_cksum);
DARLING_NW_STUB(validate_tcp_cksum);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */

void* network_retain(void* network_object) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

void network_release(void* network_object) {
	DARLING_NW_STUB_PRINT;
};

void* nw_retain(void* nw_object) {
	DARLING_NW_STUB_PRINT;
	return NULL;
};

void nw_release(void* nw_object) {
	DARLING_NW_STUB_PRINT;
};
