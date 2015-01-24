//
//  RayRequestLaunchViewController.m
//  How This Buddy
//
//  Created by saumya ray on 1/4/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayRequestLaunchViewController.h"

@interface RayRequestLaunchViewController ()

@end

@implementation RayRequestLaunchViewController

@synthesize requestArray;

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
    //self.requestArray = [NSArray arrayWithObjects:@"One",@"two",@"three",@"four",@"five",@"six", nil];
    self.requestArray = @[
                          @{
                              @"name": @"Steve Robinson",
                              @"phone":@"001-111-222",
                              @"isOn":@"no"
                            },
                          @{
                              @"name": @"Mark Robinson",
                              @"phone":@"005-121-332",
                              @"isOn":@"no"
                            },
                          @{
                              @"name": @"Walter White",
                              @"phone":@"003-987-897",
                              @"isOn":@"yes"
                            },
                          @{
                              @"name": @"Deep Foster",
                              @"phone":@"004-987-897",
                              @"isOn":@"yes"
                              },
                          @{
                              @"name": @"John Paul",
                              @"phone":@"003-875-897",
                              @"isOn":@"yes"
                              },
                          @{
                              @"name": @"David Forest",
                              @"phone":@"002-456-342",
                              @"isOn":@"no"
                            }
                          ];
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

#pragma mark - segue unwind
- (IBAction)unwindToHome1:(UIStoryboardSegue *)unwindSegue
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

#pragma mark - Customising the TableView
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.requestArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //UITableViewCell *cell;
    //identifier : idUser1
    //
    /*
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] ;
    }
    //
    cell.textLabel.text = [self.requestArray objectAtIndex:indexPath.row];
    */
    static NSString *cellIdentifier = @"idUser1";
    RayTableViewCellOne *cell = (RayTableViewCellOne *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        //cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] ;
        cell = [[RayTableViewCellOne alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //
    NSObject *obj = [self.requestArray objectAtIndex:indexPath.row];
    
    //cell.nameLabel.text = [self.requestArray objectAtIndex:indexPath.row];
    //cell.phoneLabel.text = @"000-111-222";
    cell.nameLabel.text = [obj valueForKey:@"name"];
    cell.phoneLabel.text = [obj valueForKey:@"phone"];
    NSString *isOn = [obj valueForKey:@"isOn"];
    if ([isOn isEqualToString:@"yes"]) {
        cell.opinionSwitch.on = YES;
    }else{
        cell.opinionSwitch.on = NO;
    }
    //
    return cell;
}


@end
