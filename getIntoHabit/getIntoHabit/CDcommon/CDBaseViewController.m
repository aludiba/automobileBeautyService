//
//  CDBaseViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDBaseViewController.h"

@interface CDBaseViewController ()

@end

@implementation CDBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self CD_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)CDbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *CDtitleLabel = [[UILabel alloc] init];
    CDtitleLabel.textAlignment = NSTextAlignmentCenter;
    CDtitleLabel.font = [UIFont systemFontOfSize:18.0];
    CDtitleLabel.textColor = [UIColor grayColor];
    CDtitleLabel.text = title;
    [CDtitleLabel sizeToFit];
    self.navigationItem.titleView = CDtitleLabel;
}
- (void)CD_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _CDbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_CDbackButton setImage:[UIImage imageNamed:@"CDbtn_back"] forState:UIControlStateNormal];
        _CDbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_CDbackButton addTarget:self action:@selector(CDbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_CDbackButton];
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
