//
//  Coupe.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Coupe.h"
#import "Car+Protected.h"

@implementation Coupe

-(void)startEngine {
    [super startEngine];
    // call the protected method here instead of in `drive`
    [self prepareToDrive];
}

-(void)drive {
    NSLog(@"VROOOMM!");
}

@end
