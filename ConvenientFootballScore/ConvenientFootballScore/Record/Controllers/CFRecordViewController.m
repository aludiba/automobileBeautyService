//
//  CFRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFRecordViewController.h"
#import "CFLoginViewController.h"
#import "CFRecordTableViewCell.h"
#import "CFScorecardModel.h"

@interface CFRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CFDataArray;
@property(nonatomic, strong)UITableView *CFmainTable;
@end

@implementation CFRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self CFLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)CFDeleteData:(CFScorecardModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"CFScore"  objectId:model.CFObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD CFshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.CFDataArray removeObject:model];
        [self.CFmainTable reloadData];
    } else if (error){
         [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)CFLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"CFScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.CFmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.CFmainTable reloadData];
        }else{
            [self.CFDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    CFScorecardModel *model = [[CFScorecardModel alloc] init];
                    model.CFObjectId = [obj objectForKey:@"objectId"];
                    model.CFNatureCompetition = [obj objectForKey:@"CFNatureCompetition"];
                    model.CFTeamRightName = [obj objectForKey:@"CFTeamRightName"];
                    model.CFTeamRightScore = [[obj objectForKey:@"CFTeamRightScore"] integerValue];
                    model.CFTeamLeftName = [obj objectForKey:@"CFTeamLeftName"];
                    model.CFTeamLeftScore = [[obj objectForKey:@"CFTeamLeftScore"] integerValue];
                    model.CFEndTimeString = [obj objectForKey:@"CFEndTimeString"];
                    model.CFTotalTimeString = [obj objectForKey:@"CFTotalTimeString"];
                    [self.CFDataArray addObject:model];
                    }
                if (!self.CFDataArray.count) {
                    [MBProgressHUD CFshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.CFmainTable reloadData];
                }else{
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.CFmainTable reloadData];
                }
        }
    }];
    }else{
        [self.CFmainTable.mj_header endRefreshing];
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.CFmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CFDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CFScorecardModel *model = self.CFDataArray[indexPath.row];
    CFRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFRecordTableViewCell" forIndexPath:indexPath];
    cell.CFModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.CFRecordDeleteB = ^(CFRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf CFDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CFDataArray{
    if (!_CFDataArray) {
        _CFDataArray = [[NSMutableArray alloc] init];
    }
    return _CFDataArray;
}
- (UITableView *)CFmainTable{
    if (!_CFmainTable) {
        _CFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CFmainTable.showsVerticalScrollIndicator = NO;
        _CFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CFmainTable.backgroundColor = [UIColor cyanColor];
        _CFmainTable.delegate = self;
        _CFmainTable.dataSource = self;
        _CFmainTable.rowHeight = UITableViewAutomaticDimension;
        _CFmainTable.estimatedRowHeight = 55.0f;
        _CFmainTable.tableHeaderView = [[UIView alloc] init];
        _CFmainTable.tableFooterView = [[UIView alloc] init];
        [_CFmainTable registerClass:[CFRecordTableViewCell class] forCellReuseIdentifier:@"CFRecordTableViewCell"];
        _CFmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(CFLoadData)];
        [self.view addSubview:_CFmainTable];
        [_CFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CFHeightTabBar);
        }];
    }
    return _CFmainTable;
}
@end
