//
//  YBScorecardViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBScorecardViewController.h"
#import "YBLoginViewController.h"
#import "YBScorecardModel.h"
#import "YBScorecardViewModel.h"
#import "YBScorecardTitleTableViewCell.h"
#import "YBScorecardTimeStatisticsTableViewCell.h"
#import "YBScorecardTableViewCell.h"
#import "YBScorecardOperationTableViewCell.h"
@interface YBScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)YBScorecardModel *YBscorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *YBviewDataArray;
@property(nonatomic, strong)UITableView *YBmainTable;
@property (nonatomic,strong )NSTimer *YBtimer;//定时器
@end

@implementation YBScorecardViewController
+ (YBScorecardViewController *)shareInstance{
    static YBScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self YBsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)YBsetContentView{
    [self.YBviewDataArray removeAllObjects];
    YBScorecardViewModel *titleModel = [[YBScorecardViewModel alloc] init];
    titleModel.cellType = YBScorecardCellTypeTitle;
    titleModel.YBnatureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    [self.YBviewDataArray addObject:titleModel];
    
    YBScorecardViewModel *timeStatisticsDateModel = [[YBScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = YBScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.YBtimeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [YBUIUtilities YBdateFromString:timeStatisticsDateModel.YBtimeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.YBtimeStatisticsDate = timeStatisticsDate;
    [self.YBviewDataArray addObject:timeStatisticsDateModel];
    
    YBScorecardViewModel *teamAModel = [[YBScorecardViewModel alloc] init];
    teamAModel.YBteamName = @"TeamA";
    teamAModel.cellType = YBScorecardCellTypeScoreStatistics;
    [self.YBviewDataArray addObject:teamAModel];
    
    YBScorecardViewModel *teamBModel = [[YBScorecardViewModel alloc] init];
    teamBModel.YBteamName = @"TeamB";
    teamBModel.cellType = YBScorecardCellTypeScoreStatistics;
    [self.YBviewDataArray addObject:teamBModel];
    
    YBScorecardViewModel *operationModel = [[YBScorecardViewModel alloc] init];
    operationModel.cellType = YBScorecardCellTypeOperation;
    [self.YBviewDataArray addObject:operationModel];
    
    [self.YBmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YBScorecardViewModel *viewModel = self.YBviewDataArray[indexPath.row];
    if (viewModel.cellType == YBScorecardCellTypeTitle) {
        YBScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.YBScorecardTitleEditB = ^(YBScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.YBtimer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.YBtimer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == YBScorecardCellTypeTimeStatistics) {
        YBScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == YBScorecardCellTypeScoreStatistics){
    YBScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.YBScorecardEditB = ^(YBScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.YBtimer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.YBtimer setFireDate:[NSDate date]];
        }
    };
    cell.YBScorecardB = ^(YBScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.YBmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else{
        YBScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.YBtimer = cell.YBtimer;
        __weak typeof(self) weakSelf = self;
        cell.YBScorecardOperationB = ^(YBScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            YBScorecardViewModel *timeStatisticsDateModel = self.YBviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.YBtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.YBtimeStatisticsDate = [YBUIUtilities YBdateFromString:dateString formate:@"HH:mm:ss"];
                
            YBScorecardViewModel *teamAModel = self.YBviewDataArray[2];
            teamAModel.score = 0;
            
            YBScorecardViewModel *teamBModel = self.YBviewDataArray[3];
            teamBModel.score = 0;
                
            [weakSelf.YBmainTable reloadData];
            }else if (cell.index == 101){
            YBScorecardViewModel *timeStatisticsDateModel = self.YBviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.YBtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.YBtimeStatisticsDate = [YBUIUtilities YBdateFromString:dateString formate:@"HH:mm:ss"];
            [weakSelf.YBmainTable reloadData];
            }else if (cell.index == 102){
                YBScorecardViewModel *teamAModel = self.YBviewDataArray[2];
                YBScorecardViewModel *teamBModel = self.YBviewDataArray[3];
                [self.YBviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.YBviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.YBmainTable reloadData];
            }else if (cell.index == 103){
                [cell.YBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
                [cell.YBtimer setFireDate:[NSDate distantFuture]];
                [weakSelf YBsave];
                [weakSelf.YBmainTable reloadData];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)YBsaveAction{
    YBScorecardViewModel *titleModel = self.YBviewDataArray[0];
    if (!titleModel.YBnatureCompetitionString.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    YBScorecardViewModel *timeStatisticsDateModel = self.YBviewDataArray[1];
    if (!timeStatisticsDateModel.YBtimeStatisticsDateString.length) {
           [MBProgressHUD YBshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    YBScorecardViewModel *temaAModel = self.YBviewDataArray[2];
    if (!temaAModel.YBteamName.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    YBScorecardViewModel *temaBModel = self.YBviewDataArray[3];
    if (!temaBModel.YBteamName.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    self.YBscorecardModel.YBnatureCompetition = titleModel.YBnatureCompetitionString;
    self.YBscorecardModel.YBteamAName = temaAModel.YBteamName;
    self.YBscorecardModel.YBteamANameScore = temaAModel.score;
    self.YBscorecardModel.YBteamBName = temaBModel.YBteamName;
    self.YBscorecardModel.YBteamBNameScore = temaBModel.score;
    self.YBscorecardModel.YBtotalTimeString = timeStatisticsDateModel.YBtimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [YBUIUtilities YBformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.YBscorecardModel.YBendTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.YBscorecardModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"YBScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_YBscorecardModel = nil;
            self->_YBmainTable = nil;
            [self.YBtimer setFireDate:[NSDate distantFuture]];
            self.YBtimer = nil;
            [self YBsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
- (void)YBsave{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self YBsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YBKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (YBScorecardModel *)YBscorecardModel{
    if (!_YBscorecardModel) {
        _YBscorecardModel = [[YBScorecardModel alloc] init];
    }
    return _YBscorecardModel;
}
- (NSMutableArray *)YBviewDataArray{
    if (!_YBviewDataArray) {
        _YBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YBviewDataArray;
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
        [_YBmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_YBmainTable registerClass:[YBScorecardTitleTableViewCell class] forCellReuseIdentifier:@"YBScorecardTitleTableViewCell"];
        [_YBmainTable registerClass:[YBScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"YBScorecardTimeStatisticsTableViewCell"];
        [_YBmainTable registerClass:[YBScorecardTableViewCell class] forCellReuseIdentifier:@"YBScorecardTableViewCell"];
        [_YBmainTable registerClass:[YBScorecardOperationTableViewCell class] forCellReuseIdentifier:@"YBScorecardOperationTableViewCell"];
        [self.view addSubview:_YBmainTable];
        [_YBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-YBHeightTabBar);
        }];
    }
    return _YBmainTable;
}
@end
