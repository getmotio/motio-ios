//
//  MOMotioApplication.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOMotioApplication.h"
#import "MONotificationCenter.h"
#import "MOAuthenticationService.h"
#import <CocoaLumberjack/DDASLLogger.h>
#import <CocoaLumberjack/DDTTYLogger.h>

@interface MOMotioApplication()
@property (strong, nonatomic) MONotificationCenter *notificationCenter;
@property (strong, nonatomic) MOAuthenticationService *authenticationService;
@end

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
    self.notificationCenter = [[MONotificationCenter alloc] init];
    self.authenticationService = [[MOAuthenticationService alloc] init];
}

- (void)initializeCocoaLumberjack {
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
}

@end
