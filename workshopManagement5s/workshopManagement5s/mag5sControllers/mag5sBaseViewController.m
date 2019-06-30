//
//  mag5sBaseViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sBaseViewController.h"

@interface mag5sBaseViewController ()

@end

@implementation mag5sBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self mag5s_setupNavigationItems];
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.extendedLayoutIncludesOpaqueBars = YES;
}
- (void)mag5sbackButtonAction{
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)setTitle:(NSString *)title {
    self.navigationItem.title = @"";
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont systemFontOfSize:18.0];
    titleLabel.textColor = [UIColor grayColor];
    titleLabel.text = title;
    [titleLabel sizeToFit];
    self.navigationItem.titleView = titleLabel;
}
- (void)mag5s_setupNavigationItems{
    if (self.navigationController && self.navigationController.viewControllers.count > 1) {
        self.navigationItem.hidesBackButton = YES;
        _mag5sbackButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_mag5sbackButton setImage:[UIImage imageNamed:@"mag5sbtn_back.imageset"] forState:UIControlStateNormal];
        _mag5sbackButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [_mag5sbackButton addTarget:self action:@selector(mag5sbackButtonAction) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:_mag5sbackButton];
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
