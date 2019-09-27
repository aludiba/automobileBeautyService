//
//  GHDailyHabitsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHDailyHabitsViewController.h"
#import "GHGuideViewController.h"
#import "GHDailyHabitsTableViewHeaderView.h"
#import "GHDailyHabitsTableViewCell.h"
#import "GHGuideModel.h"
@interface GHDailyHabitsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSArray *array;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)NSMutableArray *currentDataArray;
@property(nonatomic, strong)GHDailyHabitsTableViewHeaderView *headerView;
@property(nonatomic, strong)UIButton *addHbbitButton;
@property(nonatomic, assign)NSUInteger selectIndex;
@end

@implementation GHDailyHabitsViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"日常习惯", nil);
    [self loadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)GH_setupNavigationItems{
    [super GH_setupNavigationItems];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.addHbbitButton];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"GHClockProjects"];
       BmobUser *author = [BmobUser currentUser];
       [bquery whereKey:@"author" equalTo:author];
       __weak typeof(self) weakSelf = self;
       [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
           if (error) {
               [self.mainTable.mj_header endRefreshing];
               [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
           }else{
               [self.mainTable.mj_header endRefreshing];
               if (array.count) {
                   [weakSelf.dataArray removeAllObjects];
                   BmobObject *obj = [array lastObject];
                   NSArray *dataArray = [obj objectForKey:@"data"];
                   self.array = [dataArray copy];
                   for (int i = 0; i < self.array.count; i++) {
                       NSDictionary *dic = self.array[i];
                       GHGuideModel *model = [GHGuideModel yy_modelWithDictionary:dic];
                       Boolean isAddSection = YES;
                       for (NSMutableDictionary *dic in self.dataArray) {
                           NSString *sectionString = [dic objectForKey:@"section"];
                           if ([sectionString isEqualToString:model.periodTimeString]) {
                               isAddSection = NO;
                           }
                       }
                       if (isAddSection) {
                           NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                           [dic setObject:model.periodTimeString forKey:@"section"];
                           [dic setObject:[NSNumber numberWithInteger:model.periodCode] forKey:@"sectionCode"];
                           NSMutableArray *dataArray = [[NSMutableArray alloc] init];
                           [dic setObject:dataArray forKey:@"data"];
                           [dataArray addObject:model];
                           [self.dataArray addObject:dic];
                       }else{
                           NSMutableDictionary *DIC;
                           for (NSMutableDictionary *dic in self.dataArray) {
                               NSString *sectionString = [dic objectForKey:@"section"];
                               if ([sectionString isEqualToString:model.periodTimeString]) {
                                   DIC = dic;
                               }
                           }
                           NSMutableArray *dataArray = [DIC objectForKey:@"data"];
                           [dataArray addObject:model];
                       }
                   }
                   NSMutableDictionary *dic = [self.dataArray firstObject];
                      NSMutableArray *dataArr = [dic objectForKey:@"data"];
                    self.currentDataArray = dataArr;
                   [self.mainTable reloadData];
               }else{
                   [self.mainTable.mj_header endRefreshing];
                   [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }
           }
       }];
}
- (void)dataUpdate{
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"GHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.dataArray.count; i++) {
        NSMutableDictionary *dic = self.dataArray[i];
        NSArray *dataA = [dic objectForKey:@"data"];
        for (int j = 0; j < dataA.count; j++) {
            GHGuideModel *model = dataA[j];
            NSMutableDictionary *DIC = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
            [tempArray addObject:DIC];
        }
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD GHshowReminderText:NSLocalizedString(@"删除成功", nil)];
                [self loadData];
            } else if (error){
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD GHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    GHDailyHabitsTableViewHeaderView *headerView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"GHDailyHabitsTableViewHeaderView"];
    headerView.dataA = self.array;
    headerView.dataArray = self.dataArray;
    headerView.selectIndex = self.selectIndex;
    [headerView adjustColor];
    self.headerView = headerView;
    __weak typeof(self) weakSelf = self;
    headerView.selectSectionB = ^(GHDailyHabitsTableViewHeaderView * _Nonnull habitsHeaderView) {
        weakSelf.currentDataArray = habitsHeaderView.currentDataArray;
        weakSelf.selectIndex = habitsHeaderView.selectIndex;
        [weakSelf.mainTable reloadData];
    };
    return headerView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.currentDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GHGuideModel *model = [self.currentDataArray objectAtIndex:indexPath.row];
    GHDailyHabitsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GHDailyHabitsTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 先删除数据源
    [self.currentDataArray removeObjectAtIndex:indexPath.row];
    // 再删除cell
    [self.mainTable deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [self dataUpdate];
}
- (void)addHabits{
    GHGuideViewController *guideVC = [[GHGuideViewController alloc] init];
    guideVC.superHabitsVC = self;
    guideVC.selectIndex = 1;
    guideVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:guideVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.rowHeight  = UITableViewAutomaticDimension;
        _mainTable.estimatedSectionHeaderHeight = 60.0f;
        _mainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        [_mainTable registerClass:[GHDailyHabitsTableViewHeaderView class] forHeaderFooterViewReuseIdentifier:@"GHDailyHabitsTableViewHeaderView"];
        [_mainTable registerClass:[GHDailyHabitsTableViewCell class] forCellReuseIdentifier:@"GHDailyHabitsTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
- (UIButton *)addHbbitButton{
    if (!_addHbbitButton) {
        _addHbbitButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_addHbbitButton setImage:[UIImage imageNamed:@"btn_new_add"] forState:UIControlStateNormal];
        [_addHbbitButton addTarget:self action:@selector(addHabits) forControlEvents:UIControlEventTouchUpInside];
    }
    return _addHbbitButton;
}
@end
