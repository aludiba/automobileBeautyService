//
//  BMHistoryViewController.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/11.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "BMHistoryViewController.h"
#import "BMHistoryTableViewCell.h"
#import "BMScoringModel.h"
@interface BMHistoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *BMdataArray;
@property(nonatomic, strong)UITableView *BMmainTable;
@end

@implementation BMHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"比赛历史";
    [self.BMmainTable.mj_header beginRefreshing];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BMdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BMScoringModel *BMscoringmodel = self.BMdataArray[indexPath.row];
    BMHistoryTableViewCell *BMcell = [tableView dequeueReusableCellWithIdentifier:@"BMHistoryTableViewCell" forIndexPath:indexPath];
    BMcell.selectionStyle = UITableViewCellSelectionStyleNone;
    BMcell.BMscoringmodel = BMscoringmodel;
    return BMcell;
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
    BMScoringModel *BMgameodel = self.BMdataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
        [self.BMdataArray removeObjectAtIndex:indexPath.row];
        [self BMdeleteDataAction:BMgameodel];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - actions
- (void)BMloadDataAction{
    AVQuery *BMdataList = [AVQuery queryWithClassName:@"BMscoringList"];
    BMWeakSelf(self);
    [self.BMdataArray removeAllObjects];
    [BMdataList findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        BMStrongSelf(self);
               if (error) {
                   [self.BMmainTable.mj_header endRefreshing];
                   [MBProgressHUD BMshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *BMobj = array[i];
                       BMScoringModel *BMmodel = [[BMScoringModel alloc] init];
                       BMmodel.BMobjectId = [BMobj objectId];
                       BMmodel.BMaTeamName = [BMobj objectForKey:@"BMaTeamName"];
                       BMmodel.BMaTeamScore = [BMobj objectForKey:@"BMaTeamScore"];
                       BMmodel.BMbTeamName = [BMobj objectForKey:@"BMbTeamName"];
                       BMmodel.BMbTeamScore = [BMobj objectForKey:@"BMbTeamScore"];
                       BMmodel.BMendDateTime = [BMobj objectForKey:@"BMendDateTime"];
                       [self.BMdataArray addObject:BMmodel];
                   }
                    [self.BMmainTable.mj_header endRefreshing];
                    [self.BMmainTable reloadData];
                   }else{
                       [self.BMmainTable.mj_header endRefreshing];
                       [MBProgressHUD BMshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)BMdeleteDataAction:(BMScoringModel *)BMScoringModel{
    AVObject *BMdataList = [AVObject objectWithClassName:@"BMscoringList" objectId:BMScoringModel.BMobjectId];
    BMWeakSelf(self);
    [BMdataList deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        BMStrongSelf(self);
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD BMshowReminderText:@"删除成功"];
        [self.BMdataArray removeObject:BMScoringModel];
    }else {
        [MBProgressHUD BMshowReminderText:@"请稍后重试"];
    }
    }];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BMdataArray{
    if (!_BMdataArray) {
        _BMdataArray = [[NSMutableArray alloc] init];
    }
    return _BMdataArray;
}
- (UITableView *)BMmainTable{
    if (!_BMmainTable) {
        _BMmainTable = [[UITableView alloc] init];
        _BMmainTable.rowHeight = UITableViewAutomaticDimension;
        _BMmainTable.estimatedRowHeight = 48.0f;
        _BMmainTable.dataSource = self;
        _BMmainTable.delegate = self;
        _BMmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BMmainTable registerClass:[BMHistoryTableViewCell class] forCellReuseIdentifier:@"BMHistoryTableViewCell"];
        _BMmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(BMloadDataAction)];
        [self.view addSubview:_BMmainTable];
        [_BMmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _BMmainTable;
}

@end
