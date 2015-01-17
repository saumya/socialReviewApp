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
