//
//  main_exceptions.m
//  HelloObjectiveC
//
//  Created by Armno Prommarak on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *inventory = @[@"Honda Civic",
                               @"Nissan Versa",
                               @"Ford F-150"];
        int selectedIndex = 3;
        
//        @try {
//            NSString *car = inventory[selectedIndex];
//            NSLog(@"The selected car is: %@", car);
//        }
//        @catch (NSException *exception) {
//            NSLog(@"An exception occurred: %@", exception.name);
//            NSLog(@"Here are some details: %@", exception.reason);
//        }
//        @finally {
//            NSLog(@"Executing finally block");
//        }
        
        // for this example, simple if-else is already enough
        if (selectedIndex < [inventory count]) {
            NSString *car = inventory[selectedIndex];
            NSLog(@"The selected car is: %@", car);
        } else {
            NSLog(@"meh");
        }
    }
}