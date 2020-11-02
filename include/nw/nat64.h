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

#ifndef _NW_NAT64_H_
#define _NW_NAT64_H_

#include <nw/base.h>

#include <netinet/in.h>

// seems to be used opaquely, so we can define anything we want for it
typedef struct nw_nat64_prefix {
	char structs_cant_be_empty; // for now, until we know what to put here
} nw_nat64_prefix_t;

void* nw_nat64_can_v4_address_be_synthesized(void);
void* nw_nat64_copy_prefixes(void);
void* nw_nat64_copy_prefixes_async(void);
void* nw_nat64_does_interface_index_support_nat64(void);
void* nw_nat64_synthesize(void);
void* nw_nat64_v4_address_requires_synthesis(void);
void* nw_nat64_write_prefix_to_string(void);

int nw_nat64_extract_v4(nw_nat64_prefix_t* prefix, const struct in6_addr* v6_address, struct in_addr* v4_address);
int nw_nat64_synthesize_v6(nw_nat64_prefix_t* prefix, const struct in_addr* v4_address, struct in6_addr* v6_address);
int32_t nw_nat64_copy_prefixes_from_ipv4only_records(const struct in6_addr* v6_addresses, uint32_t count, nw_nat64_prefix_t** prefixes);

#endif // _NW_NAT64_H_
