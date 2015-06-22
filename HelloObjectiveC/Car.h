//
//  Car.h
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (copy) NSString *model;
@property (readonly) double odometer;

-(void)startEngine;
-(void)drive;
-(void)turnLeft;
-(void)turnRight;

@end
