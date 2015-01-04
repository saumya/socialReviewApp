//
//  RayViewController.m
//  How This Buddy
//
//  Created by saumya ray on 12/13/14.
//  Copyright (c) 2014 @saumya. All rights reserved.
//

#import "RayViewController.h"

@interface RayViewController ()

@end

@implementation RayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"RayViewController : viewDidLoad");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToHome:(UIStoryboardSegue *)unwindSegue
{
    NSLog(@"unwindToHome");
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
