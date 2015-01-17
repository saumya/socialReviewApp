//
//  RayOpinionGivenDetailViewController.h
//  How This Buddy
//
//  Created by saumya ray on 1/18/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RayTableViewCellTwo.h"
#import "RayTableViewCellThree.h"

@interface RayOpinionGivenDetailViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,retain) NSArray *requestArray;
@property (nonatomic,retain) NSArray *noResponseArray;

@property (nonatomic) BOOL isOpinionView;

- (IBAction)onOpinionButtonSetSelect:(id)sender;
@property (nonatomic, strong) IBOutlet UITableView *myTableView;


@end
