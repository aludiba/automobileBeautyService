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
    UIBarButtonItem *CDrightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.CDaddHbbitButton];
    self.navigationItem.rightBarButtonItem = CDrightButtonItem;
}
- (void)CDloadData{
       self.CDselectIndex = 0;
       AVQuery *CDquery = [AVQuery queryWithClassName:@"CDClockProjects"];
       AVUser *CDauthor = [AVUser currentUser];
       [CDquery whereKey:@"author" equalTo:CDauthor];
       __weak typeof(self) weakSelf = self;
       [CDquery findObjectsInBackgroundWithBlock:^(NSArray *CDarray, NSError *error) {
           if (error) {
               [self.CDmainTable.mj_header endRefreshing];
               [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
           }else{
               [self.CDmainTable.mj_header endRefreshing];
               if (CDarray.count) {
                   [weakSelf.CDdataArray removeAllObjects];
                   AVObject *CDobj = [CDarray lastObject];
                   NSArray *CDdataArray = [CDobj objectForKey:@"data"];
                   self.CDarray = [CDdataArray copy];
                   for (int i = 0; i < self.CDarray.count; i++) {
                       NSDictionary *CDdic = self.CDarray[i];
                       CDGuideModel *CDmodel = [CDGuideModel yy_modelWithDictionary:CDdic];
                       Boolean CDisAddSection = YES;
                       for (NSMutableDictionary *CDdic in self.CDdataArray) {
                           NSString *CDsectionString = [CDdic objectForKey:@"section"];
                           if ([CDsectionString isEqualToString:CDmodel.CDperiodTimeString]) {
                               CDisAddSection = NO;
                           }
                       }
                       if (CDisAddSection) {
                           NSMutableDictionary *CDdic = [[NSMutableDictionary alloc] init];
                           [CDdic setObject:CDmodel.CDperiodTimeString forKey:@"section"];
                           [CDdic setObject:[NSNumber numberWithInteger:CDmodel.CDperiodCode] forKey:@"sectionCode"];
                           NSMutableArray *CDdataArray = [[NSMutableArray alloc] init];
                           [CDdic setObject:CDdataArray forKey:@"data"];
                           [CDdataArray addObject:CDmodel];
                           [self.CDdataArray addObject:CDdic];
                       }else{
                           NSMutableDictionary *CDDIC;
                           for (NSMutableDictionary *CDdic in self.CDdataArray) {
                               NSString *CDsectionString = [CDdic objectForKey:@"section"];
                               if ([CDsectionString isEqualToString:CDmodel.CDperiodTimeString]) {
                                  CDDIC = CDdic;
                               }
                           }
                           NSMutableArray *CDdataArray = [CDDIC objectForKey:@"data"];
                           [CDdataArray addObject:CDmodel];
                       }
                   }
                   NSMutableDictionary *CDdic = [self.CDdataArray firstObject];
                      NSMutableArray *CDdataArr = [CDdic objectForKey:@"data"];
                    self.CDcurrentDataArray = CDdataArr;
                   [self.CDmainTable reloadData];
               }else{
                   [self.CDmainTable.mj_header endRefreshing];
                   [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }
           }
       }];
}
- (void)CDdataUpdate{
    AVObject *CDclockProjects = [AVObject objectWithClassName:@"CDClockProjects"];
    AVUser *CDauthor = [AVUser currentUser];
    [CDclockProjects setObject:CDauthor forKey:@"author"];
    NSMutableArray *CDtempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSMutableDictionary *CDdic = self.CDdataArray[i];
        NSArray *CDdataA = [CDdic objectForKey:@"data"];
        for (int j = 0; j < CDdataA.count; j++) {
            CDGuideModel *CDmodel = CDdataA[j];
            NSMutableDictionary *CDDIC = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[CDmodel yy_modelToJSONObject]];
            [CDtempArray addObject:CDDIC];
        }
    }
    NSMutableDictionary *CDtempDic = [[NSMutableDictionary alloc] init];
    [CDtempDic setObject:CDtempArray forKey:@"data"];
    for (NSString *CDkey in CDtempDic.allKeys) {
        [CDclockProjects setObject:[CDtempDic objectForKey:CDkey]  forKey:CDkey];
    }
    [CDclockProjects saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
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
    CDheaderView.CDselectSectionB = ^(CDDailyHabitsTableViewHeaderView * _Nonnull habitsHeaderView) {
        weakSelf.CDcurrentDataArray = habitsHeaderView.CDcurrentDataArray;
        weakSelf.CDselectIndex = habitsHeaderView.CDselectIndex;
        [weakSelf.CDmainTable reloadData];
    };
    return CDheaderView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CDcurrentDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CDGuideModel *CDmodel = [self.CDcurrentDataArray objectAtIndex:indexPath.row];
    CDDailyHabitsTableViewCell *CDcell = [tableView dequeueReusableCellWithIdentifier:@"CDDailyHabitsTableViewCell" forIndexPath:indexPath];
    CDcell.CDmodel = CDmodel;
    CDcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return CDcell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 先删除数据源
    [self.CDcurrentDataArray removeObjectAtIndex:indexPath.row];
    // 再删除cell
    [self.CDmainTable deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [self CDdataUpdate];
}
- (void)addHabits{
    CDGuideViewController *CDguideVC = [[CDGuideViewController alloc] init];
    CDguideVC.CDsuperHabitsVC = self;
    CDguideVC.CDselectIndex = 1;
    CDguideVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:CDguideVC animated:YES];
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
