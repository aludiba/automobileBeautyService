//
//  ABRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABRecordViewController.h"
#import "ABLoginViewController.h"
#import "ABRecordTableViewCell.h"
#import "ABScorecardModel.h"
#import "ABBureauPointsModel.h"

@interface ABRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *ABDataArray;
@property(nonatomic, strong)UITableView *ABmainTable;
@end

@implementation ABRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self ABLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)ABDeleteData:(ABScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"ABScore"  objectId:model.ABObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD ABshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.ABDataArray removeObject:model];
        [self.ABmainTable reloadData];
    } else if (error){
         [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)ABLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"ABScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.ABmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.ABmainTable reloadData];
        }else{
            [self.ABDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    ABScorecardModel *model = [[ABScorecardModel alloc] init];
                    model.ABObjectId = [obj objectForKey:@"objectId"];
                    model.ABNatureCompetition = [obj objectForKey:@"ABNatureCompetition"];
                    model.ABTeamRightName = [obj objectForKey:@"ABTeamRightName"];
                    model.ABTeamRightScore = [[obj objectForKey:@"ABTeamRightScore"] integerValue];
                    model.ABTeamLeftName = [obj objectForKey:@"ABTeamLeftName"];
                    model.ABTeamLeftScore = [[obj objectForKey:@"ABTeamLeftScore"] integerValue];
                    model.ABEndTimeString = [obj objectForKey:@"ABEndTimeString"];
                    model.ABTotalTimeString = [obj objectForKey:@"ABTotalTimeString"];
                    model.ABBureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"ABBureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           ABBureauPointsModel *pointModel = [ABBureauPointsModel yy_modelWithDictionary:dic];
                           [model.ABBureauPointsArray addObject:pointModel];
                       }
                    [self.ABDataArray addObject:model];
                    }
                if (!self.ABDataArray.count) {
                    [MBProgressHUD ABshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.ABmainTable reloadData];
                }else{
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.ABmainTable reloadData];
                }
        }
    }];
    }else{
        [self.ABmainTable.mj_header endRefreshing];
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.ABmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ABKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ABDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABScorecardModel *model = self.ABDataArray[indexPath.row];
    ABRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABRecordTableViewCell" forIndexPath:indexPath];
    cell.ABModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.ABRecordDeleteB = ^(ABRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf ABDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ABDataArray{
    if (!_ABDataArray) {
        _ABDataArray = [[NSMutableArray alloc] init];
    }
    return _ABDataArray;
}
- (UITableView *)ABmainTable{
    if (!_ABmainTable) {
        _ABmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ABmainTable.backgroundColor = [UIColor greenColor];
        _ABmainTable.showsVerticalScrollIndicator = NO;
        _ABmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ABmainTable.delegate = self;
        _ABmainTable.dataSource = self;
        _ABmainTable.rowHeight = UITableViewAutomaticDimension;
        _ABmainTable.estimatedRowHeight = 55.0f;
        _ABmainTable.tableHeaderView = [[UIView alloc] init];
        _ABmainTable.tableFooterView = [[UIView alloc] init];
        [_ABmainTable registerClass:[ABRecordTableViewCell class] forCellReuseIdentifier:@"ABRecordTableViewCell"];
        _ABmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(ABLoadData)];
        [self.view addSubview:_ABmainTable];
        [_ABmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ABHeightTabBar);
        }];
    }
    return _ABmainTable;
}
@end
