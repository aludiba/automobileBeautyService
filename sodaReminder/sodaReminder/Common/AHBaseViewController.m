//
//  AHBaseViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "AHBaseViewController.h"
@interface AHBaseViewController ()

@end
@implementation AHBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self AH_setupNavigationItems];
    self.view.backgroundColor = [UIColor yellowColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)AHbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:18.0];
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.text = title;
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}
- (void)AH_setupNavigationItems {
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _AHbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_AHbackButton setImage:[UIImage imageNamed:@"AHBtn_back"] forState:UIControlStateNormal];
        _AHbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_AHbackButton addTarget:self action:@selector(AHbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_AHbackButton];
        self.navigationItem.leftBarButtonItem = backItem;
    }
}
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}
-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationPortrait;
}
@end
