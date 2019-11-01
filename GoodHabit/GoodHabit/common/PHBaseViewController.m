//
//  PHBaseViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHBaseViewController.h"

@interface PHBaseViewController ()

@end

@implementation PHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self PH_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)PHbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *PHtitleLabel = [[UILabel alloc] init];
    PHtitleLabel.textAlignment = NSTextAlignmentCenter;
    PHtitleLabel.font = [UIFont systemFontOfSize:18.0];
    PHtitleLabel.textColor = [UIColor grayColor];
    PHtitleLabel.text = title;
    [PHtitleLabel sizeToFit];
    self.navigationItem.titleView = PHtitleLabel;
}
- (void)PH_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _PHbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_PHbackButton setImage:[UIImage imageNamed:@"btn_back"] forState:UIControlStateNormal];
        _PHbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_PHbackButton addTarget:self action:@selector(PHbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_PHbackButton];
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
