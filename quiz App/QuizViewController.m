//
//  QuizViewController.m
//  quiz App
//
//  Created by Pasha on 11/07/2019.
//  Copyright © 2019 domoji. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController
- (IBAction)javaButtonTouched:(id)sender
{
         check = true;
    [[NSUserDefaults standardUserDefaults] setObject:@"java" forKey:@"lang"];
    [self performSegueWithIdentifier:@"java" sender:self];
}
bool check = false;
- (void)viewDidLoad
{
    [super viewDidLoad];
    check = false;
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated
{     check = false;
    
}
- (IBAction)phpButtonTouched:(id)sender
{
    
     check = true;
    [[NSUserDefaults standardUserDefaults] setObject:@"php" forKey:@"lang"];
    [self performSegueWithIdentifier:@"php" sender:self];
}
- (IBAction)ClangButtonTouched:(id)sender
{
         check = true;
    [[NSUserDefaults standardUserDefaults] setObject:@"c" forKey:@"lang"];
    [self performSegueWithIdentifier:@"c" sender:self];
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    check = false;
}
-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if (check) {
        
        check=false;
        return true;
    }
    else
    {
        return false;
    }
}
@end
