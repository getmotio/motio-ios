//
//  MONotificationCenter.m
//  Motio
//
//  Created by Paul Ballesty on 3/30/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MONotificationCenter.h"
#import "NSObject+ReactiveCocoa.h"

NSString * const MONotificationNoSession = @"MONotificationNoSession";

@implementation MONotificationCenter

- (RACSignal *)registerForNotification:(NSString *)name {
    return [[NSNotificationCenter defaultCenter] rac_addObserverForName:name object:nil];
}

- (void)postNotification:(NSString *)notification withParams:(NSDictionary *)parameters {
    return [[NSNotificationCenter defaultCenter] postNotificationName:notification object:nil userInfo:parameters];
}

@end
