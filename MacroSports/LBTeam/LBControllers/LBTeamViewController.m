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
@end

@implementation LBTeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"球队";
    [self.LBmainTable.mj_header beginRefreshing];
}
- (void)LB_setupNavigationItems{
    [super LB_setupNavigationItems];
    UIBarButtonItem *LBRightItem = [[UIBarButtonItem alloc] initWithCustomView:self.LBAddBtn];
    self.navigationItem.rightBarButtonItem = LBRightItem;
}
#pragma mark - actions
- (void)LBRightButtonAction{
    LBTeamAddViewController *LBTeamAddVC = [[LBTeamAddViewController alloc] init];
    LBTeamAddVC.LBsuperVC = self;
    [self.navigationController pushViewController:LBTeamAddVC animated:YES];
}
- (void)LBloadDataAction{
    AVUser *LBauthor = [AVUser currentUser];
    AVQuery *LBdataList = [AVQuery queryWithClassName:@"LBteamList"];
    [LBdataList whereKey:@"author" equalTo:LBauthor];
    __weak typeof(self) weakSelf = self;
    [self.LBdataArray removeAllObjects];
    [LBdataList findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.LBmainTable.mj_header endRefreshing];
                   [MBProgressHUD LBshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *LBobj = array[i];
                       LBTeamModel *LBmodel = [[LBTeamModel alloc] init];
                       LBmodel.LBobjectId = [LBobj objectId];
                       LBmodel.LBteamName = [LBobj objectForKey:@"LBteamName"];
                       LBmodel.LBnote = [LBobj objectForKey:@"LBnote"];
                       [self.LBdataArray addObject:LBmodel];
                   }
                    [weakSelf.LBmainTable.mj_header endRefreshing];
                    [weakSelf.LBmainTable reloadData];
                   }else{
                       [weakSelf.LBmainTable.mj_header endRefreshing];
                       [MBProgressHUD LBshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)LBdeleteDataAction:(LBTeamModel *)LBteammodel{
    AVObject *LBdataList = [AVObject objectWithClassName:@"LBteamList" objectId:LBteammodel.LBobjectId];
    LBWeakSelf(self);
    [LBdataList deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        LBStrongSelf(self);
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD LBshowReminderText:@"删除成功"];
        [self.LBdataArray removeObject:LBteammodel];
    }else {
        [MBProgressHUD LBshowReminderText:@"请稍后重试"];
    }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LBdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LBTeamModel *LBteamodel = self.LBdataArray[indexPath.row];
    LBTeamListTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBTeamListTableViewCell" forIndexPath:indexPath];
    LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    LBcell.LBteammodel = LBteamodel;
    return LBcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LBTeamModel *LBteamodel = self.LBdataArray[indexPath.row];
    if (self.LBisSelect) {
        self.LBSelectteammodel = LBteamodel;
        if (self.LBteamSelectB) {
            self.LBteamSelectB(self);
        }
        [self.navigationController popViewControllerAnimated:YES];
    }
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
   return @"删除";
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    LBTeamModel *LBmodel = self.LBdataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.LBdataArray removeObjectAtIndex:indexPath.row];
        [self LBdeleteDataAction:LBmodel];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
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
        _LBmainTable = [[UITableView alloc] init];
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
