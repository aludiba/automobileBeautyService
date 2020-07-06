//
//  LBHomeViewController.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBHomeViewController.h"
#import "LBSetViewController.h"
#import "LBHomeHeaderView.h"
#import "LBHomeTableViewCell.h"
#import "LBSetViewController.h"
#import "LBTeamViewController.h"
#import "LBStopwatchViewController.h"
#import "LBCreateGameViewController.h"
#import "LBMoreGamesViewController.h"
@interface LBHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *LBSetBtn;//设置按钮
@property(nonatomic, strong)UITableView *LBmainTable;//列表
@property(nonatomic, strong)NSMutableArray *LBDataArray;//数据数组
@end

@implementation LBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"主页";
    [self setContentView];
    [self setContentLayout];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)setContentView{
    [self.view addSubview:self.LBmainTable];
}
- (void)setContentLayout{
    [self.LBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
    }];
}
- (void)LB_setupNavigationItems {
    self.LBSetBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
    [self.LBSetBtn setImage:[UIImage imageNamed:@"LB_shezhi"] forState:UIControlStateNormal];
    [self.LBSetBtn addTarget:self action:@selector(LBLeftButtonAction) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *LBLeftItem = [[UIBarButtonItem alloc] initWithCustomView:_LBSetBtn];
    self.navigationItem.leftBarButtonItem = LBLeftItem;
}
#pragma mark - actions
- (void)LBLeftButtonAction{
    LBSetViewController *LBSetVC = [[LBSetViewController alloc] init];
    [self.navigationController pushViewController:LBSetVC animated:YES];
}
#pragma mark - UITableView代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LBDataArray.count;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    LBHomeHeaderView *LBHeader = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"LBHomeHeaderView"];
    LBHeader.LBHeaderActionBlock = ^(LBHomeHeaderView * _Nonnull header) {
        if (header.LBIndex == 99) {
            NSLog(@"球队~~~");
            LBTeamViewController *LBTeamVC = [[LBTeamViewController alloc] init];
            [self.navigationController pushViewController:LBTeamVC animated:YES];
        }else if (header.LBIndex == 100){
            NSLog(@"秒表~~~");
            LBStopwatchViewController *LBStopwatchVC = [[LBStopwatchViewController alloc] init];
            [self.navigationController pushViewController:LBStopwatchVC animated:YES];
        }else if (header.LBIndex == 101){
            NSLog(@"创建比赛~~~");
            LBCreateGameViewController *LBCreateGameVC = [[LBCreateGameViewController alloc] init];
            [self.navigationController pushViewController:LBCreateGameVC animated:YES];
        }else{
            NSLog(@"更多比赛~~~");
            LBMoreGamesViewController *LBMoreGamesVC = [[LBMoreGamesViewController alloc] init];
            [self.navigationController pushViewController:LBMoreGamesVC animated:YES];
        }
    };
    return LBHeader;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LBHomeTableViewCell *LBCell = [tableView dequeueReusableCellWithIdentifier:@"LBHomeTableViewCell" forIndexPath:indexPath];
    return LBCell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)LBDataArray{
    if (!_LBDataArray) {
        _LBDataArray = [[NSMutableArray alloc] init];
    }
    return _LBDataArray;
}
- (UIButton *)LBSetBtn{
    if (!_LBSetBtn) {
        _LBSetBtn = [[UIButton alloc] init];
        [_LBSetBtn setImage:[UIImage imageNamed:@"LB_shezhi"] forState:UIControlStateNormal];
    }
    return _LBSetBtn;
}
- (UITableView *)LBmainTable{
    if (!_LBmainTable) {
        _LBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _LBmainTable.rowHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedRowHeight = 48.0f;
        _LBmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _LBmainTable.estimatedSectionHeaderHeight = 48.0f;
        _LBmainTable.dataSource = self;
        _LBmainTable.delegate = self;
        _LBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_LBmainTable registerClass:[LBHomeHeaderView class] forHeaderFooterViewReuseIdentifier:@"LBHomeHeaderView"];
        [_LBmainTable registerClass:[LBHomeTableViewCell class] forCellReuseIdentifier:@"LBHomeTableViewCell"];
    }
    return _LBmainTable;
}
@end
