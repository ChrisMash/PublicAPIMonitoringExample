//
//  OCStruct.h
//  PublicAPIMonitoringExample
//
//  Created by Chris Mash on 08/06/2021.
//

#ifndef OCStruct_h
#define OCStruct_h

typedef NS_ENUM(NSUInteger, EnumValue) {
    kOne,
    kTwo,
    kThree
};

struct OCStruct {
    enum EnumValue enumValue;
};

#endif /* OCStruct_h */
