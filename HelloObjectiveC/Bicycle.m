//
//  Bicycle.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Bicycle.h"

@implementation Bicycle

-(void)signalStop {
    NSLog(@"Bending the left arm downwards");
}

-(void)signalLeftTurn {
    NSLog(@"Extending left arm outwards");
}

-(void)signalRightTurn {
    NSLog(@"Bending left arm upwards");
}

-(void)startPedaling {
    NSLog(@"Here we go");
}

-(void)removeFrontWheel {
    NSLog(@"Front wheel is off."
          "Should probably replace that before pedaling...");
}

-(void)lockToStructure:(id)theStructure {
    NSLog(@"Locked to structure. Don't forget the combination");
}

@end
