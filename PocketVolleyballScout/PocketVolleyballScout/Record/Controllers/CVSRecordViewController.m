//
//  CVSRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSRecordViewController.h"
#import "CVSLoginViewController.h"
#import "CVSRecordTableViewCell.h"
#import "CVSScorecardModel.h"
#import "CVSBureauPointsModel.h"

@interface CVSRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CVSDataArray;
@property(nonatomic, strong)UITableView *CVSmainTable;
@end

@implementation CVSRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self CVSLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)CVSDeleteData:(CVSScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"CVSScore"  objectId:model.CVSObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.CVSDataArray removeObject:model];
        [self.CVSmainTable reloadData];
    } else if (error){
         [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)CVSLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"CVSScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.CVSmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.CVSmainTable reloadData];
        }else{
            [self.CVSDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    CVSScorecardModel *model = [[CVSScorecardModel alloc] init];
                    model.CVSObjectId = [obj objectForKey:@"objectId"];
                    model.CVSNatureCompetition = [obj objectForKey:@"CVSNatureCompetition"];
                    model.CVSTeamRightName = [obj objectForKey:@"CVSTeamRightName"];
                    model.CVSTeamRightScore = [[obj objectForKey:@"CVSTeamRightScore"] integerValue];
                    model.CVSTeamLeftName = [obj objectForKey:@"CVSTeamLeftName"];
                    model.CVSTeamLeftScore = [[obj objectForKey:@"CVSTeamLeftScore"] integerValue];
                    model.CVSEndTimeString = [obj objectForKey:@"CVSEndTimeString"];
                    model.CVSTotalTimeString = [obj objectForKey:@"CVSTotalTimeString"];
                    model.CVSBureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"CVSBureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           CVSBureauPointsModel *pointModel = [CVSBureauPointsModel yy_modelWithDictionary:dic];
                           [model.CVSBureauPointsArray addObject:pointModel];
                       }
                    [self.CVSDataArray addObject:model];
                    }
                if (!self.CVSDataArray.count) {
                    [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.CVSmainTable reloadData];
                }else{
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.CVSmainTable reloadData];
                }
        }
    }];
    }else{
        [self.CVSmainTable.mj_header endRefreshing];
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.CVSmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CVSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CVSDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CVSScorecardModel *model = self.CVSDataArray[indexPath.row];
    CVSRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSRecordTableViewCell" forIndexPath:indexPath];
    cell.CVSModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.CVSRecordDeleteB = ^(CVSRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf CVSDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CVSDataArray{
    if (!_CVSDataArray) {
        _CVSDataArray = [[NSMutableArray alloc] init];
    }
    return _CVSDataArray;
}
- (UITableView *)CVSmainTable{
    if (!_CVSmainTable) {
        _CVSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CVSmainTable.showsVerticalScrollIndicator = NO;
        _CVSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CVSmainTable.delegate = self;
        _CVSmainTable.dataSource = self;
        _CVSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CVSmainTable.estimatedRowHeight = 55.0f;
        _CVSmainTable.tableHeaderView = [[UIView alloc] init];
        _CVSmainTable.tableFooterView = [[UIView alloc] init];
        [_CVSmainTable registerClass:[CVSRecordTableViewCell class] forCellReuseIdentifier:@"CVSRecordTableViewCell"];
        _CVSmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CVSLoadData)];
        [self.view addSubview:_CVSmainTable];
        [_CVSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CVSHeightTabBar);
        }];
    }
    return _CVSmainTable;
}
@end
