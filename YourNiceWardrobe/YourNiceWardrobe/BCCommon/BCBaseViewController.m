//
//  BCBaseViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCBaseViewController.h"

@interface BCBaseViewController ()

@end

@implementation BCBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor purpleColor];
    [self BC_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)BCbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *BCtitleLabel = [[UILabel alloc] init];
    BCtitleLabel.textAlignment = NSTextAlignmentCenter;
    BCtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    BCtitleLabel.textColor = [UIColor whiteColor];
    BCtitleLabel.text = title;
    [BCtitleLabel sizeToFit];
    self.navigationItem.titleView = BCtitleLabel;
}
- (void)BC_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _BCbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCbackButton setImage:[UIImage imageNamed:@"BCbtn_back"] forState:UIControlStateNormal];
        _BCbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_BCbackButton addTarget:self action:@selector(BCbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *BCbackItem = [[UIBarButtonItem alloc] initWithCustomView:_BCbackButton];
        self.navigationItem.leftBarButtonItem = BCbackItem;
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
