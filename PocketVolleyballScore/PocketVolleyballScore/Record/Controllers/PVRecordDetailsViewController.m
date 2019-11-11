//
//  PVRecordDetailsViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVRecordDetailsViewController.h"
#import "PVLoginViewController.h"
#import "PVRecordTableViewCell.h"
#import "PVScorecardModel.h"
@interface PVRecordDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PVDataArray;
@property(nonatomic, strong)UITableView *PVmainTable;
@end

@implementation PVRecordDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"当日比赛记录", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PVLoadData];
}
- (void)PVLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PVScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.PVmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.PVmainTable reloadData];
        }else{
            [self.PVDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    NSString *endTimeString = [obj objectForKey:@"PVendTimeString"];
                    NSString *dateSelectedString = [PVUIUtilities PVformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
                   if ([endTimeString hasPrefix:dateSelectedString]) {
                    PVScorecardModel *model = [[PVScorecardModel alloc] init];
                    model.PVnatureCompetition = [obj objectForKey:@"PVnatureCompetition"];
                    model.PVteamAName = [obj objectForKey:@"PVteamAName"];
                    model.PVteamANameScore = [[obj objectForKey:@"PVteamANameScore"] integerValue];
                    model.PVteamBName = [obj objectForKey:@"PVteamBName"];
                    model.PVteamBNameScore = [[obj objectForKey:@"PVteamBNameScore"] integerValue];
                    model.PVtotalTimeString = [obj objectForKey:@"PVtotalTimeString"];
                    model.PVendTimeString = [obj objectForKey:@"PVendTimeString"];
                    model.PVBureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"PVBureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           PVBureauPointsModel *pointModel = [PVBureauPointsModel yy_modelWithDictionary:dic];
                           [model.PVBureauPointsArray addObject:pointModel];
                       }
                    [self.PVDataArray addObject:model];
                    }
                }
                if (!self.PVDataArray.count) {
                    [MBProgressHUD PVshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.PVmainTable reloadData];
                }else{
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.PVmainTable reloadData];
                }
        }
    }];
    }else{
        [self.PVmainTable.mj_header endRefreshing];
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.PVmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVScorecardModel *model = self.PVDataArray[indexPath.row];
    PVRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PVDataArray{
    if (!_PVDataArray) {
        _PVDataArray = [[NSMutableArray alloc] init];
    }
    return _PVDataArray;
}
- (UITableView *)PVmainTable{
    if (!_PVmainTable) {
        _PVmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVmainTable.delegate = self;
        _PVmainTable.dataSource = self;
        _PVmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVmainTable.estimatedRowHeight = 55.0f;
        _PVmainTable.tableHeaderView = [[UIView alloc] init];
        _PVmainTable.tableFooterView = [[UIView alloc] init];
        [_PVmainTable registerClass:[PVRecordTableViewCell class] forCellReuseIdentifier:@"PVRecordTableViewCell"];
        _PVmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PVLoadData)];
        [self.view addSubview:_PVmainTable];
        [_PVmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _PVmainTable;
}
@end
