//
//  CARecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CARecordViewController.h"
#import "CALoginViewController.h"
#import "CARecordTableViewCell.h"
#import "CAScorecardModel.h"
#import "CABureauPointsModel.h"

@interface CARecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CADataArray;
@property(nonatomic, strong)UITableView *CAmainTable;
@end

@implementation CARecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self CALoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)CADeleteData:(CAScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"CAScore"  objectId:model.CAObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD CAshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.CADataArray removeObject:model];
        [self.CAmainTable reloadData];
    } else if (error){
         [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)CALoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"CAScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.CAmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.CAmainTable reloadData];
        }else{
            [self.CADataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    CAScorecardModel *model = [[CAScorecardModel alloc] init];
                    model.CAObjectId = [obj objectForKey:@"objectId"];
                    model.CANatureCompetition = [obj objectForKey:@"CANatureCompetition"];
                    model.CATeamRightName = [obj objectForKey:@"CATeamRightName"];
                    model.CATeamRightScore = [[obj objectForKey:@"CATeamRightScore"] integerValue];
                    model.CATeamLeftName = [obj objectForKey:@"CATeamLeftName"];
                    model.CATeamLeftScore = [[obj objectForKey:@"CATeamLeftScore"] integerValue];
                    model.CAEndTimeString = [obj objectForKey:@"CAEndTimeString"];
                    model.CATotalTimeString = [obj objectForKey:@"CATotalTimeString"];
                    model.CABureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"CABureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           CABureauPointsModel *pointModel = [CABureauPointsModel yy_modelWithDictionary:dic];
                           [model.CABureauPointsArray addObject:pointModel];
                       }
                    [self.CADataArray addObject:model];
                    }
                if (!self.CADataArray.count) {
                    [MBProgressHUD CAshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.CAmainTable reloadData];
                }else{
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.CAmainTable reloadData];
                }
        }
    }];
    }else{
        [self.CAmainTable.mj_header endRefreshing];
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.CAmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CALoginViewController *loginVC = [CALoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CADataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CAScorecardModel *model = self.CADataArray[indexPath.row];
    CARecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CARecordTableViewCell" forIndexPath:indexPath];
    cell.CAModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.CARecordDeleteB = ^(CARecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf CADeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CADataArray{
    if (!_CADataArray) {
        _CADataArray = [[NSMutableArray alloc] init];
    }
    return _CADataArray;
}
- (UITableView *)CAmainTable{
    if (!_CAmainTable) {
        _CAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CAmainTable.backgroundColor = [UIColor systemGreenColor];
        _CAmainTable.showsVerticalScrollIndicator = NO;
        _CAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CAmainTable.delegate = self;
        _CAmainTable.dataSource = self;
        _CAmainTable.rowHeight = UITableViewAutomaticDimension;
        _CAmainTable.estimatedRowHeight = 55.0f;
        _CAmainTable.tableHeaderView = [[UIView alloc] init];
        _CAmainTable.tableFooterView = [[UIView alloc] init];
        [_CAmainTable registerClass:[CARecordTableViewCell class] forCellReuseIdentifier:@"CARecordTableViewCell"];
        _CAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CALoadData)];
        [self.view addSubview:_CAmainTable];
        [_CAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CAHeightTabBar);
        }];
    }
    return _CAmainTable;
}
@end
