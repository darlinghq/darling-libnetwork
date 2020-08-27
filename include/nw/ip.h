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

#ifndef _NW_IP_H_
#define _NW_IP_H_

void* nw_ip_create_metadata(void);
void* nw_ip_create_options(void);

void* nw_ip_metadata_get_ecn_flag(void);
void* nw_ip_metadata_get_receive_time(void);
void* nw_ip_metadata_get_service_class(void);
void* nw_ip_metadata_set_ecn_flag(void);
void* nw_ip_metadata_set_service_class(void);

void* nw_ip_options_set_calculate_receive_time(void);
void* nw_ip_options_set_disable_fragmentation(void);
void* nw_ip_options_set_hop_limit(void);
void* nw_ip_options_set_local_address_preference(void);
void* nw_ip_options_set_use_minimum_mtu(void);
void* nw_ip_options_set_version(void);

#endif // _NW_IP_H_
