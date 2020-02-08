//
//  YBPBSRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSRecordViewController.h"
#import "YBPBSLoginViewController.h"
#import "YBPBSRecordTableViewCell.h"
#import "YBPBSScorecardModel.h"

@interface YBPBSRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YBPBSDataArray;
@property(nonatomic, strong)UITableView *YBPBSmainTable;
@end

@implementation YBPBSRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self YBPBSLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)YBPBSDeleteData:(YBPBSScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"YBPBSScore"  objectId:model.YBPBSObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.YBPBSDataArray removeObject:model];
        [self.YBPBSmainTable reloadData];
    } else if (error){
         [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)YBPBSLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"YBPBSScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.YBPBSmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.YBPBSmainTable reloadData];
        }else{
            [self.YBPBSDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    YBPBSScorecardModel *model = [[YBPBSScorecardModel alloc] init];
                    model.YBPBSObjectId = [obj objectForKey:@"objectId"];
                    model.YBPBSNatureCompetition = [obj objectForKey:@"YBPBSNatureCompetition"];
                    model.YBPBSTeamRightName = [obj objectForKey:@"YBPBSTeamRightName"];
                    model.YBPBSTeamRightScore = [[obj objectForKey:@"YBPBSTeamRightScore"] integerValue];
                    model.YBPBSTeamLeftName = [obj objectForKey:@"YBPBSTeamLeftName"];
                    model.YBPBSTeamLeftScore = [[obj objectForKey:@"YBPBSTeamLeftScore"] integerValue];
                    model.YBPBSEndTimeString = [obj objectForKey:@"YBPBSEndTimeString"];
                    model.YBPBSTotalTimeString = [obj objectForKey:@"YBPBSTotalTimeString"];
                    [self.YBPBSDataArray addObject:model];
                    }
                if (!self.YBPBSDataArray.count) {
                    [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.YBPBSmainTable reloadData];
                }else{
                [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.YBPBSmainTable reloadData];
                }
        }
    }];
    }else{
        [self.YBPBSmainTable.mj_header endRefreshing];
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.YBPBSmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YBPBSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YBPBSDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YBPBSScorecardModel *model = self.YBPBSDataArray[indexPath.row];
    YBPBSRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSRecordTableViewCell" forIndexPath:indexPath];
    cell.YBPBSModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.YBPBSRecordDeleteB = ^(YBPBSRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf YBPBSDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)YBPBSDataArray{
    if (!_YBPBSDataArray) {
        _YBPBSDataArray = [[NSMutableArray alloc] init];
    }
    return _YBPBSDataArray;
}
- (UITableView *)YBPBSmainTable{
    if (!_YBPBSmainTable) {
        _YBPBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YBPBSmainTable.backgroundColor = [UIColor cyanColor];
        _YBPBSmainTable.showsVerticalScrollIndicator = NO;
        _YBPBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YBPBSmainTable.delegate = self;
        _YBPBSmainTable.dataSource = self;
        _YBPBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBPBSmainTable.estimatedRowHeight = 55.0f;
        _YBPBSmainTable.tableHeaderView = [[UIView alloc] init];
        _YBPBSmainTable.tableFooterView = [[UIView alloc] init];
        [_YBPBSmainTable registerClass:[YBPBSRecordTableViewCell class] forCellReuseIdentifier:@"YBPBSRecordTableViewCell"];
        _YBPBSmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(YBPBSLoadData)];
        [self.view addSubview:_YBPBSmainTable];
        [_YBPBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-YBPBSHeightTabBar);
        }];
    }
    return _YBPBSmainTable;
}
@end
