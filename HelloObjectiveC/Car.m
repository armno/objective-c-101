//
//  Car.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Car.h"

static NSString *_defaultModel;

@implementation Car {
    // private instance variable
    double _odometer;
}

//@synthesize running = _running; // optional for xcode 4.4

+ (void)initialize {
    if (self == [Car class]) {
        _defaultModel = @"Nissan GT-R";
    }
}

+ (void)setDefaultModel:(NSString *)aModel {
    _defaultModel = [aModel copy];
}

- (void)drive {
    NSLog(@"Driving a %@. Vrooom!", self.model);
}

- (id)initWithModel:(NSString *)aModel {
    self = [super init];
    if (self) {
        _model = [aModel copy];
        _odometer = 0;
    }
    
    return self;
}

- (id)init {
    return [self initWithModel:_defaultModel];
}

- (void)startEngine {
    _running = YES;
}

- (void)stopEngine {
    _running = NO;
}

@end
