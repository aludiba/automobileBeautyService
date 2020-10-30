//
//  MPBaseViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import "MPBaseViewController.h"

@interface MPBaseViewController ()

@end

@implementation MPBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    [self MP_setupNavigationItems];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)MPbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *MPtitleLabel = [[UILabel alloc] init];
    MPtitleLabel.textAlignment = NSTextAlignmentCenter;
    MPtitleLabel.font = [UIFont boldSystemFontOfSize:20.0f];
    MPtitleLabel.textColor = [UIColor blackColor];
    MPtitleLabel.text = title;
    [MPtitleLabel sizeToFit];
    self.navigationItem.titleView = MPtitleLabel;
}
- (void)MP_setupNavigationItems {
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _MPbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_MPbackButton setImage:[UIImage imageNamed:@"MP_fanhui"] forState:UIControlStateNormal];
        _MPbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_MPbackButton addTarget:self action:@selector(MPbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *MPbackItem = [[UIBarButtonItem alloc] initWithCustomView:_MPbackButton];
        self.navigationItem.leftBarButtonItem = MPbackItem;
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
