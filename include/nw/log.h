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

#ifndef _NW_LOG_H_
#define _NW_LOG_H_

#include <stdint.h>

#include <nw/base.h>

// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_log_delta_to_ms(void);
void* nw_log_ms_to_delta(void);
void* nw_log_ring_append(void);
void* nw_log_ring_copyout(void);
void* nw_log_ring_parse(void);
void* nw_log_ring_parse_count(void);
#endif // DARLING

// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* __nwlog_create_hash_from_private_string(void);
void* __nwlog_disable_simulate_crash_block(void);
void* __nwlog_dump_to_fd(void);
void* __nwlog_err_simulate_crash(void);
void* __nwlog_is_datapath_logging_enabled(void);
void* __nwlog_level_enabled(void);
void* __nwlog_obj(void);
void* __nwlog_override_fd(void);
void* __nwlog_override_simulate_crash_block(void);
void* __nwlog_pack(void);
void* __nwlog_register_helper(void);
void* __nwlog_run_with_lock(void);
void* __nwlog_salted_hash(void);
void* __nwlog_salted_hostname_hash(void);
void* __nwlog_snprintf_pack(void);
#endif // DARLING

// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nwlog_get_private_redacted(void);
#endif // DARLING
const char * NW_NON_NULL nwlog_get_string_for_dns_service_error(int32_t err) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nwlog_send_copy_to_fd(void);
#endif // DARLING

#endif // _NW_LOG_H_
