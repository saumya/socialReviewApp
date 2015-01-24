//
//  RayRegistrationConfirmViewController.m
//  How This Buddy
//
//  Created by saumya ray on 1/3/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayRegistrationConfirmViewController.h"

@interface RayRegistrationConfirmViewController ()

@end

@implementation RayRegistrationConfirmViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Customisation
- (IBAction)onSubmitClick:(id)sender
{
    NSLog(@"onSubmitClick");
    //[self performSegueWithIdentifier:@"segueBackToRegistrationView" sender:self];
    [self performSegueWithIdentifier:@"segueBackToHomeView1" sender:self];
    NSLog(@"Done with the Segue call");
}




@end
