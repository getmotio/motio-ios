//
//  MOMotioApplication.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOMotioApplication.h"
#import <CocoaLumberjack/DDASLLogger.h>
#import <CocoaLumberjack/DDTTYLogger.h>

@implementation MOMotioApplication

+ (instancetype)application {
    static MOMotioApplication *application = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        application = [[MOMotioApplication alloc] init];
    });
    return application;
}

- (void)initialize {
    [self initializeCocoaLumberjack];
}

- (void)initializeCocoaLumberjack {
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
}

@end
