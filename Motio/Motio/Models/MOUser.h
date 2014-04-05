//
//  MOUser.h
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MOUser : NSObject
@property NSString *username;
@property NSString *email;
@property NSString *password;
@property NSString *repeatPassword;
@end
