//
//  JBHabitChildViewController.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/12.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHabitChildViewController.h"
#import "JBHabitViewController.h"
#import "JBHabitChildTableViewCell.h"
#import "JBHabitModel.h"
@interface JBHabitChildViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *JBDataArray;
@end

@implementation JBHabitChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self JBLoadData];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
#pragma mark - actions
- (void)JBLoadData{
    AVUser *JBauthor = [AVUser currentUser];
    AVQuery *JBbquery = [AVQuery queryWithClassName:@"JBAllHabits"];
    [JBbquery whereKey:@"author" equalTo:JBauthor];
    __weak typeof(self) weakSelf = self;
    [self.JBDataArray removeAllObjects];
    [JBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.JBmainTable.mj_header endRefreshing];
                   [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *JBobj = array[i];
                       if (weakSelf.JBHabitType == JBHabitChildTypeAll) {
                           JBHabitModel *JBmodel = [[JBHabitModel alloc] init];
                           JBmodel.JBobjectId = [JBobj objectId];
                           NSInteger JBType = [[JBobj objectForKey:@"JBType"] integerValue];
                           JBmodel.JBType = JBType;
                           JBmodel.JBPlanTime= [JBobj objectForKey:@"JBPlanTime"];
                           JBmodel.JBComment = [JBobj objectForKey:@"JBComment"];
                           [weakSelf.JBDataArray addObject:JBmodel];
                       }else if (weakSelf.JBHabitType == JBHabitChildTypeMotion){
                           NSInteger JBType = [[JBobj objectForKey:@"JBType"] integerValue];
                           if (JBType == JBHabitChildTypeMotion) {
                               JBHabitModel *JBmodel = [[JBHabitModel alloc] init];
                               JBmodel.JBobjectId = [JBobj objectId];
                               JBmodel.JBType = JBHabitChildTypeMotion;
                               JBmodel.JBPlanTime= [JBobj objectForKey:@"JBPlanTime"];
                               JBmodel.JBComment = [JBobj objectForKey:@"JBComment"];
                               [weakSelf.JBDataArray addObject:JBmodel];
                           }
                       }else if (weakSelf.JBHabitType == JBHabitChildTypeReadBook){
                           NSInteger JBType = [[JBobj objectForKey:@"JBType"] integerValue];
                           if (JBType == JBHabitChildTypeReadBook) {
                               JBHabitModel *JBmodel = [[JBHabitModel alloc] init];
                               JBmodel.JBobjectId = [JBobj objectId];
                               JBmodel.JBType = JBHabitChildTypeReadBook;
                               JBmodel.JBPlanTime= [JBobj objectForKey:@"JBPlanTime"];
                               JBmodel.JBComment = [JBobj objectForKey:@"JBComment"];
                               [weakSelf.JBDataArray addObject:JBmodel];
                           }
                       }else if (weakSelf.JBHabitType == JBHabitChildTypeMusicalInstruments){
                           NSInteger JBType = [[JBobj objectForKey:@"JBType"] integerValue];
                           if (JBType == JBHabitChildTypeMusicalInstruments) {
                               JBHabitModel *JBmodel = [[JBHabitModel alloc] init];
                               JBmodel.JBobjectId = [JBobj objectId];
                               JBmodel.JBType = JBHabitChildTypeMusicalInstruments;
                               JBmodel.JBPlanTime= [JBobj objectForKey:@"JBPlanTime"];
                               JBmodel.JBComment = [JBobj objectForKey:@"JBComment"];
                               [weakSelf.JBDataArray addObject:JBmodel];
                           }
                       }else if (weakSelf.JBHabitType == JBHabitChildTypeOthers){
                           NSInteger JBType = [[JBobj objectForKey:@"JBType"] integerValue];
                           if (JBType == JBHabitChildTypeOthers) {
                               JBHabitModel *JBmodel = [[JBHabitModel alloc] init];
                               JBmodel.JBobjectId = [JBobj objectId];
                               JBmodel.JBType = JBHabitChildTypeOthers;
                               JBmodel.JBPlanTime= [JBobj objectForKey:@"JBPlanTime"];
                               JBmodel.JBComment = [JBobj objectForKey:@"JBComment"];
                               [weakSelf.JBDataArray addObject:JBmodel];
                           }
                       }
                   }
                    [weakSelf.JBmainTable.mj_header endRefreshing];
                    [weakSelf.JBmainTable reloadData];
                   }else{
                       [weakSelf.JBmainTable.mj_header endRefreshing];
                       [MBProgressHUD JBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                   }
              }
           }];
}
- (void)JBDeleteData:(JBHabitModel *)JBmodel withIndex:(NSIndexPath *)JBindexPath{
    AVObject *JBdiary = [AVObject objectWithClassName:@"JBAllHabits" objectId:JBmodel.JBobjectId];
    __weak typeof(self) weakSelf = self;
    [JBdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
    if (isSuccessful) {
         //删除成功后的动作
        if (strongSelf.JBHabitType == JBHabitChildTypeAll) {
            if (JBmodel.JBType == JBHabitChildTypeMotion) {
                [strongSelf.JBsuperVC.JBChildMotionVC.JBMainTable.mj_header beginRefreshing];
            }else if (JBmodel.JBType == JBHabitChildTypeReadBook){
                [strongSelf.JBsuperVC.JBChildReadBookVC.JBMainTable.mj_header beginRefreshing];
            }else if (JBmodel.JBType == JBHabitChildTypeMusicalInstruments){
                [strongSelf.JBsuperVC.JBChildMusicalInstrumentsVC.JBMainTable.mj_header beginRefreshing];
            }else if (JBmodel.JBType == JBHabitChildTypeOthers){
                [strongSelf.JBsuperVC.JBChildOthersVC.JBMainTable.mj_header beginRefreshing];
            }
        }
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [strongSelf.JBDataArray removeObject:JBmodel];
        [strongSelf.JBMainTable reloadData];
    }else {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.JBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    JBHabitModel *JBmodel = self.JBDataArray[indexPath.row];
    JBHabitChildTableViewCell *JBcell = [tableView dequeueReusableCellWithIdentifier:@"JBHabitChildTableViewCell" forIndexPath:indexPath];
    JBcell.JBhabitmodel = JBmodel;
    JBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    JBcell.JBeditBlock = ^(JBHabitChildTableViewCell * _Nonnull JBcell) {
        __strong typeof(weakSelf) strongSelf = weakSelf;
        [strongSelf JBDeleteData:JBmodel  withIndex:indexPath];
    };
    return JBcell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)JBDataArray{
    if (!_JBDataArray) {
        _JBDataArray = [[NSMutableArray alloc] init];
    }
    return _JBDataArray;
}
- (UITableView *)JBmainTable{
    if (!_JBMainTable) {
        _JBMainTable = [[UITableView alloc] init];
        _JBMainTable.backgroundColor = [UIColor cyanColor];
        _JBMainTable.rowHeight = UITableViewAutomaticDimension;
        _JBMainTable.estimatedRowHeight = 116.0f;
        _JBMainTable.dataSource = self;
        _JBMainTable.delegate = self;
        _JBMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_JBMainTable registerClass:[JBHabitChildTableViewCell class] forCellReuseIdentifier:@"JBHabitChildTableViewCell"];
        [self.view addSubview:_JBMainTable];
        [_JBMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-JBHeightTabBar - 50);
        }];
        _JBMainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(JBLoadData)];
    }
    return _JBMainTable;
}
@end
