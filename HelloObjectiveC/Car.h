//
//  Car.h
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface Car : NSObject {
    // protected instance vairables (not recommended
}

@property (nonatomic, copy) NSString *model;
@property (getter=isRunning, readonly) BOOL running;
//@property (nonatomic) NSString *modele; // non-atomic property declaration
@property (nonatomic, strong) Person *driver;

// `-` is for "instance method"
- (void)drive;
- (id)initWithModel:(NSString *)aModel;
- (void)startEngine;
- (void)stopEngine;

// `+` is for "class method"
+ (void)setDefaultModel:(NSString *)aModel;

@end
