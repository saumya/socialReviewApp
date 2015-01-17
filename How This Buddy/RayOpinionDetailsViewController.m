//
//  RayOpinionDetailsViewController.m
//  How This Buddy
//
//  Created by saumya ray on 1/17/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayOpinionDetailsViewController.h"

@interface RayOpinionDetailsViewController ()

@end

@implementation RayOpinionDetailsViewController

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
    self.requestArray = @[
                          @{
                              @"name": @"Steve Robinson",
                              @"phone":@"01-01-2015",
                              @"isOn":@"no"
                              },
                          @{
                              @"name": @"Mark Robinson",
                              @"phone":@"01-05-2015",
                              @"isOn":@"no"
                              },
                          @{
                              @"name": @"Walter White",
                              @"phone":@"01-05-2015",
                              @"isOn":@"yes"
                              },
                          @{
                              @"name": @"Deep Foster",
                              @"phone":@"01-05-2015",
                              @"isOn":@"yes"
                              },
                          @{
                              @"name": @"John Paul",
                              @"phone":@"01-05-2015",
                              @"isOn":@"yes"
                              },
                          @{
                              @"name": @"David Forest",
                              @"phone":@"01-05-2015",
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
    RayTableViewCellTwo *cell = (RayTableViewCellTwo *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        //cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier] ;
        cell = [[RayTableViewCellTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //
    NSObject *obj = [self.requestArray objectAtIndex:indexPath.row];
    
    //cell.nameLabel.text = [self.requestArray objectAtIndex:indexPath.row];
    //cell.phoneLabel.text = @"000-111-222";
    cell.nameLabel.text = [obj valueForKey:@"name"];
    cell.phoneLabel.text = [obj valueForKey:@"phone"];
    
    //
    return cell;
}


#pragma mark - Event Handlers
- (void)onOpinionButtonSetSelect:(id)sender
{
    NSLog(@"On Tap");
}


@end
