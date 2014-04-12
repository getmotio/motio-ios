//
//  MOSignInViewController.m
//  Motio
//
//  Created by Paul Ballesty on 3/29/14.
//  Copyright (c) 2014 Motio. All rights reserved.
//

#import "MOSignInViewController.h"
#import "UIColor+MotioPalette.h"
#import "NSObject+Services.h"
#import "MOAuthenticationService.h"
#import "MOUser.h"
#import "UIViewController+Utilities.h"
#import <MBProgressHUD/MBProgressHUD.h>

#define kOffsetEmailTextField 0.0f
#define kOffsetPasswordTextField 65.0f

@interface MOSignInViewController()
@property (assign, nonatomic) CGFloat topBarHeight;
@property (assign, nonatomic) CGRect originalFrame;
@property (assign, nonatomic) CGFloat currentOffset;
@end

@implementation MOSignInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.emailField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:LS(@"Email") attributes:@{NSForegroundColorAttributeName: [UIColor motioTextFieldPlaceholderColor]}];
    self.passwordField.attributedPlaceholder = [[NSAttributedString alloc] initWithString:LS(@"Password") attributes:@{NSForegroundColorAttributeName: [UIColor motioTextFieldPlaceholderColor]}];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    self.topBarHeight = self.navigationController.navigationBar.frame.size.height;
    self.currentOffset = 0.0f;
    self.originalFrame = self.view.frame;
}

- (IBAction)beginEmailEditing {
    self.currentOffset = kOffsetEmailTextField;
    [self applyViewOffset];
}

- (IBAction)beginPasswordEditing {
    self.currentOffset = kOffsetPasswordTextField;
    [self applyViewOffset];
}

- (IBAction)emailDidEndOnExit {
    [self.passwordField becomeFirstResponder];
}

- (IBAction)passwordDidEndOnExit {
    [self.passwordField resignFirstResponder];
    [self signIn];
}

- (void)keyboardWillHide:(NSNotification *)notification {
    [self dismissViewOffset];
}

- (void)applyViewOffset {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3f];
    
    CGRect rect = self.view.frame;
    rect.origin.y = self.originalFrame.origin.y + self.topBarHeight - self.currentOffset;
    rect.size.height = self.originalFrame.size.height - self.topBarHeight + self.currentOffset;
    self.view.frame = rect;
    
    [UIView commitAnimations];
}

- (void)dismissViewOffset {
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3f];
    
    self.view.frame = self.originalFrame;
    
    [UIView commitAnimations];
}

- (IBAction)signIn {
    MOUser * user = [[MOUser alloc] init];
    user.email = self.emailField.text;
    user.password = self.passwordField.text;
    [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    [[self.authenticationService signIn:user] subscribeCompleted:^{
        [MBProgressHUD hideAllHUDsForView:self.navigationController.view animated:NO];
        [self presentStoryboard:@"Timeline"];
    }];
}

@end
