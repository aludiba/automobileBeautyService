//
//  LBTeamViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamViewController.h"
#import "LBTeamAddViewController.h"

@interface LBTeamViewController ()
@property(nonatomic, strong)UIButton *LBAddBtn;
@end

@implementation LBTeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"球队";
}
- (void)LB_setupNavigationItems{
    [super LB_setupNavigationItems];
    UIBarButtonItem *LBRightItem = [[UIBarButtonItem alloc] initWithCustomView:self.LBAddBtn];
    self.navigationItem.rightBarButtonItem = LBRightItem;
}
#pragma mark - actions
- (void)LBRightButtonAction{
    NSLog(@"新增球队~~~");
    LBTeamAddViewController *LBTeamAddVC = [[LBTeamAddViewController alloc] init];
    [self.navigationController pushViewController:LBTeamAddVC animated:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)LBAddBtn{
    if (!_LBAddBtn) {
        _LBAddBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_LBAddBtn setImage:[UIImage imageNamed:@"LB_add"] forState:UIControlStateNormal];
        [_LBAddBtn addTarget:self action:@selector(LBRightButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBAddBtn;
}
@end
