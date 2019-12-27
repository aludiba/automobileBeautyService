//
//  AFSRecordViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSRecordViewController.h"
#import "AFSLoginViewController.h"
#import "AFSRecordTableViewCell.h"
#import "AFSScorecardModel.h"

@interface AFSRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AFSDataArray;
@property(nonatomic, strong)UITableView *AFSmainTable;
@end

@implementation AFSRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self AFSLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)AFSDeleteData:(AFSScorecardModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"AFSScore"  objectId:model.AFSObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.AFSDataArray removeObject:model];
        [self.AFSmainTable reloadData];
    } else if (error){
         [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)AFSLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"AFSScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.AFSmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.AFSmainTable reloadData];
        }else{
            [self.AFSDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    AFSScorecardModel *model = [[AFSScorecardModel alloc] init];
                    model.AFSObjectId = [obj objectForKey:@"objectId"];
                    model.AFSNatureCompetition = [obj objectForKey:@"AFSNatureCompetition"];
                    model.AFSTeamRightName = [obj objectForKey:@"AFSTeamRightName"];
                    model.AFSTeamRightScore = [[obj objectForKey:@"AFSTeamRightScore"] integerValue];
                    model.AFSTeamLeftName = [obj objectForKey:@"AFSTeamLeftName"];
                    model.AFSTeamLeftScore = [[obj objectForKey:@"AFSTeamLeftScore"] integerValue];
                    model.AFSEndTimeString = [obj objectForKey:@"AFSEndTimeString"];
                    model.AFSTotalTimeString = [obj objectForKey:@"AFSTotalTimeString"];
                    [self.AFSDataArray addObject:model];
                    }
                if (!self.AFSDataArray.count) {
                    [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.AFSmainTable reloadData];
                }else{
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.AFSmainTable reloadData];
                }
        }
    }];
    }else{
        [self.AFSmainTable.mj_header endRefreshing];
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.AFSmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AFSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AFSDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFSScorecardModel *model = self.AFSDataArray[indexPath.row];
    AFSRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSRecordTableViewCell" forIndexPath:indexPath];
    cell.AFSModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.AFSRecordDeleteB = ^(AFSRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf AFSDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AFSDataArray{
    if (!_AFSDataArray) {
        _AFSDataArray = [[NSMutableArray alloc] init];
    }
    return _AFSDataArray;
}
- (UITableView *)AFSmainTable{
    if (!_AFSmainTable) {
        _AFSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFSmainTable.showsVerticalScrollIndicator = NO;
        _AFSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AFSmainTable.backgroundColor = [UIColor cyanColor];
        _AFSmainTable.delegate = self;
        _AFSmainTable.dataSource = self;
        _AFSmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFSmainTable.estimatedRowHeight = 55.0f;
        _AFSmainTable.tableHeaderView = [[UIView alloc] init];
        _AFSmainTable.tableFooterView = [[UIView alloc] init];
        [_AFSmainTable registerClass:[AFSRecordTableViewCell class] forCellReuseIdentifier:@"AFSRecordTableViewCell"];
        _AFSmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(AFSLoadData)];
        [self.view addSubview:_AFSmainTable];
        [_AFSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-AFSHeightTabBar);
        }];
    }
    return _AFSmainTable;
}
@end
