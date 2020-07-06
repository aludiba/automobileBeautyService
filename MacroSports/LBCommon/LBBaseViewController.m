//
//  LBBaseViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBBaseViewController.h"

@interface LBBaseViewController ()

@end

@implementation LBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor systemGreenColor];
    [self LB_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)LBbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *LBtitleLabel = [[UILabel alloc] init];
    LBtitleLabel.textAlignment = NSTextAlignmentCenter;
    LBtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    LBtitleLabel.textColor = [UIColor blackColor];
    LBtitleLabel.text = title;
    [LBtitleLabel sizeToFit];
    self.navigationItem.titleView = LBtitleLabel;
}
- (void)LB_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _LBbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_LBbackButton setImage:[UIImage imageNamed:@"LB_fanhui"] forState:UIControlStateNormal];
        _LBbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_LBbackButton addTarget:self action:@selector(LBbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *LBbackItem = [[UIBarButtonItem alloc] initWithCustomView:_LBbackButton];
        self.navigationItem.leftBarButtonItem = LBbackItem;
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
