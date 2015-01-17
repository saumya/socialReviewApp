//
//  RayOpinionDetailsViewController.h
//  How This Buddy
//
//  Created by saumya ray on 1/17/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RayTableViewCellTwo.h"

@interface RayOpinionDetailsViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,retain) NSArray *requestArray;

- (IBAction)onOpinionButtonSetSelect:(id)sender;

@end
