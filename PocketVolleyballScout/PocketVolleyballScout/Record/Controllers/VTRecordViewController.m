//
//  VTRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTRecordViewController.h"
#import "VTLoginViewController.h"
#import "VTRecordTableViewCell.h"
#import "VTScorecardModel.h"
#import "VTBureauPointsModel.h"

@interface VTRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *VTDataArray;
@property(nonatomic, strong)UITableView *VTmainTable;
@end

@implementation VTRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self VTLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)VTDeleteData:(VTScorecardModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"VTScore"  objectId:model.VTObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD VTshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.VTDataArray removeObject:model];
        [self.VTmainTable reloadData];
    } else if (error){
         [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)VTLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"VTScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.VTmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.VTmainTable reloadData];
        }else{
            [self.VTDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    VTScorecardModel *model = [[VTScorecardModel alloc] init];
                    model.VTObjectId = [obj objectForKey:@"objectId"];
                    model.VTNatureCompetition = [obj objectForKey:@"VTNatureCompetition"];
                    model.VTTeamRightName = [obj objectForKey:@"VTTeamRightName"];
                    model.VTTeamRightScore = [[obj objectForKey:@"VTTeamRightScore"] integerValue];
                    model.VTTeamLeftName = [obj objectForKey:@"VTTeamLeftName"];
                    model.VTTeamLeftScore = [[obj objectForKey:@"VTTeamLeftScore"] integerValue];
                    model.VTEndTimeString = [obj objectForKey:@"VTEndTimeString"];
                    model.VTTotalTimeString = [obj objectForKey:@"VTTotalTimeString"];
                    model.VTBureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"VTBureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           VTBureauPointsModel *pointModel = [VTBureauPointsModel yy_modelWithDictionary:dic];
                           [model.VTBureauPointsArray addObject:pointModel];
                       }
                    [self.VTDataArray addObject:model];
                    }
                if (!self.VTDataArray.count) {
                    [MBProgressHUD VTshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.VTmainTable reloadData];
                }else{
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.VTmainTable reloadData];
                }
        }
    }];
    }else{
        [self.VTmainTable.mj_header endRefreshing];
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.VTmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            VTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.VTDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    VTScorecardModel *model = self.VTDataArray[indexPath.row];
    VTRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTRecordTableViewCell" forIndexPath:indexPath];
    cell.VTModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.VTRecordDeleteB = ^(VTRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf VTDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)VTDataArray{
    if (!_VTDataArray) {
        _VTDataArray = [[NSMutableArray alloc] init];
    }
    return _VTDataArray;
}
- (UITableView *)VTmainTable{
    if (!_VTmainTable) {
        _VTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _VTmainTable.showsVerticalScrollIndicator = NO;
        _VTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _VTmainTable.delegate = self;
        _VTmainTable.dataSource = self;
        _VTmainTable.rowHeight = UITableViewAutomaticDimension;
        _VTmainTable.estimatedRowHeight = 55.0f;
        _VTmainTable.tableHeaderView = [[UIView alloc] init];
        _VTmainTable.tableFooterView = [[UIView alloc] init];
        [_VTmainTable registerClass:[VTRecordTableViewCell class] forCellReuseIdentifier:@"VTRecordTableViewCell"];
        _VTmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(VTLoadData)];
        [self.view addSubview:_VTmainTable];
        [_VTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-VTHeightTabBar);
        }];
    }
    return _VTmainTable;
}
@end
