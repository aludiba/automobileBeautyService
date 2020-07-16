//
//  CDDailyHabitsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDDailyHabitsViewController.h"
#import "CDGuideViewController.h"
#import "CDDailyHabitsTableViewHeaderView.h"
#import "CDDailyHabitsTableViewCell.h"
#import "CDGuideModel.h"
@interface CDDailyHabitsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSArray *CDarray;
@property(nonatomic, strong)NSMutableArray *CDdataArray;
@property(nonatomic, strong)NSMutableArray *CDcurrentDataArray;
@property(nonatomic, strong)CDDailyHabitsTableViewHeaderView *CDheaderView;
@property(nonatomic, strong)UIButton *CDaddHbbitButton;
@property(nonatomic, assign)NSUInteger CDselectIndex;
@end

@implementation CDDailyHabitsViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"日常习惯", nil);
    [self CDloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)CD_setupNavigationItems{
    [super CD_setupNavigationItems];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.CDaddHbbitButton];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}
- (void)CDloadData{
       self.CDselectIndex = 0;
       AVQuery *bquery = [AVQuery queryWithClassName:@"CDClockProjects"];
       AVUser *author = [AVUser currentUser];
       [bquery whereKey:@"author" equalTo:author];
       __weak typeof(self) weakSelf = self;
       [bquery findObjectsInBackgroundWithBlock:^(NSArray *CDarray, NSError *error) {
           if (error) {
               [self.CDmainTable.mj_header endRefreshing];
               [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
           }else{
               [self.CDmainTable.mj_header endRefreshing];
               if (CDarray.count) {
                   [weakSelf.CDdataArray removeAllObjects];
                   AVObject *obj = [CDarray lastObject];
                   NSArray *CDdataArray = [obj objectForKey:@"data"];
                   self.CDarray = [CDdataArray copy];
                   for (int i = 0; i < self.CDarray.count; i++) {
                       NSDictionary *dic = self.CDarray[i];
                       CDGuideModel *model = [CDGuideModel yy_modelWithDictionary:dic];
                       Boolean isAddSection = YES;
                       for (NSMutableDictionary *dic in self.CDdataArray) {
                           NSString *sectionString = [dic objectForKey:@"section"];
                           if ([sectionString isEqualToString:model.CDperiodTimeString]) {
                               isAddSection = NO;
                           }
                       }
                       if (isAddSection) {
                           NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                           [dic setObject:model.CDperiodTimeString forKey:@"section"];
                           [dic setObject:[NSNumber numberWithInteger:model.CDperiodCode] forKey:@"sectionCode"];
                           NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
                           [dic setObject:CDdataArray forKey:@"data"];
                           [CDdataArray addObject:model];
                           [self.CDdataArray addObject:dic];
                       }else{
                           NSMutableDictionary *DIC;
                           for (NSMutableDictionary *dic in self.CDdataArray) {
                               NSString *sectionString = [dic objectForKey:@"section"];
                               if ([sectionString isEqualToString:model.CDperiodTimeString]) {
                                   DIC = dic;
                               }
                           }
                           NSMutableArray *CDdataArray = [DIC objectForKey:@"data"];
                           [CDdataArray addObject:model];
                       }
                   }
                   NSMutableDictionary *dic = [self.CDdataArray firstObject];
                      NSMutableArray *dataArr = [dic objectForKey:@"data"];
                    self.CDcurrentDataArray = dataArr;
                   [self.CDmainTable reloadData];
               }else{
                   [self.CDmainTable.mj_header endRefreshing];
                   [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }
           }
       }];
}
- (void)CDdataUpdate{
    AVObject *clockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *author = [AVUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSMutableDictionary *dic = self.CDdataArray[i];
        NSArray *dataA = [dic objectForKey:@"data"];
        for (int j = 0; j < dataA.count; j++) {
            CDGuideModel *model = dataA[j];
            NSMutableDictionary *DIC = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
            [tempArray addObject:DIC];
        }
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    for (NSString *key in tempDic.allKeys) {
        [clockProjects setObject:[tempDic objectForKey:key]  forKey:key];
    }
    [clockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD CDshowReminderText:NSLocalizedString(@"删除成功", nil)];
                [self CDloadData];
            } else if (error){
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    CDDailyHabitsTableViewHeaderView *CDheaderView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"CDDailyHabitsTableViewHeaderView"];
    CDheaderView.dataA = self.CDarray;
    CDheaderView.CDdataArray = self.CDdataArray;
    CDheaderView.CDselectIndex = self.CDselectIndex;
    [CDheaderView CDadjustColor];
    self.CDheaderView = CDheaderView;
    __weak typeof(self) weakSelf = self;
    CDheaderView.selectSectionB = ^(CDDailyHabitsTableViewHeaderView * _Nonnull habitsHeaderView) {
        weakSelf.CDcurrentDataArray = habitsHeaderView.currentDataArray;
        weakSelf.CDselectIndex = habitsHeaderView.CDselectIndex;
        [weakSelf.CDmainTable reloadData];
    };
    return CDheaderView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CDcurrentDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CDGuideModel *model = [self.CDcurrentDataArray objectAtIndex:indexPath.row];
    CDDailyHabitsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CDDailyHabitsTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 先删除数据源
    [self.CDcurrentDataArray removeObjectAtIndex:indexPath.row];
    // 再删除cell
    [self.CDmainTable deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [self CDdataUpdate];
}
- (void)addHabits{
    CDGuideViewController *guideVC = [[CDGuideViewController alloc] init];
    guideVC.CDsuperHabitsVC = self;
    guideVC.CDselectIndex = 1;
    guideVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:guideVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDdataArray{
    if (!_CDdataArray) {
        _CDdataArray = [[NSMutableArray alloc] init];
    }
    return _CDdataArray;
}
- (UITableView *)CDmainTable{
    if (!_CDmainTable) {
        _CDmainTable = [[UITableView alloc] init];
        _CDmainTable.delegate = self;
        _CDmainTable.dataSource = self;
        _CDmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CDmainTable.estimatedRowHeight = 55.0f;
        _CDmainTable.rowHeight  = UITableViewAutomaticDimension;
        _CDmainTable.estimatedSectionHeaderHeight = 60.0f;
        _CDmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        [_CDmainTable registerClass:[CDDailyHabitsTableViewHeaderView class] forHeaderFooterViewReuseIdentifier:@"CDDailyHabitsTableViewHeaderView"];
        [_CDmainTable registerClass:[CDDailyHabitsTableViewCell class] forCellReuseIdentifier:@"CDDailyHabitsTableViewCell"];
        _CDmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CDloadData)];
        [self.view addSubview:_CDmainTable];
        [_CDmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _CDmainTable;
}
- (UIButton *)CDaddHbbitButton{
    if (!_CDaddHbbitButton) {
        _CDaddHbbitButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_CDaddHbbitButton setImage:[UIImage imageNamed:@"CDbtn_new_add"] forState:UIControlStateNormal];
        [_CDaddHbbitButton addTarget:self action:@selector(addHabits) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDaddHbbitButton;
}
@end
