//
//  MOSignInViewController.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOSignInViewController.h"
#import "UIColor+MotioPalette.h"

@implementation MOSignInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.emailField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:LS(@"Email") attributes:@{NSForegroundColorAttributeName: [UIColor motioTextFieldPlaceholderColor]}];
    self.passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:LS(@"Password") attributes:@{NSForegroundColorAttributeName: [UIColor motioTextFieldPlaceholderColor]}];
}

@end
