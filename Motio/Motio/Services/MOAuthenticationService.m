//
//  MOAuthenticationService.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOAuthenticationService.h"
#import "NSObject+ReactiveCocoa.h"

@implementation MOAuthenticationService

- (BOOL)isCurrentUserSignedIn {
    return NO;
}

- (RACSignal *)signIn:(MOUser *)user {
    //TODO: Develop sign in logic
    RACReplaySubject *subject = [RACReplaySubject subject];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [subject sendCompleted];
    });
    return [subject deliverOn:[RACScheduler mainThreadScheduler]];
}

@end
