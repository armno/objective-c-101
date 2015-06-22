//
//  main.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

// declaration
NSString *getRandomMake(NSArray *);
static int getRandomInteger(int, int);
int countByTwo();

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randomNumber = getRandomInteger(-10, 10);
        NSLog(@"Randomized number: %d", randomNumber);
        
        NSArray *makes = @[@"Honda", @"Ford", @"Nissan", @"Porsche"];
        NSLog(@"Selected make : %@", getRandomMake(makes));
        
        NSLog(@"%d", countByTwo());
        NSLog(@"%d", countByTwo());
        NSLog(@"%d", countByTwo());
        
        Car *nissan = [[Car alloc] init];
        
        NSLog(@"default model is a %@", nissan.model);
        
        [nissan setModel:@"GT-RR"];
        NSLog(@"created a %@", [nissan model]);
        
        nissan.model = @"BMZ";
        NSLog(@"changed the car to a %@", nissan.model);
        
        [nissan drive];
        
        Car *delorean = [[Car alloc] initWithModel:@"DeLorean"];
        
        // get the class of an object
        NSLog(@"%@ is an instance of the %@ class", [delorean model], [delorean class]);
        
        // check an object against a class and subclasses
        if ([delorean isKindOfClass:[NSObject class]]) {
            NSLog(@"%@ is an instance of NSObject OR one of its subclasses", [delorean model]);
        } else {
            NSLog(@"%@ is NOT an instance of NSObject OR one of its subclasses", [delorean model]);
        }
        
        // check an object against a class, but not its subclasses
        if ([delorean isMemberOfClass:[NSObject class]]) {
            NSLog(@"%@ is an instance of NSObject", [delorean model]);
        } else {
            NSLog(@"%@ is NOT an instance of NSObject", [delorean model]);
        }
        
        // convert between strings and classes
        if (NSClassFromString(@"Car") == [Car class]) {
            NSLog(@"I can convert between strings and classes!");
        }
    }
    return 0;
}

// implementation

static int getRandomInteger(int minimum, int maximum) {
    return arc4random_uniform((maximum - minimum) + 1) + minimum;
}

NSString *getRandomMake(NSArray *makes) {
    int maximum = (int)[makes count];
    int randomIndex = arc4random_uniform(maximum);
    return makes[randomIndex];
}

int countByTwo() {
    static int currentCount = 0;
    currentCount += 2;
    return currentCount;
}