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

#ifndef _NW_SERVICE_CONNECTOR_H_
#define _NW_SERVICE_CONNECTOR_H_

#include <nw/base.h>

_NW_OPAQUE(nw_service_connector);

void* nw_service_connector_cancel(void);
void* nw_service_connector_cancel_active_connection(void);
void* nw_service_connector_cancel_request(void);
void* nw_service_connector_create(void);
void* nw_service_connector_set_service_available_block(void);
void* nw_service_connector_start(void);
void* nw_service_connector_start_request(void);

#endif // _NW_SERVICE_CONNECTOR_H_
