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

#ifndef _NW_ACTIVITY_H_
#define _NW_ACTIVITY_H_

#include <nw/base.h>

_NW_OPAQUE(nw_activity);

void* nw_activity_activate(void);
void* nw_activity_child_has_forked(void);
void* nw_activity_complete_with_reason(void);
void* nw_activity_copy_log_object(void);
void* nw_activity_copy_parent_activity(void);
void* nw_activity_copy_redacted_description(void);
void* nw_activity_copy_xpc_token(void);
void* nw_activity_create(void);
void* nw_activity_create_from_token(void);
void* nw_activity_create_from_xpc_token(void);
void* nw_activity_create_retry(void);
void* nw_activity_deep_is_equal(void);
void* nw_activity_domain_and_label_to_string(void);
void* nw_activity_domain_is_valid(void);
void* nw_activity_domain_to_string(void);
void* nw_activity_duration_exceeds_threshold(void);
void* nw_activity_duration_threshold_for_label(void);
void* nw_activity_get_activation_time(void);
void* nw_activity_get_completion_reason(void);
void* nw_activity_get_domain(void);
void* nw_activity_get_duration(void);
void* nw_activity_get_investigation_identifier(void);
void* nw_activity_get_is_retry(void);
void* nw_activity_get_label(void);
void* nw_activity_get_reporting_strategy(void);
void* nw_activity_get_token(void);
void* nw_activity_has_global_investigation_identifier(void);
void* nw_activity_has_investigation_identifier(void);
void* nw_activity_is_activated(void);
void* nw_activity_is_complete(void);
void* nw_activity_is_equal(void);
void* nw_activity_is_lightweight_representation(void);
void* nw_activity_is_selected_for_reporting(void);
void* nw_activity_label_is_valid(void);
void* nw_activity_label_to_string(void);
void* nw_activity_set_investigation_identifier(void);
void* nw_activity_set_parent_activity(void);
void* nw_activity_set_reporting_strategy(void);
void* nw_activity_should_report_to_destination(void);
void* nw_activity_uuid_is_selected_for_reporting(void);

#endif // _NW_ACTIVITY_H_
