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

#ifndef _NW_CONTENT_CONTEXT_H_
#define _NW_CONTENT_CONTEXT_H_

#include <stdbool.h>
#include <stdint.h>

#include <nw/base.h>
#include <nw/protocol_definition.h>
#include <nw/protocol_metadata.h>

_NW_OPAQUE(nw_content_context);

// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_content_context_copy_antecedent(void);
#endif // DARLING
NW_RETURNS_RETAINED nw_protocol_metadata_t NW_NULLABLE nw_content_context_copy_protocol_metadata(nw_content_context_t NW_NON_NULL context, nw_protocol_definition_t NW_NON_NULL protocol) NW_AVAILABLE_2018;
NW_RETURNS_RETAINED nw_content_context_t NW_NON_NULL nw_content_context_create(const char * NW_NON_NULL context_identifier) NW_AVAILABLE_2018;
#if _NW_BLOCKS
	void nw_content_context_foreach_protocol_metadata(nw_content_context_t NW_NON_NULL context, void (^NW_NON_NULL foreach_block)(nw_protocol_definition_t NW_NON_NULL definition, nw_protocol_metadata_t NW_NON_NULL metadata)) NW_AVAILABLE_2018;
#endif
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_content_context_get_expiration_milliseconds(void);
#endif // DARLING
const char * NW_NON_NULL nw_content_context_get_identifier(nw_content_context_t NW_NON_NULL context) NW_AVAILABLE_2018;
bool nw_content_context_get_is_final(nw_content_context_t NW_NON_NULL context) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_content_context_get_relative_priority(void);
#endif // DARLING
void nw_content_context_set_antecedent(nw_content_context_t NW_NON_NULL context, nw_content_context_t NW_NULLABLE antecedent_context) NW_AVAILABLE_2018;
void nw_content_context_set_expiration_milliseconds(nw_content_context_t NW_NON_NULL context, uint64_t expiration_milliseconds) NW_AVAILABLE_2018;
void nw_content_context_set_is_final(nw_content_context_t NW_NON_NULL context, bool is_final) NW_AVAILABLE_2018;
void nw_content_context_set_metadata_for_protocol(nw_content_context_t NW_NON_NULL context, nw_protocol_metadata_t NW_NON_NULL protocol_metadata) NW_AVAILABLE_2018;
// generated stubs, for building Darling only: SDK consumers declare the
// libnetwork functions they use themselves
#ifdef DARLING
void* nw_content_context_set_packet_id(void);
#endif // DARLING
void nw_content_context_set_relative_priority(nw_content_context_t NW_NON_NULL context, double relative_priority) NW_AVAILABLE_2018;

#endif // _NW_CONTENT_CONTEXT_H_
