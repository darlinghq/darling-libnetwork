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

#include <nw/base.h>

_NW_OPAQUE(nw_error);

void* nw_error_copy_cf_error(void);
void* nw_error_create_dns_error(void);
void* nw_error_create_error_with_inferred_domain(void);
void* nw_error_create_posix_error(void);
void* nw_error_create_tls_error(void);
void* nw_error_get_error_domain(void);
void* nw_error_is_equal(void);

int nw_error_get_error_code(nw_error_t error);

#endif // _NW_ERROR_H_
