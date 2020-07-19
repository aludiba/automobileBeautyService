//
//  LBGameListViewController.m
//  MacroSports
//
//  Created by user on 2020/7/10.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBGameListViewController.h"
#import "LBGameTableViewCell.h"
#import "LBGameModel.h"

@interface LBGameListViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *LBdataArray;

@end

@implementation LBGameListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"比赛列表";
    [self.LBmainTable.mj_header beginRefreshing];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LBdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LBGameModel *LBgameodel = self.LBdataArray[indexPath.row];
    LBGameTableViewCell *LBcell = [tableView dequeueReusableCellWithIdentifier:@"LBGameTableViewCell" forIndexPath:indexPath];
    LBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    LBcell.LBgamemodel = LBgameodel;
    return LBcell;
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
    LBGameModel *LBgameodel = self.LBdataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.LBdataArray removeObjectAtIndex:indexPath.row];
        [self LBdeleteDataAction:LBgameodel];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - actions
- (void)LBloadDataAction{
    AVUser *LBauthor = [AVUser currentUser];
    AVQuery *LBdataList = [AVQuery queryWithClassName:@"LBgameList"];
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
                       LBGameModel *LBmodel = [[LBGameModel alloc] init];
                       LBmodel.LBobjectId = [LBobj objectId];
                       LBmodel.LBaTeamName = [LBobj objectForKey:@"LBaTeamName"];
                       LBmodel.LBaTeamScore = [LBobj objectForKey:@"LBaTeamScore"];
                       LBmodel.LBbTeamName = [LBobj objectForKey:@"LBbTeamName"];
                       LBmodel.LBbTeamScore = [LBobj objectForKey:@"LBbTeamScore"];
                       LBmodel.LBendDateTime = [LBobj objectForKey:@"LBendDateTime"];
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
- (void)LBdeleteDataAction:(LBGameModel *)LBgamemodel{
    AVObject *LBdataList = [AVObject objectWithClassName:@"LBgameList" objectId:LBgamemodel.LBobjectId];
    LBWeakSelf(self);
    [LBdataList deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        LBStrongSelf(self);
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD LBshowReminderText:@"删除成功"];
        [self.LBdataArray removeObject:LBgamemodel];
    }else {
        [MBProgressHUD LBshowReminderText:@"请稍后重试"];
    }
    }];
}
#pragma mark - 属性懒加载
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
        [_LBmainTable registerClass:[LBGameTableViewCell class] forCellReuseIdentifier:@"LBGameTableViewCell"];
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
