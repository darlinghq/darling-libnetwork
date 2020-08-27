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

#ifndef _NW_QUEUE_H_
#define _NW_QUEUE_H_

void* nw_queue_activate_source(void);
void* nw_queue_assert_context(void);
void* nw_queue_async(void);
void* nw_queue_async_current(void);
void* nw_queue_cancel_source(void);
void* nw_queue_create_source(void);
void* nw_queue_register_dispatch_queue(void);
void* nw_queue_resume_source(void);
void* nw_queue_set_timer_values(void);
void* nw_queue_source_get_data(void);
void* nw_queue_source_get_handle(void);
void* nw_queue_suspend_source(void);
void* nw_queue_target_dispatch_queue(void);

void* nw_queue_context_async(void);
void* nw_queue_context_async_if_needed(void);
void* nw_queue_context_create_source(void);
void* nw_queue_context_target_dispatch_queue(void);

#endif // _NW_QUEUE_H_
