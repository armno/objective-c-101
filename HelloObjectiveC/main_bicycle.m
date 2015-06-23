//
//  main_bicycle.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Bicycle.h"
//#import "Car_old.h"
//#import "StreetLegal.h"
#import "Car.h"
//#import "Car+Maintenance.h"
//#import "Coupe.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // declare the block variable
        double (^distanceFromRateAndTime)(double rate, double time);
        
        // create and assign the block
        distanceFromRateAndTime = ^double(double rate, double time) {
            return rate * time;
        };
        
        // call the block
        double dx = distanceFromRateAndTime(35, 1.5);
        
        NSLog(@"A car driving 35mph will travel "
              @"%.2f miles in 1.5 hours", dx);
        
        double (^randomPercent)(void) = ^ {
            return (double)arc4random() / 4294967295;
        };
        
        NSLog(@"Gas tank is %.1f%% full", randomPercent() * 100);
        
        NSString *make = @"Honda";
        NSString *(^getFullCarName)(NSString *) = ^(NSString *model) {
            return [make stringByAppendingFormat:@" %@", model];
        };
        
        NSLog(@"%@", getFullCarName(@"Accord"));
        
        // try changing the non-local variable
        // make is still "Honda"
        make = @"Porsche";
        NSLog(@"%@", getFullCarName(@"918 Spyder"));
        
        Car *theCar = [[Car alloc] init];
        
        // drive for a while with constant speed of 5.0 m/s
        [theCar driveForDuration:10.0 withVariableSpeed: ^(double time){
            return 5.0;
        } steps:100];
        
        NSLog(@"The car has now driven %.2f meters", theCar.odometer);
        
        // start accelerating at a rate of 1.0 m/s^2
        [theCar driveForDuration:10.0 withVariableSpeed:^(double time) {
            return time + 5.0;
        } steps:100];
        NSLog(@"The car has now driven %.2f meters", theCar.odometer);
        
//        Car *porsche = [[Car alloc] init];
//        porsche.model = @"Porsche 911 Turbo";
//        
//        [porsche startEngine];
//        [porsche drive];
//        
//        Car *ford = [[Car alloc] init];
//        ford.model = @"Mustang GT";
//        [ford startEngine];
//        [ford drive];
        
//        SEL protectedMethod = @selector(prepareToDrive);
//        if ([porsche respondsToSelector:protectedMethod]) {
//            [porsche performSelector:protectedMethod];
//        }
        
        // standard functionality from Car.h
//        [porsche startEngine];
//        [porsche drive];
//        [porsche turnLeft];
//        [porsche turnRight];
//        
//        if ([porsche needsOilChange]) {
//            [porsche changeOil];
//        }
//        
//        [porsche rotateTires];
//        [porsche jumpBatterUsingCar:ford];
        
//        Bicycle *bike = [[Bicycle alloc] init];
//        [bike startPedaling];
//        [bike signalLeftTurn];
//        [bike signalRightTurn];
//        [bike lockToStructure:nil];
        
//        id <StreetLegal> mysteryVehicle = [[Car alloc] init];
//        [mysteryVehicle signalLeftTurn];
//        
//        mysteryVehicle = [[Bicycle alloc] init];
//        [mysteryVehicle signalLeftTurn];
    }
    
    return 0;
}