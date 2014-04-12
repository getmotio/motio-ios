//
//  UIColor+MotioPalette.m
//  Motio
//
//  Created by Paul Ballesty on 4/5/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "UIColor+MotioPalette.h"

@implementation UIColor (MotioPalette)

+ (UIColor *)motioTextFieldColor {
    return [UIColor colorWithRed:(210/255.0f) green:(210/255.0f) blue:(210/255.0f) alpha:1.0f];
}

+ (UIColor *)motioTextFieldPlaceholderColor {
    return [UIColor colorWithRed:(210/255.0f) green:(210/255.0f) blue:(210/255.0f) alpha:0.5f];
}

+ (UIColor *)motioDefaultTintColor {
    return [UIColor colorWithRed:(245/255.0f) green:(127/255.0f) blue:(55/255.0f) alpha:1.0f];
}

+ (UIColor *)motioBackgroundColor {
    return [UIColor colorWithRed:(47/255.0f) green:(61/255.0f) blue:(76/255.0f) alpha:1.0f];
}

@end
