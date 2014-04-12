//
//  MOAppDelegate.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOAppDelegate.h"
#import "NSObject+Services.h"
#import "UIColor+MotioPalette.h"

@implementation MOAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    MOMotioApplication *motioApplication = [self motioApplication];
    self.window.tintColor = [UIColor motioDefaultTintColor];
    [motioApplication initialize];
    return YES;
}

@end
