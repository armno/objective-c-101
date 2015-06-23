//
//  main_error.m
//  HelloObjectiveC
//
//  Created by Armno Prommarak on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InventoryErrors.h"

NSString *getRandomCarFromInventory(NSArray *inventory, NSError **error) {
    int maximum = (int)[inventory count];
    if (maximum == 0) {
        if (error != NULL) {
            NSDictionary *userInfo = @{NSLocalizedDescriptionKey: @"could not select a car"
                                       " because the car is not in the inventory"};
            *error = [NSError errorWithDomain:InventoryErrorDomain code:InventoryEmptyError userInfo:userInfo];
        }
        
        return nil;
    }
    
    int randomIndex = arc4random_uniform(maximum);
    return inventory[randomIndex];
    
};

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *inventory = @[];
        NSError *error;
        NSString *car = getRandomCarFromInventory(inventory, &error);
        
        if (car == nil) {
            // failed
            NSLog(@"Car cannot be selected");
            NSLog(@"Domain %@", error.domain);
            NSLog(@"Error code: %ld", error.code);
            NSLog(@"Description: %@", [error localizedDescription]);
        } else {
            // succeeded
            NSLog(@"car selected!");
            NSLog(@"%@", car);
        }
//        NSString *fileToLoad = @"/path/to/nothing.txt";
//        
//        NSError *error;
//        NSString *content = [NSString stringWithContentsOfFile:fileToLoad encoding:NSUTF8StringEncoding error:&error];
//        
//        if (content == nil) {
//            NSLog(@"Error loading file %@!", fileToLoad);
//            NSLog(@"Domain %@", error.domain);
//            NSLog(@"Error code %ld", error.code);
//            NSLog(@"Description %@", [error localizedDescription]);
//            NSLog(@"Reason: %@", [error localizedFailureReason]);
//            
//            NSLog(@"Underlying Error: %@", error.userInfo[NSUnderlyingErrorKey]);
//        } else {
//            // method succeeded
//            NSLog(@"Content loaded!");
//            NSLog(@"%@", content);
//        }
    }
}