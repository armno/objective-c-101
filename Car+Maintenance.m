//
//  Car+Maintenance.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Car+Maintenance.h"

@implementation Car (Maintenance)

-(BOOL)needsOilChange {
    return YES;
}

-(void)changeOil {
    NSLog(@"Changing oil for the %@", [self model]);
}

-(void)rotateTires {
    NSLog(@"Rotating tires for the %@", [self model]);
}

-(void)jumpBatterUsingCar:(Car *)anotherCar {
    NSLog(@"Jumped the %@ with a %@", [self model], [anotherCar model]);
}
@end
