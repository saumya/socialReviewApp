//
//  RayCommentsView.m
//  How This Buddy
//
//  Created by saumya ray on 1/25/15.
//  Copyright (c) 2015 @saumya. All rights reserved.
//

#import "RayCommentsViewController.h"

@implementation RayCommentsViewController

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (IBAction)onDone:(id)sender
{
    //[self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
