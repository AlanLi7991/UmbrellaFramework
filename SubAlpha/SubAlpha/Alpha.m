//
//  Alpha.m
//  SubAlpha
//
//  Created by Alanli on 16/02/2018.
//  Copyright © 2018 Alan. All rights reserved.
//

#import "Alpha.h"

@implementation Alpha

- (instancetype)init {
    self = [super init];
    if (self) {
        //Found Umbrella
        NSURL *umbrellaUrl = [[NSBundle mainBundle] URLForResource:@"Umbrella" withExtension:@"framework" subdirectory:@"Frameworks"];
        NSBundle *umbrella = [NSBundle bundleWithURL:umbrellaUrl];
        //Found Current Fake Bundle
        NSURL *currentUrl = [umbrella URLForResource:@"SubAlpha" withExtension:@"bundle"];
        NSBundle *current = [NSBundle bundleWithURL:currentUrl];
        //Load Image
        _image = [UIImage imageNamed:@"suba" inBundle:current compatibleWithTraitCollection:nil];
    }

    return self;
}


@end
