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

#include <nw/internal/interpose.h>
#include <nw/internal/stubs.h>

@implementation _NW_CONCRETE_IMPL(nw_interpose)

DARLING_NW_CLASS_STUB;

@end

DARLING_NW_STUB(nw_interpose_cancel);
DARLING_NW_STUB(nw_interpose_client_claim);
DARLING_NW_STUB(nw_interpose_client_register);
DARLING_NW_STUB(nw_interpose_get_client_uuid);
DARLING_NW_STUB(nw_interpose_set_flow_event_handler);
DARLING_NW_STUB(nw_interpose_set_queue);
DARLING_NW_STUB(nw_interpose_start);
