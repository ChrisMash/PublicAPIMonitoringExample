//
//  OCClass.m
//  ObjC Framework
//
//  Created by Chris Mash on 08/06/2021.
//

#import "OCClass.h"

@implementation OCClass

- (NSInteger)getInt {
    return 1;
}

- (NSString*)intToStringWith:(NSInteger)integer {
    return @"";
}

- (NSString*)tryIntToStringWith:(NSInteger)integer {
    return NULL;
}

- (XPWindow*)getWindow {
    return [XPWindow new];
}

#if TARGET_OS_MAC && !TARGET_OS_IPHONE
- (void)macFunction {}
#else
- (void)iOSFunction {}
#endif

@end
