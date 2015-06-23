//
//  Person.h
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Car_old;
// "trust me, the Class exists, so don't try to find it right now"
// we do this because in Car.h it also imports Person.h
// it could end up with circular imports

// UPDATE: thanks to @digitalvanilla
// it seems recent xcode can deal with circular imports now.
// "the compiler now recorgnize the loop import and act accordingly"

@interface Person : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic, weak) Car_old *car;

@end
