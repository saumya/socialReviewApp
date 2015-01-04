//
//  RayRegistrationViewController.m
//  How This Buddy
//
//  Created by saumya ray on 1/3/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayRegistrationViewController.h"

@interface RayRegistrationViewController ()

@end

@implementation RayRegistrationViewController

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
    NSLog(@"RayRegistrationViewController:viewDidLoad");
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

- (IBAction)unwindToRegistration:(UIStoryboardSegue *)unwindSegue
{
    NSLog(@"unwindToRegistration");
    /*
     UIViewController* sourceViewController = unwindSegue.sourceViewController;
     if ([sourceViewController isKindOfClass:[BlueViewController class]])
     {
     NSLog(@"Coming from BLUE!");
     }
     else if ([sourceViewController isKindOfClass:[GreenViewController class]])
     {
     NSLog(@"Coming from GREEN!");
     }
     */
}

@end
