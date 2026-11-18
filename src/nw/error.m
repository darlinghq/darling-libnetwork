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

#include <nw/internal/error.h>
#include <nw/internal/stubs.h>
#include "darling_internal.h"

@implementation _NW_CONCRETE_IMPL(nw_error)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_error_copy_cf_error);
DARLING_NW_STUB(nw_error_create_dns_error);
DARLING_NW_STUB(nw_error_create_error_with_inferred_domain);
DARLING_NW_STUB(nw_error_create_posix_error);
DARLING_NW_STUB(nw_error_create_tls_error);
DARLING_NW_STUB(nw_error_is_equal);

/**
 *
 * ~~~ fixed up stubs ~~~
 *
 */

nw_error_t darling_nw_error_create(nw_error_domain_t domain, int code) {
	NWConcrete_nw_error *error = [NWConcrete_nw_error new];
	error->domain = domain;
	error->code = code;
	return (nw_error_t)error;
}

nw_error_domain_t nw_error_get_error_domain(nw_error_t error) {
	return ((NWConcrete_nw_error *)error)->domain;
}

int nw_error_get_error_code(nw_error_t error) {
	return ((NWConcrete_nw_error *)error)->code;
}
