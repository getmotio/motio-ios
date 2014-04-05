//
//  NSObject+Services.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "NSObject+Services.h"
#import "MONotificationCenter.h"

@implementation NSObject (Services)

- (MOMotioApplication *)motioApplication {
    return [MOMotioApplication application];
}

- (MONotificationCenter *)motioNotificationCenter {
    return [[self motioApplication] notificationCenter];
}

- (MOAuthenticationService *)authenticationService {
    return [[self motioApplication] authenticationService];
}

@end
