//
//  NSObject+Services.h
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOMotioApplication.h"
#import <Foundation/Foundation.h>

@class MONotificationCenter, MOAuthenticationService;
@interface NSObject (Services)

- (MOMotioApplication *)motioApplication;
- (MONotificationCenter *)motioNotificationCenter;
- (MOAuthenticationService *)authenticationService;

@end
