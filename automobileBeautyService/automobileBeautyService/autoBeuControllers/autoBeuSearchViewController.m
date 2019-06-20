//
//  autoBeuSearchViewController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuSearchViewController.h"

@implementation autoBeuSearchViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    self.title = @"Search";
}
@end
