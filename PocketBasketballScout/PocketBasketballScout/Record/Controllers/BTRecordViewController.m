//
//  BTRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTRecordViewController.h"
#import "BTLoginViewController.h"
#import "BTRecordTableViewCell.h"
#import "BTScorecardModel.h"

@interface BTRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *BTDataArray;
@property(nonatomic, strong)UITableView *BTmainTable;
@end

@implementation BTRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self BTLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)BTDeleteData:(BTScorecardModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"BTScore"  objectId:model.BTObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD BTshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.BTDataArray removeObject:model];
        [self.BTmainTable reloadData];
    } else if (error){
         [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)BTLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"BTScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.BTmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.BTmainTable reloadData];
        }else{
            [self.BTDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    BTScorecardModel *model = [[BTScorecardModel alloc] init];
                    model.BTObjectId = [obj objectForKey:@"objectId"];
                    model.BTNatureCompetition = [obj objectForKey:@"BTNatureCompetition"];
                    model.BTTeamRightName = [obj objectForKey:@"BTTeamRightName"];
                    model.BTTeamRightScore = [[obj objectForKey:@"BTTeamRightScore"] integerValue];
                    model.BTTeamLeftName = [obj objectForKey:@"BTTeamLeftName"];
                    model.BTTeamLeftScore = [[obj objectForKey:@"BTTeamLeftScore"] integerValue];
                    model.BTEndTimeString = [obj objectForKey:@"BTEndTimeString"];
                    model.BTTotalTimeString = [obj objectForKey:@"BTTotalTimeString"];
                    [self.BTDataArray addObject:model];
                    }
                if (!self.BTDataArray.count) {
                    [MBProgressHUD BTshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.BTmainTable reloadData];
                }else{
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.BTmainTable reloadData];
                }
        }
    }];
    }else{
        [self.BTmainTable.mj_header endRefreshing];
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.BTmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            BTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BTDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BTScorecardModel *model = self.BTDataArray[indexPath.row];
    BTRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTRecordTableViewCell" forIndexPath:indexPath];
    cell.BTModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.BTRecordDeleteB = ^(BTRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf BTDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BTDataArray{
    if (!_BTDataArray) {
        _BTDataArray = [[NSMutableArray alloc] init];
    }
    return _BTDataArray;
}
- (UITableView *)BTmainTable{
    if (!_BTmainTable) {
        _BTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _BTmainTable.showsVerticalScrollIndicator = NO;
        _BTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BTmainTable.delegate = self;
        _BTmainTable.dataSource = self;
        _BTmainTable.rowHeight = UITableViewAutomaticDimension;
        _BTmainTable.estimatedRowHeight = 55.0f;
        _BTmainTable.tableHeaderView = [[UIView alloc] init];
        _BTmainTable.tableFooterView = [[UIView alloc] init];
        [_BTmainTable registerClass:[BTRecordTableViewCell class] forCellReuseIdentifier:@"BTRecordTableViewCell"];
        _BTmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(BTLoadData)];
        [self.view addSubview:_BTmainTable];
        [_BTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-BTHeightTabBar);
        }];
    }
    return _BTmainTable;
}
@end
