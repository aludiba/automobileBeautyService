//
//  FBBaseViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBBaseViewController.h"

@interface FBBaseViewController ()

@end

@implementation FBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor cyanColor];
    [self FB_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)FBbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *FBtitleLabel = [[UILabel alloc] init];
    FBtitleLabel.textAlignment = NSTextAlignmentCenter;
    FBtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    FBtitleLabel.textColor = [UIColor blackColor];
    FBtitleLabel.text = title;
    [FBtitleLabel sizeToFit];
    self.navigationItem.titleView = FBtitleLabel;
}
- (void)FB_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _FBbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_FBbackButton setImage:[UIImage imageNamed:@"FBbtn_back"] forState:UIControlStateNormal];
        _FBbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_FBbackButton addTarget:self action:@selector(FBbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *FBbackItem = [[UIBarButtonItem alloc] initWithCustomView:_FBbackButton];
        self.navigationItem.leftBarButtonItem = FBbackItem;
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
