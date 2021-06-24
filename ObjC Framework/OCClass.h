//
//  OCClass.h
//  ObjC Framework
//
//  Created by Chris Mash on 08/06/2021.
//

#import <Foundation/Foundation.h>
#include "OCStruct.h"

#if TARGET_OS_MAC && !TARGET_OS_IPHONE
@import AppKit;
typedef NSWindow XPWindow;
#else
@import UIKit;
typedef UIWindow XPWindow;
#endif

/// This is my awesome ObjC class
@interface OCClass : NSObject

- (NSInteger)getInt;
/**
 This function returns an NSString, isn't that great?
 */
- (NSString* _Nonnull)intToStringWith:(NSInteger)integer;
- (NSString* _Nullable)tryIntToStringWith:(NSInteger)integer;
- (XPWindow* _Nonnull)getWindow;

#if TARGET_OS_MAC && !TARGET_OS_IPHONE
- (void)macFunction;
#else
- (void)iOSFunction;
#endif

@end
