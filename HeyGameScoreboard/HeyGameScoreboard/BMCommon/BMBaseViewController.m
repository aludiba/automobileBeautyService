//
//  BMBaseViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "BMBaseViewController.h"

@interface BMBaseViewController ()

@end

@implementation BMBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor cyanColor];
    [self BM_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)BMbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *BMtitleLabel = [[UILabel alloc] init];
    BMtitleLabel.textAlignment = NSTextAlignmentCenter;
    BMtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    BMtitleLabel.textColor = [UIColor blackColor];
    BMtitleLabel.text = title;
    [BMtitleLabel sizeToFit];
    self.navigationItem.titleView = BMtitleLabel;
}
- (void)BM_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _BMbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BMbackButton setImage:[UIImage imageNamed:@"BM_fanhui"] forState:UIControlStateNormal];
        _BMbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_BMbackButton addTarget:self action:@selector(BMbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *BMbackItem = [[UIBarButtonItem alloc] initWithCustomView:_BMbackButton];
        self.navigationItem.leftBarButtonItem = BMbackItem;
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
