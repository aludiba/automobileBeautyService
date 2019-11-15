//
//  GFScorecardViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFScorecardViewController.h"
#import "GFLoginViewController.h"
#import "GFScorecardModel.h"
#import "GFScorecardViewModel.h"
#import "GFScorecardTitleTableViewCell.h"
#import "GFScorecardTimeStatisticsTableViewCell.h"
#import "GFScorecardTableViewCell.h"
#import "GFScorecardOperationTableViewCell.h"
@interface GFScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)GFScorecardModel *GFscorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *GFviewDataArray;
@property(nonatomic, strong)UITableView *GFmainTable;
@property (nonatomic,strong )NSTimer *GFtimer;//定时器
@end

@implementation GFScorecardViewController
+ (GFScorecardViewController *)shareInstance{
    static GFScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GFScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self GFsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)GFsetContentView{
    [self.GFviewDataArray removeAllObjects];
    GFScorecardViewModel *titleModel = [[GFScorecardViewModel alloc] init];
    titleModel.cellType = GFScorecardCellTypeTitle;
    titleModel.GFnatureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    [self.GFviewDataArray addObject:titleModel];
    
    GFScorecardViewModel *timeStatisticsDateModel = [[GFScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = GFScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.GFtimeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [GFUIUtilities GFdateFromString:timeStatisticsDateModel.GFtimeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.GFtimeStatisticsDate = timeStatisticsDate;
    [self.GFviewDataArray addObject:timeStatisticsDateModel];
    
    GFScorecardViewModel *teamAModel = [[GFScorecardViewModel alloc] init];
    teamAModel.GFteamName = @"TeamA";
    teamAModel.cellType = GFScorecardCellTypeScoreStatistics;
    [self.GFviewDataArray addObject:teamAModel];
    
    GFScorecardViewModel *teamBModel = [[GFScorecardViewModel alloc] init];
    teamBModel.GFteamName = @"TeamB";
    teamBModel.cellType = GFScorecardCellTypeScoreStatistics;
    [self.GFviewDataArray addObject:teamBModel];
    
    GFScorecardViewModel *operationModel = [[GFScorecardViewModel alloc] init];
    operationModel.cellType = GFScorecardCellTypeOperation;
    [self.GFviewDataArray addObject:operationModel];
    
    [self.GFmainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GFScorecardViewModel *viewModel = self.GFviewDataArray[indexPath.row];
    if (viewModel.cellType == GFScorecardCellTypeTitle) {
        GFScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.GFScorecardTitleEditB = ^(GFScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.GFtimer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.GFtimer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == GFScorecardCellTypeTimeStatistics) {
        GFScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == GFScorecardCellTypeScoreStatistics){
    GFScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.GFScorecardEditB = ^(GFScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.GFtimer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.GFtimer setFireDate:[NSDate date]];
        }
    };
    cell.GFScorecardB = ^(GFScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.GFmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else{
        GFScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.GFtimer = cell.GFtimer;
        __weak typeof(self) weakSelf = self;
        cell.GFScorecardOperationB = ^(GFScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            GFScorecardViewModel *timeStatisticsDateModel = self.GFviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.GFtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.GFtimeStatisticsDate = [GFUIUtilities GFdateFromString:dateString formate:@"HH:mm:ss"];
                
            GFScorecardViewModel *teamAModel = self.GFviewDataArray[2];
            teamAModel.score = 0;
            
            GFScorecardViewModel *teamBModel = self.GFviewDataArray[3];
            teamBModel.score = 0;
                
            [weakSelf.GFmainTable reloadData];
            }else if (cell.index == 101){
            GFScorecardViewModel *timeStatisticsDateModel = self.GFviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.GFtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.GFtimeStatisticsDate = [GFUIUtilities GFdateFromString:dateString formate:@"HH:mm:ss"];
            [weakSelf.GFmainTable reloadData];
            }else if (cell.index == 102){
                GFScorecardViewModel *teamAModel = self.GFviewDataArray[2];
                GFScorecardViewModel *teamBModel = self.GFviewDataArray[3];
                [self.GFviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.GFviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.GFmainTable reloadData];
            }else if (cell.index == 103){
                [cell.GFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
                [cell.GFtimer setFireDate:[NSDate distantFuture]];
                [weakSelf GFsave];
                [weakSelf.GFmainTable reloadData];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)GFsaveAction{
    GFScorecardViewModel *titleModel = self.GFviewDataArray[0];
    if (!titleModel.GFnatureCompetitionString.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    GFScorecardViewModel *timeStatisticsDateModel = self.GFviewDataArray[1];
    if (!timeStatisticsDateModel.GFtimeStatisticsDateString.length) {
           [MBProgressHUD GFshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    GFScorecardViewModel *temaAModel = self.GFviewDataArray[2];
    if (!temaAModel.GFteamName.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    GFScorecardViewModel *temaBModel = self.GFviewDataArray[3];
    if (!temaBModel.GFteamName.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    self.GFscorecardModel.GFnatureCompetition = titleModel.GFnatureCompetitionString;
    self.GFscorecardModel.GFteamAName = temaAModel.GFteamName;
    self.GFscorecardModel.GFteamANameScore = temaAModel.score;
    self.GFscorecardModel.GFteamBName = temaBModel.GFteamName;
    self.GFscorecardModel.GFteamBNameScore = temaBModel.score;
    self.GFscorecardModel.GFtotalTimeString = timeStatisticsDateModel.GFtimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [GFUIUtilities GFformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.GFscorecardModel.GFendTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.GFscorecardModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"GFScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_GFscorecardModel = nil;
            self->_GFmainTable = nil;
            [self.GFtimer setFireDate:[NSDate distantFuture]];
            self.GFtimer = nil;
            [self GFsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
- (void)GFsave{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self GFsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (GFScorecardModel *)GFscorecardModel{
    if (!_GFscorecardModel) {
        _GFscorecardModel = [[GFScorecardModel alloc] init];
    }
    return _GFscorecardModel;
}
- (NSMutableArray *)GFviewDataArray{
    if (!_GFviewDataArray) {
        _GFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GFviewDataArray;
}
- (UITableView *)GFmainTable{
    if (!_GFmainTable) {
        _GFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GFmainTable.backgroundColor = [UIColor cyanColor];
        _GFmainTable.delegate = self;
        _GFmainTable.dataSource = self;
        _GFmainTable.rowHeight = UITableViewAutomaticDimension;
        _GFmainTable.estimatedRowHeight = 55.0f;
        _GFmainTable.tableHeaderView = [[UIView alloc] init];
        _GFmainTable.tableFooterView = [[UIView alloc] init];
        [_GFmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_GFmainTable registerClass:[GFScorecardTitleTableViewCell class] forCellReuseIdentifier:@"GFScorecardTitleTableViewCell"];
        [_GFmainTable registerClass:[GFScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"GFScorecardTimeStatisticsTableViewCell"];
        [_GFmainTable registerClass:[GFScorecardTableViewCell class] forCellReuseIdentifier:@"GFScorecardTableViewCell"];
        [_GFmainTable registerClass:[GFScorecardOperationTableViewCell class] forCellReuseIdentifier:@"GFScorecardOperationTableViewCell"];
        [self.view addSubview:_GFmainTable];
        [_GFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-GFHeightTabBar);
        }];
    }
    return _GFmainTable;
}
@end
