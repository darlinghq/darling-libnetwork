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

#ifndef _NW_BASE_H_
#define _NW_BASE_H_

#include <os/object.h>
#include <os/object_private.h>

#define _NW_OPAQUE(_name) OS_OBJECT_DECL_CLASS(_name)

#if OS_OBJECT_USE_OBJC
	#define NW_NON_NULL _Nonnull
#else
	#define NW_NON_NULL
#endif

// `@interface` macros
#if OS_OBJECT_USE_OBJC
	#import <Foundation/Foundation.h>

	#define _NW_OS_OBJECT(_name) \
		@interface OS_OBJECT_CLASS(_name) : OS_object \
		@end

	// i'm not 100% sure how this should be set up
	#define _NW_OS_CONTAINER(_name) \
		@interface OS_OBJECT_CLASS(_name) (NWOSContainer) \
		/* i'm unsure if these are the correct signatures */ \
		- (NSString*)description; \
		- (NSString*)redactedDescription; \
		@end

	#define _NW_CONCRETE(_name) NWConcrete_ ## _name : NSObject <OS_OBJECT_CLASS(_name)>
	#define _NW_CONCRETE_SUBCLASS(_name, _parent) NWConcrete_ ## _name : NWConcrete_ ## _parent
	#define _NW_CONCRETE_PROTOCOL(_name) NWConcrete_ ## _name <NSObject>

	// for non-OSObject interfaces
	#define _NW_OBJECT(_name) \
		@interface _name : NSObject \
		@end

	// for non-OSObject protocols
	#define _NW_WEIRD_OPAQUE(_name) \
		@protocol _name \
		@end
#else
	#define _NW_OS_OBJECT(_name) typedef struct OS_ ## _name ## _s * _name ## _t
	#define _NW_OS_CONTAINER(_name) /* empty because you're supposed to call both `_NW_OS_OBJECT` and `_NW_OS_CONTAINER` for containers */
	#define _NW_OBJECT(_name) typedef struct _name ## _s * _name ## _t
	#define _NW_WEIRD_OPAQUE(_name) typedef struct _name ## _s * _name ## _t
#endif

// `@implementation` macros
#if OS_OBJECT_USE_OBJC
	#define _NW_OS_OBJECT_IMPL(_name) \
		OS_OBJECT_CLASS(_name)

	#define _NW_OS_CONTAINER_IMPL(_name) \
		OS_OBJECT_CLASS(_name) (NWOSContainer)

	#define _NW_OS_CONTAINER_DESCRIPTION - (NSString*)description
	#define _NW_OS_CONTAINER_REDACTED_DESCRIPTION - (NSString*)redactedDescription

	#define _NW_OS_CONTAINER_DEFAULT_DESCRIPTION \
		_NW_OS_CONTAINER_DESCRIPTION { \
			return [NSString stringWithFormat:@"<%@: %p>", NSStringFromClass([self class]), self];\
		}

	#define _NW_OS_CONTAINER_DEFAULT_REDACTED_DESCRIPTION \
		_NW_OS_CONTAINER_REDACTED_DESCRIPTION { \
			return [NSString stringWithFormat:@"<%@: %p>", NSStringFromClass([self class]), self];\
		}

	#define _NW_CONCRETE_IMPL(_name) \
		NWConcrete_ ## _name
#endif

#if (__cplusplus && __cplusplus >= 201103L && (__has_extension(cxx_strong_enums) || __has_feature(objc_fixed_enum))) || (!__cplusplus && __has_feature(objc_fixed_enum))
	#define _NW_ENUM(_type, _name) enum _name : _type _name; enum _name : _type
#else
	#define _NW_ENUM(_type, _name) _type _name; enum
#endif

#define _NW_BLOCKS __has_extension(blocks)

#endif // _NW_BASE_H_
