//
//  RayTableViewCellTwo.m
//  How This Buddy
//
//  Created by saumya ray on 1/17/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayTableViewCellTwo.h"

@implementation RayTableViewCellTwo

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)onDetail:(id)sender
{
    NSLog(@"onDetail");
    //"segueToDetailView1"
    //[self performSegueWithIdentifier:@"segueToDetailView1" sender:self];
}

@end
