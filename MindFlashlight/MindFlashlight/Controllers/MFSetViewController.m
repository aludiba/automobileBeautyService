//
//  MFSetViewController.m
//  MindFlashlight
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "MFSetViewController.h"

@interface MFSetViewController ()
@property(nonatomic, strong)UIScrollView *scrollView;
@property(nonatomic, strong)UIView *contentView;
@end

@implementation MFSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = MFH_Color(35, 33, 49, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = MFH_Color(32, 37, 54, 1);
}

@end
