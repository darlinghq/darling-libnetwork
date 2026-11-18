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

#include <nw/internal/protocol_options.h>
#include <nw/internal/stubs.h>
#include "darling_internal.h"

@implementation _NW_CONCRETE_IMPL(nw_protocol_options)

DARLING_NW_CLASS_STUB;

@end

// nw_protocol_options_access_handle is in darling_tls.m.
DARLING_NW_STUB(nw_protocol_options_copy);
DARLING_NW_STUB_FUNCTION(nw_protocol_definition_t NW_NON_NULL, nw_protocol_options_copy_definition, (nw_protocol_options_t NW_NON_NULL options));
DARLING_NW_STUB(nw_protocol_options_get_hash);
DARLING_NW_STUB(nw_protocol_options_get_log_id_num);
DARLING_NW_STUB(nw_protocol_options_get_log_id_str);
DARLING_NW_STUB(nw_protocol_options_is_quic);
DARLING_NW_STUB(nw_protocol_options_is_quic_connection);
DARLING_NW_STUB(nw_protocol_options_is_quic_stream);
DARLING_NW_STUB(nw_protocol_options_is_tcp);

nw_protocol_options_t darling_nw_protocol_options_create(int protocol) {
	NWConcrete_nw_protocol_options *options = [NWConcrete_nw_protocol_options new];
	options->protocol = protocol;
	return (nw_protocol_options_t)options;
}

int darling_nw_protocol_options_protocol(nw_protocol_options_t options) {
	if (![(id)options isKindOfClass:[NWConcrete_nw_protocol_options class]])
		return 0;
	return ((NWConcrete_nw_protocol_options *)options)->protocol;
}

bool darling_nw_tcp_options_get_no_delay(nw_protocol_options_t options) {
	return darling_nw_protocol_options_protocol(options) == DARLING_NW_PROTOCOL_TCP && ((NWConcrete_nw_protocol_options *)options)->no_delay;
}

void darling_nw_protocol_options_set_no_delay(nw_protocol_options_t options, bool no_delay) {
	if (darling_nw_protocol_options_protocol(options) == DARLING_NW_PROTOCOL_TCP)
		((NWConcrete_nw_protocol_options *)options)->no_delay = no_delay;
}
