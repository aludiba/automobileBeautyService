//
//  YBRecordDetailsViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBRecordDetailsViewController.h"
#import "YBLoginViewController.h"
#import "YBRecordTableViewCell.h"
#import "YBScorecardModel.h"
@interface YBRecordDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YBDataArray;
@property(nonatomic, strong)UITableView *YBmainTable;
@end

@implementation YBRecordDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"当日比赛记录", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self YBLoadData];
}
- (void)YBLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"YBScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.YBmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.YBmainTable reloadData];
        }else{
            [self.YBDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    NSString *endTimeString = [obj objectForKey:@"YBendTimeString"];
                    NSString *dateSelectedString = [YBUIUtilities YBformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
                   if ([endTimeString hasPrefix:dateSelectedString]) {
                    YBScorecardModel *model = [[YBScorecardModel alloc] init];
                    model.YBnatureCompetition = [obj objectForKey:@"YBnatureCompetition"];
                    model.YBteamAName = [obj objectForKey:@"YBteamAName"];
                    model.YBteamANameScore = [[obj objectForKey:@"YBteamANameScore"] integerValue];
                    model.YBteamBName = [obj objectForKey:@"YBteamBName"];
                    model.YBteamBNameScore = [[obj objectForKey:@"YBteamBNameScore"] integerValue];
                    model.YBtotalTimeString = [obj objectForKey:@"YBtotalTimeString"];
                    model.YBendTimeString = [obj objectForKey:@"YBendTimeString"];
                    [self.YBDataArray addObject:model];
                    }
                }
                if (!self.YBDataArray.count) {
                    [MBProgressHUD YBshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.YBmainTable reloadData];
                }else{
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.YBmainTable reloadData];
                }
        }
    }];
    }else{
        [self.YBmainTable.mj_header endRefreshing];
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.YBmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YBKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YBScorecardModel *model = self.YBDataArray[indexPath.row];
    YBRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)YBDataArray{
    if (!_YBDataArray) {
        _YBDataArray = [[NSMutableArray alloc] init];
    }
    return _YBDataArray;
}
- (UITableView *)YBmainTable{
    if (!_YBmainTable) {
        _YBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YBmainTable.backgroundColor = [UIColor cyanColor];
        _YBmainTable.delegate = self;
        _YBmainTable.dataSource = self;
        _YBmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBmainTable.estimatedRowHeight = 55.0f;
        _YBmainTable.tableHeaderView = [[UIView alloc] init];
        _YBmainTable.tableFooterView = [[UIView alloc] init];
        [_YBmainTable registerClass:[YBRecordTableViewCell class] forCellReuseIdentifier:@"YBRecordTableViewCell"];
        _YBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(YBLoadData)];
        [self.view addSubview:_YBmainTable];
        [_YBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _YBmainTable;
}
@end
