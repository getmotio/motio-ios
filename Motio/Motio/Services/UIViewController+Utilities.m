//
//  UIViewController+Utilities.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "UIViewController+Utilities.h"

@implementation UIViewController (Utilities)

- (void)presentStoryboard:(NSString *)storyboardName {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    [self presentViewController:[storyboard instantiateInitialViewController] animated:YES completion:nil];
}

@end
