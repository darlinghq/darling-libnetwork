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

#ifndef _NW_INTERNAL_CONNECTION_H_
#define _NW_INTERNAL_CONNECTION_H_

#include <nw/base.h>
#include <nw/connection.h>

typedef struct darling_nw_tls *darling_nw_tls_t;

@interface _NW_CONCRETE(nw_connection) {
@public
	nw_endpoint_t endpoint;
	nw_parameters_t parameters;
	dispatch_queue_t userQueue;
	nw_connection_state_changed_handler_t stateHandler;
	dispatch_queue_t io;
	bool started;

	// Everything below belongs to the io queue.
	int phase;
	bool cancelled;
	bool udp;
	NSMutableArray *addresses;
	NSUInteger addressIndex;
	int lastErrno;
	nw_error_t lastError;
	int fd;
	dispatch_source_t readSource, writeSource;
	bool readSuspended, writeSuspended;
	darling_nw_tls_t tls;
	int tlsWant;
	NSMutableArray *receives, *sends;
	NSMutableData *rbuf;
	NSMutableData *udpPending;
	bool eof, eofDelivered, finSent;
	int rerrDomain, rerrCode;
	uint8_t *scratch;
	nw_content_context_t rxContext;
}

@end

#endif // _NW_INTERNAL_CONNECTION_H_
