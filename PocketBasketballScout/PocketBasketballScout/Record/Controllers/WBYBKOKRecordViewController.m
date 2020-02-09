//
//  WBYBKOKRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKRecordViewController.h"
#import "WBYBKOKLoginViewController.h"
#import "WBYBKOKRecordTableViewCell.h"
#import "WBYBKOKScorecardModel.h"

@interface WBYBKOKRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *WBYBKOKDataArray;
@property(nonatomic, strong)UITableView *WBYBKOKmainTable;
@end

@implementation WBYBKOKRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self WBYBKOKLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)WBYBKOKDeleteData:(WBYBKOKScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"WBYBKOKScore"  objectId:model.WBYBKOKObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.WBYBKOKDataArray removeObject:model];
        [self.WBYBKOKmainTable reloadData];
    } else if (error){
         [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)WBYBKOKLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"WBYBKOKScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.WBYBKOKmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.WBYBKOKmainTable reloadData];
        }else{
            [self.WBYBKOKDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    WBYBKOKScorecardModel *model = [[WBYBKOKScorecardModel alloc] init];
                    model.WBYBKOKObjectId = [obj objectForKey:@"objectId"];
                    model.WBYBKOKNatureCompetition = [obj objectForKey:@"WBYBKOKNatureCompetition"];
                    model.WBYBKOKTeamRightName = [obj objectForKey:@"WBYBKOKTeamRightName"];
                    model.WBYBKOKTeamRightScore = [[obj objectForKey:@"WBYBKOKTeamRightScore"] integerValue];
                    model.WBYBKOKTeamLeftName = [obj objectForKey:@"WBYBKOKTeamLeftName"];
                    model.WBYBKOKTeamLeftScore = [[obj objectForKey:@"WBYBKOKTeamLeftScore"] integerValue];
                    model.WBYBKOKEndTimeString = [obj objectForKey:@"WBYBKOKEndTimeString"];
                    model.WBYBKOKTotalTimeString = [obj objectForKey:@"WBYBKOKTotalTimeString"];
                    [self.WBYBKOKDataArray addObject:model];
                    }
                if (!self.WBYBKOKDataArray.count) {
                    [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.WBYBKOKmainTable reloadData];
                }else{
                [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.WBYBKOKmainTable reloadData];
                }
        }
    }];
    }else{
        [self.WBYBKOKmainTable.mj_header endRefreshing];
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.WBYBKOKmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            WBYBKOKKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.WBYBKOKDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WBYBKOKScorecardModel *model = self.WBYBKOKDataArray[indexPath.row];
    WBYBKOKRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKRecordTableViewCell" forIndexPath:indexPath];
    cell.WBYBKOKModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.WBYBKOKRecordDeleteB = ^(WBYBKOKRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf WBYBKOKDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)WBYBKOKDataArray{
    if (!_WBYBKOKDataArray) {
        _WBYBKOKDataArray = [[NSMutableArray alloc] init];
    }
    return _WBYBKOKDataArray;
}
- (UITableView *)WBYBKOKmainTable{
    if (!_WBYBKOKmainTable) {
        _WBYBKOKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _WBYBKOKmainTable.backgroundColor = [UIColor cyanColor];
        _WBYBKOKmainTable.showsVerticalScrollIndicator = NO;
        _WBYBKOKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _WBYBKOKmainTable.delegate = self;
        _WBYBKOKmainTable.dataSource = self;
        _WBYBKOKmainTable.rowHeight = UITableViewAutomaticDimension;
        _WBYBKOKmainTable.estimatedRowHeight = 55.0f;
        _WBYBKOKmainTable.tableHeaderView = [[UIView alloc] init];
        _WBYBKOKmainTable.tableFooterView = [[UIView alloc] init];
        [_WBYBKOKmainTable registerClass:[WBYBKOKRecordTableViewCell class] forCellReuseIdentifier:@"WBYBKOKRecordTableViewCell"];
        _WBYBKOKmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(WBYBKOKLoadData)];
        [self.view addSubview:_WBYBKOKmainTable];
        [_WBYBKOKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-WBYBKOKHeightTabBar);
        }];
    }
    return _WBYBKOKmainTable;
}
@end
