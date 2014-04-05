//
//  MOAuthenticationService.h
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "NSObject+ReactiveCocoa.h"
#import <Foundation/Foundation.h>

@class MOUser;
@interface MOAuthenticationService : NSObject
//- (MOUser *)currentUser;
- (BOOL)isCurrentUserSignedIn;
//- (RACSignal *)signIn:(MOUser *)user;
//- (RACSignal *)signUp:(MOUser *)user;
//- (RACSignal *)signOut;
@end
