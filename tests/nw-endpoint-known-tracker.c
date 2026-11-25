/*
 This file is part of Darling.

 Copyright (C) 2026 Lubos Dolezel

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

// nw_endpoint_get_known_tracker_name gives the tracker name of an endpoint
// whose host is on the system's list of known trackers, and NULL otherwise.
// Darling has no such list, so the test checks the NULL answer for endpoints
// that are not trackers on any list: a host on the reserved example.com
// domain (RFC 2606), a loopback host and a loopback address.
// The function is SPI, so it is declared here.

#include <Network/Network.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <stdio.h>
#include <string.h>

extern const char *nw_endpoint_get_known_tracker_name(nw_endpoint_t endpoint);

static int failures;
#define CHECK(cond, what) do { if (!(cond)) { printf("FAIL: %s\n", what); failures++; } else printf("PASS: %s\n", what); } while (0)

int main(void)
{
	nw_endpoint_t host = nw_endpoint_create_host("www.example.com", "443");
	CHECK(nw_endpoint_get_known_tracker_name(host) == NULL, "a host on example.com is not a known tracker");
	nw_release(host);

	nw_endpoint_t loopback = nw_endpoint_create_host("localhost", "80");
	CHECK(nw_endpoint_get_known_tracker_name(loopback) == NULL, "localhost is not a known tracker");
	nw_release(loopback);

	struct sockaddr_in sin;
	memset(&sin, 0, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;
	sin.sin_port = htons(80);
	sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
	nw_endpoint_t address = nw_endpoint_create_address((const struct sockaddr *)&sin);
	CHECK(nw_endpoint_get_known_tracker_name(address) == NULL, "an address endpoint is not a known tracker");
	nw_release(address);

	printf("%s\n", failures ? "FAILED" : "ALL PASSED");
	return failures != 0;
}
