//
//  Car.h
//  HelloObjectiveC
//
//  Created by armno on 6/22/2558 BE.
//  Copyright (c) 2558 armno. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject {
    // protected instance vairables (not recommended
}

@property (copy) NSString *model;

// `-` is for "instance method"
- (void)drive;
- (id)initWithModel:(NSString *)aModel;

// `+` is for "class method"
+ (void)setDefaultModel:(NSString *)aModel;

@end
