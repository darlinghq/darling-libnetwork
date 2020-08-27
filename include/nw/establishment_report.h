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

#ifndef _NW_ESTABLISHMENT_REPORT_H_
#define _NW_ESTABLISHMENT_REPORT_H_

#include <nw/base.h>

_NW_OPAQUE(nw_establishment_report);

void* nw_establishment_report_copy_dictionary(void);
void* nw_establishment_report_copy_proxy_endpoint(void);
void* nw_establishment_report_create_from_dictionary(void);
void* nw_establishment_report_enumerate_protocols(void);
void* nw_establishment_report_enumerate_resolutions(void);
void* nw_establishment_report_get_attempt_started_after_milliseconds(void);
void* nw_establishment_report_get_duration_milliseconds(void);
void* nw_establishment_report_get_flow_started_after_milliseconds(void);
void* nw_establishment_report_get_previous_attempt_count(void);
void* nw_establishment_report_get_proxy_configured(void);
void* nw_establishment_report_get_resolution_started_after_milliseconds(void);
void* nw_establishment_report_get_used_proxy(void);

#endif // _NW_ESTABLISHMENT_REPORT_H_
