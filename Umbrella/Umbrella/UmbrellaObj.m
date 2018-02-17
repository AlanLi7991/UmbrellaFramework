//
//  UmbrellaObj.m
//  Umbrella
//
//  Created by Alanli on 16/02/2018.
//  Copyright © 2018 Alan. All rights reserved.
//

#import <SubAlpha/Alpha.h>
#import <SubBeta/Beta.h>
#import "UmbrellaObj.h"

@implementation UmbrellaObj

- (instancetype)init {
    self = [super init];
    if (self) {
        _alpha = [[Alpha alloc] init];
        _beta = [[Beta alloc] init];
        //Found Umbrella
        // ATTENTION!!! Not same load way compare with static-framework like subAlpha
        NSBundle *umbrella = [NSBundle bundleForClass:[self class]];
        _image = [UIImage imageNamed:@"umbrella" inBundle:umbrella compatibleWithTraitCollection:nil];
    }

    return self;
}


@end
