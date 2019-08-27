//
//  MFBaseViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//
#import "MFBaseViewController.h"
@interface MFBaseViewController ()

@end
@implementation MFBaseViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self MF_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)MFbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *titleLMFel = [[UILabel alloc] init];
    titleLMFel.textAlignment = NSTextAlignmentCenter;
    titleLMFel.font = [UIFont systemFontOfSize:20.0];
    titleLMFel.textColor = [UIColor whiteColor];
    titleLMFel.text = title;
    [titleLMFel sizeToFit];
    self.navigationItem.titleView = titleLMFel;
}
- (void)MF_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _MFbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_MFbackButton setImage:[UIImage imageNamed:@"MFbtn_back"] forState:UIControlStateNormal];
        _MFbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_MFbackButton addTarget:self action:@selector(MFbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_MFbackButton];
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
