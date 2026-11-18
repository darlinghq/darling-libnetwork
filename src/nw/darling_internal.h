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

// Helpers shared by the connection, parameters, endpoint, error and options implementations.
// Not installed and not part of the Network API.

#ifndef _NW_DARLING_INTERNAL_H_
#define _NW_DARLING_INTERNAL_H_

#import <Foundation/Foundation.h>
#include <nw/error.h>
#include <nw/protocol_options.h>
#include <nw/parameters.h>
#include <nw/content_context.h>

enum {
	DARLING_NW_PROTOCOL_TCP = 1,
	DARLING_NW_PROTOCOL_UDP = 2,
};

// A +1 error object.
nw_error_t darling_nw_error_create(nw_error_domain_t domain, int code);

// A +1 options object for a built-in transport protocol, and the protocol of such an object (0 if it is another kind).
nw_protocol_options_t darling_nw_protocol_options_create(int protocol);
int darling_nw_protocol_options_protocol(nw_protocol_options_t options);
void darling_nw_protocol_options_set_no_delay(nw_protocol_options_t options, bool no_delay);
bool darling_nw_tcp_options_get_no_delay(nw_protocol_options_t options);

// What a connection needs from its parameters. The TLS options are NULL when the stack has no TLS.
int darling_nw_parameters_get_transport(nw_parameters_t parameters);
nw_protocol_options_t darling_nw_parameters_get_tls(nw_parameters_t parameters);
nw_protocol_options_t darling_nw_parameters_get_transport_options(nw_parameters_t parameters);

// A +1 content context with the given identifier and finality (the context of received data).
nw_content_context_t darling_nw_content_context_create(const char *identifier, bool is_final);

#endif
