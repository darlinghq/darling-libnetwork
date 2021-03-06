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

#ifndef _NW_FD_WRAPPER_H_
#define _NW_FD_WRAPPER_H_

#include <nw/base.h>

_NW_OPAQUE(nw_fd_wrapper);

void* nw_fd_wrapper_close(void);
void* nw_fd_wrapper_create(void);
void* nw_fd_wrapper_get_fd(void);
void* nw_fd_wrapper_guard(void);
void* nw_fd_wrapper_is_guarded(void);

#endif // _NW_FD_WRAPPER_H_
