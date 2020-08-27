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

#ifndef _NW_FRAMER_H_
#define _NW_FRAMER_H_

#include <nw/base.h>

_NW_OPAQUE(nw_framer);

void* nw_framer_async(void);
void* nw_framer_copy_local_endpoint(void);
void* nw_framer_copy_options(void);
void* nw_framer_copy_parameters(void);
void* nw_framer_copy_remote_endpoint(void);
void* nw_framer_create_definition(void);
void* nw_framer_create_options(void);
void* nw_framer_deliver_input(void);
void* nw_framer_deliver_input_no_copy(void);
void* nw_framer_mark_failed_with_error(void);
void* nw_framer_mark_ready(void);
void* nw_framer_message_access_value(void);
void* nw_framer_message_copy_object_value(void);
void* nw_framer_message_copy_original_message(void);
void* nw_framer_message_create(void);
void* nw_framer_message_create_reply(void);
void* nw_framer_message_set_object_value(void);
void* nw_framer_message_set_value(void);
void* nw_framer_parse_input(void);
void* nw_framer_parse_output(void);
void* nw_framer_pass_through_input(void);
void* nw_framer_pass_through_output(void);
void* nw_framer_prepend_application_protocol(void);
void* nw_framer_protocol_create_message(void);
void* nw_framer_schedule_wakeup(void);
void* nw_framer_set_cleanup_handler(void);
void* nw_framer_set_input_handler(void);
void* nw_framer_set_output_handler(void);
void* nw_framer_set_stop_handler(void);
void* nw_framer_set_wakeup_handler(void);
void* nw_framer_write_output(void);
void* nw_framer_write_output_data(void);
void* nw_framer_write_output_no_copy(void);

#endif // _NW_FRAMER_H_
