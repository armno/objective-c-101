//
//  Car+Maintenance.h
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Car.h"

@interface Car (Maintenance)

-(BOOL)needsOilChange;
-(void)changeOil;
-(void)rotateTires;
-(void)jumpBatterUsingCar:(Car *)anotherCar;

@end
