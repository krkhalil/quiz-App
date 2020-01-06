//
//  ViewController.m
//  quiz App
//
//  Created by Pasha on 11/07/2019.
//  Copyright © 2019 domoji. All rights reserved.
//

#import "ViewController.h"

#import <MessageUI/MessageUI.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)quizButtonTouched:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setObject:@"quiz" forKey:@"nav"];
}

- (IBAction)emailButtonTouched:(id)sender {
  
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"Php-Java Interview"];
        [mail setMessageBody:@"" isHTML:NO];
        [mail setToRecipients:@[@"decentdude19@gmail.com"]];
        
        [self presentViewController:mail animated:YES completion:NULL];
    }
    else
    {
        NSLog(@"This device cannot send email");
    }
   
}

@end
