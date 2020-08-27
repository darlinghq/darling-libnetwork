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

#ifndef _NW_INTERNAL_STUBS_H_
#define _NW_INTERNAL_STUBS_H_

#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#ifndef DARLING_NW_STUB_ENV_VAR
	#define DARLING_NW_STUB_ENV_VAR "STUB_VERBOSE"
#endif // DARLING_NW_STUB_ENV_VAR

extern bool __darling_nw_verbose;

#define DARLING_NW_STUB(_name) \
	void* _name(void) { \
		if (__darling_nw_verbose) \
			puts("libnetwork stub called:" #_name); \
		return NULL; \
	}

#define DARLING_NW_FIXED_UP_STUB(_name, _return_type, _default_return, ...) \
	_return_type _name(__VA_ARGS__) { \
		if (__darling_nw_verbose) \
			puts("libnetwork stub called:" #_name); \
		return _default_return; \
	}

#define DARLING_NW_CLASS_STUB \
	- (NSMethodSignature*)methodSignatureForSelector:(SEL)aSelector { \
		return [NSMethodSignature signatureWithObjCTypes: "v@:"]; \
	} \
	- (void)forwardInvocation:(NSInvocation*)anInvocation { \
		if (__darling_nw_verbose) \
			NSLog(@"libnetwork stub called: %@ in %@", NSStringFromSelector([anInvocation selector]), [self class]); \
	}

#endif // _NW_INTERNAL_STUBS_H_
