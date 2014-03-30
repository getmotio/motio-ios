//
//  MONotificationCenter.h
//  Motio
//
//  Created by Paul Ballesty on 3/30/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import <Foundation/Foundation.h>

FOUNDATION_EXPORT NSString * const MONotificationNoSession;

@class RACSignal;
@interface MONotificationCenter : NSObject
- (RACSignal *)registerForNotification:(NSString *)name;
- (void)postNotification:(NSString *)notification withParams:(NSDictionary *)parameters;
@end
