//
//  PHDailyHabitsViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHDailyHabitsViewController.h"
#import "PHGuideViewController.h"
#import "PHDailyHabitsTableViewHeaderView.h"
#import "PHDailyHabitsTableViewCell.h"
#import "PHGuideModel.h"
@interface PHDailyHabitsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSArray *PHarray;
@property(nonatomic, strong)NSMutableArray *PHdataArray;
@property(nonatomic, strong)NSMutableArray *PHcurrentDataArray;
@property(nonatomic, strong)PHDailyHabitsTableViewHeaderView *PHheaderView;
@property(nonatomic, strong)UIButton *PHaddHbbitButton;
@property(nonatomic, assign)NSUInteger PHselectIndex;
@end

@implementation PHDailyHabitsViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"日常习惯", nil);
    [self PHloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
}
- (void)PH_setupNavigationItems{
    [super PH_setupNavigationItems];
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithCustomView:self.PHaddHbbitButton];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
}
- (void)PHloadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PHClockProjects"];
       BmobUser *author = [BmobUser currentUser];
       [bquery whereKey:@"author" equalTo:author];
       __weak typeof(self) weakSelf = self;
       [bquery findObjectsInBackgroundWithBlock:^(NSArray *PHarray, NSError *error) {
           if (error) {
               [self.PHmainTable.mj_header endRefreshing];
               [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
           }else{
               [self.PHmainTable.mj_header endRefreshing];
               if (PHarray.count) {
                   [weakSelf.PHdataArray removeAllObjects];
                   BmobObject *obj = [PHarray lastObject];
                   NSArray *PHdataArray = [obj objectForKey:@"data"];
                   self.PHarray = [PHdataArray copy];
                   for (int i = 0; i < self.PHarray.count; i++) {
                       NSDictionary *dic = self.PHarray[i];
                       PHGuideModel *model = [PHGuideModel yy_modelWithDictionary:dic];
                       Boolean isAddSection = YES;
                       for (NSMutableDictionary *dic in self.PHdataArray) {
                           NSString *sectionString = [dic objectForKey:@"section"];
                           if ([sectionString isEqualToString:model.PHperiodTimeString]) {
                               isAddSection = NO;
                           }
                       }
                       if (isAddSection) {
                           NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
                           [dic setObject:model.PHperiodTimeString forKey:@"section"];
                           [dic setObject:[NSNumber numberWithInteger:model.PHperiodCode] forKey:@"sectionCode"];
                           NSMutableArray *PHdataArray = [[NSMutableArray alloc] init];
                           [dic setObject:PHdataArray forKey:@"data"];
                           [PHdataArray addObject:model];
                           [self.PHdataArray addObject:dic];
                       }else{
                           NSMutableDictionary *DIC;
                           for (NSMutableDictionary *dic in self.PHdataArray) {
                               NSString *sectionString = [dic objectForKey:@"section"];
                               if ([sectionString isEqualToString:model.PHperiodTimeString]) {
                                   DIC = dic;
                               }
                           }
                           NSMutableArray *PHdataArray = [DIC objectForKey:@"data"];
                           [PHdataArray addObject:model];
                       }
                   }
                   NSMutableDictionary *dic = [self.PHdataArray firstObject];
                      NSMutableArray *dataArr = [dic objectForKey:@"data"];
                    self.PHcurrentDataArray = dataArr;
                   [self.PHmainTable reloadData];
               }else{
                   [self.PHmainTable.mj_header endRefreshing];
                   [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }
           }
       }];
}
- (void)PHdataUpdate{
    BmobObject *clockProjects = [BmobObject objectWithClassName:@"PHClockProjects"];
    BmobUser *author = [BmobUser currentUser];
    [clockProjects setObject:author forKey:@"author"];
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < self.PHdataArray.count; i++) {
        NSMutableDictionary *dic = self.PHdataArray[i];
        NSArray *dataA = [dic objectForKey:@"data"];
        for (int j = 0; j < dataA.count; j++) {
            PHGuideModel *model = dataA[j];
            NSMutableDictionary *DIC = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[model yy_modelToJSONObject]];
            [tempArray addObject:DIC];
        }
    }
    NSMutableDictionary *tempDic = [[NSMutableDictionary alloc] init];
    [tempDic setObject:tempArray forKey:@"data"];
    [clockProjects saveAllWithDictionary:tempDic];
    [clockProjects saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                  [MBProgressHUD PHshowReminderText:NSLocalizedString(@"删除成功", nil)];
                [self PHloadData];
            } else if (error){
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    PHDailyHabitsTableViewHeaderView *PHheaderView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"PHDailyHabitsTableViewHeaderView"];
    PHheaderView.dataA = self.PHarray;
    PHheaderView.PHdataArray = self.PHdataArray;
    PHheaderView.PHselectIndex = self.PHselectIndex;
    [PHheaderView PHadjustColor];
    self.PHheaderView = PHheaderView;
    __weak typeof(self) weakSelf = self;
    PHheaderView.selectSectionB = ^(PHDailyHabitsTableViewHeaderView * _Nonnull habitsHeaderView) {
        weakSelf.PHcurrentDataArray = habitsHeaderView.currentDataArray;
        weakSelf.PHselectIndex = habitsHeaderView.PHselectIndex;
        [weakSelf.PHmainTable reloadData];
    };
    return PHheaderView;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PHcurrentDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PHGuideModel *model = [self.PHcurrentDataArray objectAtIndex:indexPath.row];
    PHDailyHabitsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PHDailyHabitsTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    // 先删除数据源
    [self.PHcurrentDataArray removeObjectAtIndex:indexPath.row];
    // 再删除cell
    [self.PHmainTable deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    [self PHdataUpdate];
}
- (void)addHabits{
    PHGuideViewController *guideVC = [[PHGuideViewController alloc] init];
    guideVC.PHsuperHabitsVC = self;
    guideVC.PHselectIndex = 1;
    guideVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:guideVC animated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHdataArray{
    if (!_PHdataArray) {
        _PHdataArray = [[NSMutableArray alloc] init];
    }
    return _PHdataArray;
}
- (UITableView *)PHmainTable{
    if (!_PHmainTable) {
        _PHmainTable = [[UITableView alloc] init];
        _PHmainTable.delegate = self;
        _PHmainTable.dataSource = self;
        _PHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PHmainTable.estimatedRowHeight = 55.0f;
        _PHmainTable.rowHeight  = UITableViewAutomaticDimension;
        _PHmainTable.estimatedSectionHeaderHeight = 60.0f;
        _PHmainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        [_PHmainTable registerClass:[PHDailyHabitsTableViewHeaderView class] forHeaderFooterViewReuseIdentifier:@"PHDailyHabitsTableViewHeaderView"];
        [_PHmainTable registerClass:[PHDailyHabitsTableViewCell class] forCellReuseIdentifier:@"PHDailyHabitsTableViewCell"];
        _PHmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PHloadData)];
        [self.view addSubview:_PHmainTable];
        [_PHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _PHmainTable;
}
- (UIButton *)PHaddHbbitButton{
    if (!_PHaddHbbitButton) {
        _PHaddHbbitButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_PHaddHbbitButton setImage:[UIImage imageNamed:@"btn_new_add"] forState:UIControlStateNormal];
        [_PHaddHbbitButton addTarget:self action:@selector(addHabits) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHaddHbbitButton;
}
@end
