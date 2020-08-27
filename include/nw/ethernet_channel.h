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

#ifndef _NW_ETHERNET_CHANNEL_H_
#define _NW_ETHERNET_CHANNEL_H_

#include <nw/base.h>

_NW_OPAQUE(nw_ethernet_channel);

void* nw_ethernet_channel_cancel(void);
void* nw_ethernet_channel_create(void);
void* nw_ethernet_channel_send(void);
void* nw_ethernet_channel_set_queue(void);
void* nw_ethernet_channel_set_receive_handler(void);
void* nw_ethernet_channel_set_state_changed_handler(void);
void* nw_ethernet_channel_start(void);

#endif // _NW_ETHERNET_CHANNEL_H_
