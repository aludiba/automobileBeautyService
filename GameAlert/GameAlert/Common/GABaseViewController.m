//
//  GABaseViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "GABaseViewController.h"
@interface GABaseViewController ()

@end
@implementation GABaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self GA_setupNavigationItems];
    self.view.backgroundColor = [UIColor yellowColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)GAbackButtonAction{
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
- (void)GA_setupNavigationItems {
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _GAbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_GAbackButton setImage:[UIImage imageNamed:@"GABtn_back"] forState:UIControlStateNormal];
        _GAbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_GAbackButton addTarget:self action:@selector(GAbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_GAbackButton];
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
