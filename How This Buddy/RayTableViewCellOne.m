//
//  RayTableViewCellOne.m
//  How This Buddy
//
//  Created by saumya ray on 1/4/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayTableViewCellOne.h"

@implementation RayTableViewCellOne

@synthesize textLabel;
@synthesize phoneLabel;
@synthesize opinionSwitch;

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

@end
