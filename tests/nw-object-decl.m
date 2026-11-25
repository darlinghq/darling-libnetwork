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

// NW_OBJECT_DECL and NW_OBJECT_DECL_SUBCLASS, the public macros of
// Network.framework's object.h: a type they declare is an object type, a
// derived type converts to its parent type without a cast, and both are
// usable in prototypes. It can be compiled as Objective-C (OS_OBJECT_USE_OBJC)
// or, with -x c, as C; the program checks little at run time
// beyond what compiling it proves.
#include <Network/Network.h>
#include <stdio.h>

NW_OBJECT_DECL(test_fields);
NW_OBJECT_DECL_SUBCLASS(test_response, test_fields);

static int takesFields(test_fields_t fields)
{
	return fields == NULL;
}

int main(void)
{
	test_response_t response = NULL;
	int ok = takesFields(response);
#if OS_OBJECT_USE_OBJC
	// as for Network's own types, the object is an NSObject
	id object = response;
	ok = ok && object == nil;
#endif
	printf("%s\n", ok ? "ALL PASSED" : "FAILED");
	return !ok;
}
