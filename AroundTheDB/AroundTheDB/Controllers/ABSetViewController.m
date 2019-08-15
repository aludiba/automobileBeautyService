//
//  ABSetViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABSetViewController.h"

@interface ABSetViewController ()

@end

@implementation ABSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
@end
