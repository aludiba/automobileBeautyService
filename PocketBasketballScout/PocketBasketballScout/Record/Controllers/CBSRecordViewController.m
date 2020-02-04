//
//  CBSRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSRecordViewController.h"
#import "CBSLoginViewController.h"
#import "CBSRecordTableViewCell.h"
#import "CBSScorecardModel.h"

@interface CBSRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CBSDataArray;
@property(nonatomic, strong)UITableView *CBSmainTable;
@end

@implementation CBSRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self CBSLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)CBSDeleteData:(CBSScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"CBSScore"  objectId:model.CBSObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.CBSDataArray removeObject:model];
        [self.CBSmainTable reloadData];
    } else if (error){
         [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)CBSLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"CBSScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.CBSmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.CBSmainTable reloadData];
        }else{
            [self.CBSDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    CBSScorecardModel *model = [[CBSScorecardModel alloc] init];
                    model.CBSObjectId = [obj objectForKey:@"objectId"];
                    model.CBSNatureCompetition = [obj objectForKey:@"CBSNatureCompetition"];
                    model.CBSTeamRightName = [obj objectForKey:@"CBSTeamRightName"];
                    model.CBSTeamRightScore = [[obj objectForKey:@"CBSTeamRightScore"] integerValue];
                    model.CBSTeamLeftName = [obj objectForKey:@"CBSTeamLeftName"];
                    model.CBSTeamLeftScore = [[obj objectForKey:@"CBSTeamLeftScore"] integerValue];
                    model.CBSEndTimeString = [obj objectForKey:@"CBSEndTimeString"];
                    model.CBSTotalTimeString = [obj objectForKey:@"CBSTotalTimeString"];
                    [self.CBSDataArray addObject:model];
                    }
                if (!self.CBSDataArray.count) {
                    [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.CBSmainTable reloadData];
                }else{
                [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.CBSmainTable reloadData];
                }
        }
    }];
    }else{
        [self.CBSmainTable.mj_header endRefreshing];
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.CBSmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CBSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CBSDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CBSScorecardModel *model = self.CBSDataArray[indexPath.row];
    CBSRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSRecordTableViewCell" forIndexPath:indexPath];
    cell.CBSModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.CBSRecordDeleteB = ^(CBSRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf CBSDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CBSDataArray{
    if (!_CBSDataArray) {
        _CBSDataArray = [[NSMutableArray alloc] init];
    }
    return _CBSDataArray;
}
- (UITableView *)CBSmainTable{
    if (!_CBSmainTable) {
        _CBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CBSmainTable.backgroundColor = [UIColor cyanColor];
        _CBSmainTable.showsVerticalScrollIndicator = NO;
        _CBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CBSmainTable.delegate = self;
        _CBSmainTable.dataSource = self;
        _CBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CBSmainTable.estimatedRowHeight = 55.0f;
        _CBSmainTable.tableHeaderView = [[UIView alloc] init];
        _CBSmainTable.tableFooterView = [[UIView alloc] init];
        [_CBSmainTable registerClass:[CBSRecordTableViewCell class] forCellReuseIdentifier:@"CBSRecordTableViewCell"];
        _CBSmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CBSLoadData)];
        [self.view addSubview:_CBSmainTable];
        [_CBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CBSHeightTabBar);
        }];
    }
    return _CBSmainTable;
}
@end
