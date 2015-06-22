//
//  Car.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Car.h"
#import "Car+Protected.h"

@implementation Car

-(void)startEngine {
    NSLog(@"Starting the %@'s engine", _model);
}

-(void)drive {
    [self prepareToDrive];
    NSLog(@"The %@ is now driving", _model);
}

-(void)turnLeft {
    NSLog(@"The %@ is turning left", _model);
}

-(void)turnRight {
    NSLog(@"The %@ is turing right", _model);
}

@end
