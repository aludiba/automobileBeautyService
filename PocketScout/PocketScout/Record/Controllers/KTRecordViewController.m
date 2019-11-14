//
//  KTRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTRecordViewController.h"
#import "KTLoginViewController.h"
#import "KTRecordTableViewCell.h"
#import "KTScorecardModel.h"

@interface KTRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *KTDataArray;
@property(nonatomic, strong)UITableView *KTmainTable;
@end

@implementation KTRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self KTLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)KTDeleteData:(KTScorecardModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"KTScore"  objectId:model.KTObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD KTshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.KTDataArray removeObject:model];
        [self.KTmainTable reloadData];
    } else if (error){
         [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)KTLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"KTScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.KTmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.KTmainTable reloadData];
        }else{
            [self.KTDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    KTScorecardModel *model = [[KTScorecardModel alloc] init];
                    model.KTObjectId = [obj objectForKey:@"objectId"];
                    model.KTNatureCompetition = [obj objectForKey:@"KTNatureCompetition"];
                    model.KTTeamRightName = [obj objectForKey:@"KTTeamRightName"];
                    model.KTTeamRightScore = [[obj objectForKey:@"KTTeamRightScore"] integerValue];
                    model.KTTeamLeftName = [obj objectForKey:@"KTTeamLeftName"];
                    model.KTTeamLeftScore = [[obj objectForKey:@"KTTeamLeftScore"] integerValue];
                    model.KTEndTimeString = [obj objectForKey:@"KTEndTimeString"];
                    model.KTTotalTimeString = [obj objectForKey:@"KTTotalTimeString"];
                    [self.KTDataArray addObject:model];
                    }
                if (!self.KTDataArray.count) {
                    [MBProgressHUD KTshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.KTmainTable reloadData];
                }else{
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.KTmainTable reloadData];
                }
        }
    }];
    }else{
        [self.KTmainTable.mj_header endRefreshing];
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.KTmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            KTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KTDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KTScorecardModel *model = self.KTDataArray[indexPath.row];
    KTRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTRecordTableViewCell" forIndexPath:indexPath];
    cell.KTModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.KTRecordDeleteB = ^(KTRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf KTDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)KTDataArray{
    if (!_KTDataArray) {
        _KTDataArray = [[NSMutableArray alloc] init];
    }
    return _KTDataArray;
}
- (UITableView *)KTmainTable{
    if (!_KTmainTable) {
        _KTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _KTmainTable.showsVerticalScrollIndicator = NO;
        _KTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _KTmainTable.backgroundColor = [UIColor cyanColor];
        _KTmainTable.delegate = self;
        _KTmainTable.dataSource = self;
        _KTmainTable.rowHeight = UITableViewAutomaticDimension;
        _KTmainTable.estimatedRowHeight = 55.0f;
        _KTmainTable.tableHeaderView = [[UIView alloc] init];
        _KTmainTable.tableFooterView = [[UIView alloc] init];
        [_KTmainTable registerClass:[KTRecordTableViewCell class] forCellReuseIdentifier:@"KTRecordTableViewCell"];
        _KTmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(KTLoadData)];
        [self.view addSubview:_KTmainTable];
        [_KTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-KTHeightTabBar);
        }];
    }
    return _KTmainTable;
}
@end
