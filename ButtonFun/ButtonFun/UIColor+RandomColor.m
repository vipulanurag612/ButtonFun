//
//  UIColor+RandomColor.m
//  ButtonFun
//
//  Created by Anurag on 7/30/15.
//  Copyright (c) 2015 Anurag. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+(UIColor *)RandomColor {
    
    CGFloat redLevel    = rand() / (float) RAND_MAX;
    CGFloat greenLevel  = rand() / (float) RAND_MAX;
    CGFloat blueLevel   = rand() / (float) RAND_MAX;
    
    return [UIColor colorWithRed: redLevel
                           green: greenLevel
                            blue: blueLevel
                           alpha: 1.0];
}


@end
