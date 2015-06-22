//
//  Car+Protected.m
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import "Car+Protected.h"

@implementation Car (Protected)

-(void)prepareToDrive {
    NSLog(@"Doing some internal work to get the %@ ready to drive", [self model]);
}
@end
