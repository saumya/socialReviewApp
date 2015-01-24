//
//  RayTableViewCellThree.m
//  How This Buddy
//
//  Created by saumya ray on 1/18/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayTableViewCellThree.h"

@implementation RayTableViewCellThree

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

- (IBAction)onLike:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Like"
                                                    message:@"Like is selected"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",nil];
    //alert.tag =2;
    [alert show];
    //[alert release];
}
- (IBAction)onNotSure:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Not Sure"
                                                    message:@"Not Sure is selected"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",nil];
    //alert.tag =2;
    [alert show];
}
- (IBAction)onNotLike:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Not Like"
                                                    message:@"Not Like is selected"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok",nil];
    //alert.tag =2;
    [alert show];
}

@end
