//
//  OCClass.h
//  ObjC Framework
//
//  Created by Chris Mash on 08/06/2021.
//

#import <Foundation/Foundation.h>

@interface OCClass : NSObject

- (NSInteger)getInt;
- (NSString* _Nonnull)intToStringWith:(NSInteger)integer;
- (NSString* _Nullable)tryIntToStringWith:(NSInteger)integer;

@end
