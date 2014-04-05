//
//  MOSplashViewController.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOSplashViewController.h"
#import "NSObject+Services.h"
#import "NSObject+ReactiveCocoa.h"
#import "UIViewController+Utilities.h"
#import "MONotificationCenter.h"
#import "MOAuthenticationService.h"

@implementation MOSplashViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self registerForAuthenticationNotifications];
}

- (void)viewDidAppear:(BOOL)animated {
    if (![[self authenticationService] isCurrentUserSignedIn]) {
        [[self motioNotificationCenter] postNotification:MONotificationNoSession withParams:nil];
    }
}

- (void)registerForAuthenticationNotifications {
    RACSignal *noSessionSignal = [[self motioNotificationCenter] registerForNotification:MONotificationNoSession];
    @weakify(self);
    [noSessionSignal subscribeNext:^(id x) {
        @strongify(self);
        [self presentStoryboard:@"Authentication"];
    }];
}

@end
