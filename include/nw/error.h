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

#ifndef _NW_ERROR_H_
#define _NW_ERROR_H_

#include <dns_sd.h>

#include <nw/base.h>

_NW_OPAQUE(nw_error);

typedef _NW_ENUM(int, nw_error_domain_t) {
	nw_error_domain_invalid = 0,
	nw_error_domain_posix = 1,
	nw_error_domain_dns = 2,
	nw_error_domain_tls = 3,
};

// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_error_copy_cf_error(void);
void* nw_error_create_dns_error(void);
void* nw_error_create_error_with_inferred_domain(void);
void* nw_error_create_posix_error(void);
void* nw_error_create_tls_error(void);
#endif // DARLING
nw_error_domain_t nw_error_get_error_domain(nw_error_t NW_NON_NULL error) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_error_is_equal(void);
#endif // DARLING

int nw_error_get_error_code(nw_error_t NW_NON_NULL error) NW_AVAILABLE_2018;

#endif // _NW_ERROR_H_
