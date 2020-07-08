//
//  LBTeamViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamViewController.h"
#import "LBTeamAddViewController.h"
#import "LBTeamListTableViewCell.h"
#import "LBTeamModel.h"

@interface LBTeamViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *LBAddBtn;
@property(nonatomic, strong)NSMutableArray *LBdataArray;
@property(nonatomic, strong)UITableView *LBmainTable;
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
    LBTeamAddViewController *LBTeamAddVC = [[LBTeamAddViewController alloc] init];
    [self.navigationController pushViewController:LBTeamAddVC animated:YES];
}
- (void)LBloadDataAction{
    
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
- (NSMutableArray *)LBdataArray{
    if (!_LBdataArray) {
        _LBdataArray = [[NSMutableArray alloc] init];
    }
    return _LBdataArray;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 48.0f;
        _LBmainTable.dataSource = self;
        _LBmainTable.delegate = self;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_LBmainTable registerClass:[LBTeamListTableViewCell class] forCellReuseIdentifier:@"LBTeamListTableViewCell"];
        _LBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(LBloadDataAction)];
        [self.view addSubview:_LBmainTable];
        [_LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _LBmainTable;
}
@end
