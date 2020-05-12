//
//  EBBaseViewController.m
//  超市运营助手
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 hb. All rights reserved.
//

#import "EBBaseViewController.h"

@interface EBBaseViewController ()

@end

@implementation EBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor orangeColor];
    [self EB_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)EBbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *EBtitleLabel = [[UILabel alloc] init];
    EBtitleLabel.textAlignment = NSTextAlignmentCenter;
    EBtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    EBtitleLabel.textColor = [UIColor systemBlueColor];
    EBtitleLabel.text = title;
    [EBtitleLabel sizeToFit];
    self.navigationItem.titleView = EBtitleLabel;
}
- (void)EB_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _EBbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_EBbackButton setImage:[UIImage imageNamed:@"EBbtn_back"] forState:UIControlStateNormal];
        _EBbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_EBbackButton addTarget:self action:@selector(EBbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *EBbackItem = [[UIBarButtonItem alloc] initWithCustomView:_EBbackButton];
        self.navigationItem.leftBarButtonItem = EBbackItem;
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
