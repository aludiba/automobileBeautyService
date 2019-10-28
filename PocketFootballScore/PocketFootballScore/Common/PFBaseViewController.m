//
//  PFBaseViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "PFBaseViewController.h"
@interface PFBaseViewController ()

@end
@implementation PFBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self PF_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)PFbackButtonAction{
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
- (void)PF_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _PFbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_PFbackButton setImage:[UIImage imageNamed:@"PFBtn_back"] forState:UIControlStateNormal];
        _PFbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_PFbackButton addTarget:self action:@selector(PFbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_PFbackButton];
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
