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
@synthesize noResponseArray;

@synthesize isOpinionView;
@synthesize myTableView;


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
    //
    self.noResponseArray = @[
                          @{
                              @"name": @"Jumbo Shoes",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Nike Cap",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Adidas Shirt",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Hike Racket",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Kemp Bike",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Inn Cap",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Kool Shoes",
                              @"phone":@"Invite Again"
                              },
                          @{
                              @"name": @"Jumbo Basket",
                              @"phone":@"Invite Again"
                              }
                          ];
    //
    self.isOpinionView = TRUE;
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
    NSUInteger i;
    if(self.isOpinionView==TRUE){
        i = self.requestArray.count;
    }else{
        i = self.noResponseArray.count;
    }
    return i;
    //return self.requestArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSLog(@"isOpinioinView= %hhd",self.isOpinionView);
    
    if(self.isOpinionView==TRUE){
        static NSString *cellIdentifier = @"idUser1";
        RayTableViewCellTwo *cell = (RayTableViewCellTwo *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell==nil) {
            cell = [[RayTableViewCellTwo alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        NSObject *obj = [self.requestArray objectAtIndex:indexPath.row];
        cell.nameLabel.text = [obj valueForKey:@"name"];
        cell.phoneLabel.text = [obj valueForKey:@"phone"];
        return cell;
    }else{
        static NSString *cellIdentifier = @"idUser2";
        RayTableViewCellThree *cell = (RayTableViewCellThree *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell==nil) {
            cell = [[RayTableViewCellThree alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        }
        NSObject *obj = [self.noResponseArray objectAtIndex:indexPath.row];
        cell.nameLabel.text = [obj valueForKey:@"name"];
        cell.phoneLabel.text = [obj valueForKey:@"phone"];
        return cell;    
    }
    
    
    //
    //return cell;
}


#pragma mark - Event Handlers
- (void)onOpinionButtonSetSelect:(id)sender
{
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    
    if (selectedSegment == 0) {
        //toggle the correct view to be visible
        //[firstView setHidden:NO];
        //[secondView setHidden:YES];
        self.isOpinionView = TRUE;
    }else{
        //toggle the correct view to be visible
        //[firstView setHidden:YES];
        //[secondView setHidden:NO];
        self.isOpinionView = FALSE;
    }
    //re-render the List
    [self.myTableView reloadData];
}


@end
