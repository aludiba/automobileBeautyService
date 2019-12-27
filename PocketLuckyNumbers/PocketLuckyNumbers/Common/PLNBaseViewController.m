//
//  PLNBaseViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "PLNBaseViewController.h"
@interface PLNBaseViewController ()

@end
@implementation PLNBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self PLN_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)PLNbackButtonAction{
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
- (void)PLN_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _PLNbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_PLNbackButton setImage:[UIImage imageNamed:@"PLNBtn_back"] forState:UIControlStateNormal];
        _PLNbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_PLNbackButton addTarget:self action:@selector(PLNbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_PLNbackButton];
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
