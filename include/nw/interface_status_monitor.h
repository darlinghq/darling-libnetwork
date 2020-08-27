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

#ifndef _NW_INTERFACE_STATUS_MONITOR_H_
#define _NW_INTERFACE_STATUS_MONITOR_H_

#include <nw/base.h>

_NW_OPAQUE(nw_interface_status_monitor);

void* nw_interface_status_monitor_cancel(void);
void* nw_interface_status_monitor_copy_interface(void);
void* nw_interface_status_monitor_set_packet_event_handler(void);
void* nw_interface_status_monitor_set_update_handler(void);

#endif // _NW_INTERFACE_STATUS_MONITOR_H_
