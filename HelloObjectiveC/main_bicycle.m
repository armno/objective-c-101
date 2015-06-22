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
#import "Coupe.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *porsche = [[Car alloc] init];
        porsche.model = @"Porsche 911 Turbo";
        
        [porsche startEngine];
        [porsche drive];
        
        Car *ford = [[Car alloc] init];
        ford.model = @"Mustang GT";
        [ford startEngine];
        [ford drive];
        
        SEL protectedMethod = @selector(prepareToDrive);
        if ([porsche respondsToSelector:protectedMethod]) {
            [porsche performSelector:protectedMethod];
        }
        
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