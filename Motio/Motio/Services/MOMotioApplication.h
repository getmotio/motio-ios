//
//  MOMotioApplication.h
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MONotificationCenter, MOAuthenticationService;
@interface MOMotioApplication : NSObject

+ (instancetype)application;

- (void)initialize;

- (MOAuthenticationService *)authenticationService;
- (MONotificationCenter *)notificationCenter;
@end
