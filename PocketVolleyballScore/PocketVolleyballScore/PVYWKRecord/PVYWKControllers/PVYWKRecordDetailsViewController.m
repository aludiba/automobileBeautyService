//
//  PVYWKRecordDetailsViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKRecordDetailsViewController.h"
#import "PVYWKLoginViewController.h"
#import "PVYWKRecordTableViewCell.h"
#import "PVYWKScorecardModel.h"
@interface PVYWKRecordDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PVYWKDataArray;
@property(nonatomic, strong)UITableView *PVYWKmainTable;
@end

@implementation PVYWKRecordDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"当日比赛记录", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PVYWKLoadData];
}
- (void)PVYWKLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"PVYWKScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.PVYWKmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.PVYWKmainTable reloadData];
        }else{
            [self.PVYWKDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    NSString *endTimeString = [obj objectForKey:@"PVYWKendTimeString"];
                    NSString *dateSelectedString = [PVYWKUIUtilities PVYWKformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
                   if ([endTimeString hasPrefix:dateSelectedString]) {
                    PVYWKScorecardModel *model = [[PVYWKScorecardModel alloc] init];
                    model.PVYWKnatureCompetition = [obj objectForKey:@"PVYWKnatureCompetition"];
                    model.PVYWKteamAName = [obj objectForKey:@"PVYWKteamAName"];
                    model.PVYWKteamANameScore = [[obj objectForKey:@"PVYWKteamANameScore"] integerValue];
                    model.PVYWKteamBName = [obj objectForKey:@"PVYWKteamBName"];
                    model.PVYWKteamBNameScore = [[obj objectForKey:@"PVYWKteamBNameScore"] integerValue];
                    model.PVYWKtotalTimeString = [obj objectForKey:@"PVYWKtotalTimeString"];
                    model.PVYWKendTimeString = [obj objectForKey:@"PVYWKendTimeString"];
                    model.PVYWKBureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"PVYWKBureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           PVYWKBureauPointsModel *pointModel = [PVYWKBureauPointsModel yy_modelWithDictionary:dic];
                           [model.PVYWKBureauPointsArray addObject:pointModel];
                       }
                    [self.PVYWKDataArray addObject:model];
                    }
                }
                if (!self.PVYWKDataArray.count) {
                    [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.PVYWKmainTable reloadData];
                }else{
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.PVYWKmainTable reloadData];
                }
        }
    }];
    }else{
        [self.PVYWKmainTable.mj_header endRefreshing];
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.PVYWKmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVYWKKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVYWKDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVYWKScorecardModel *model = self.PVYWKDataArray[indexPath.row];
    PVYWKRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PVYWKDataArray{
    if (!_PVYWKDataArray) {
        _PVYWKDataArray = [[NSMutableArray alloc] init];
    }
    return _PVYWKDataArray;
}
- (UITableView *)PVYWKmainTable{
    if (!_PVYWKmainTable) {
        _PVYWKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVYWKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PVYWKmainTable.delegate = self;
        _PVYWKmainTable.dataSource = self;
        _PVYWKmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVYWKmainTable.estimatedRowHeight = 55.0f;
        _PVYWKmainTable.tableHeaderView = [[UIView alloc] init];
        _PVYWKmainTable.tableFooterView = [[UIView alloc] init];
        [_PVYWKmainTable registerClass:[PVYWKRecordTableViewCell class] forCellReuseIdentifier:@"PVYWKRecordTableViewCell"];
        _PVYWKmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PVYWKLoadData)];
        [self.view addSubview:_PVYWKmainTable];
        [_PVYWKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _PVYWKmainTable;
}
@end
