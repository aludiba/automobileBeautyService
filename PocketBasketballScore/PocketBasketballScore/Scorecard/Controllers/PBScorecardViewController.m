//
//  PBScorecardViewController.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardViewController.h"
#import "PBLoginViewController.h"
#import "PBScorecardModel.h"
#import "PBScorecardViewModel.h"
#import "PBScorecardTitleTableViewCell.h"
#import "PBScorecardTimeStatisticsTableViewCell.h"
#import "PBScorecardTableViewCell.h"
#import "PBScorecardOperationTableViewCell.h"
@interface PBScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)PBScorecardModel *scorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *PBviewDataArray;
@property(nonatomic, strong)UITableView *PBmainTable;
@property (nonatomic,strong )NSTimer *timer;//定时器
@end

@implementation PBScorecardViewController
+ (PBScorecardViewController *)shareInstance{
    static PBLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PBScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self PBsetContentView];
}
- (void)PBsetContentView{
    [self.PBviewDataArray removeAllObjects];
    PBScorecardViewModel *titleModel = [[PBScorecardViewModel alloc] init];
    titleModel.cellType = PBScorecardCellTypeTitle;
    titleModel.natureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    [self.PBviewDataArray addObject:titleModel];
    
    PBScorecardViewModel *timeStatisticsDateModel = [[PBScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = PBScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.timeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [PBUIUtilities PBdateFromString:timeStatisticsDateModel.timeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.timeStatisticsDate = timeStatisticsDate;
    [self.PBviewDataArray addObject:timeStatisticsDateModel];
    
    PBScorecardViewModel *teamAModel = [[PBScorecardViewModel alloc] init];
    teamAModel.teamName = @"TeamA";
    teamAModel.cellType = PBScorecardCellTypeScoreStatistics;
    [self.PBviewDataArray addObject:teamAModel];
    
    PBScorecardViewModel *teamBModel = [[PBScorecardViewModel alloc] init];
    teamBModel.teamName = @"TeamB";
    teamBModel.cellType = PBScorecardCellTypeScoreStatistics;
    [self.PBviewDataArray addObject:teamBModel];
    
    PBScorecardViewModel *operationModel = [[PBScorecardViewModel alloc] init];
    operationModel.cellType = PBScorecardCellTypeOperation;
    [self.PBviewDataArray addObject:operationModel];
    
    [self.PBmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PBScorecardViewModel *viewModel = self.PBviewDataArray[indexPath.row];
    if (viewModel.cellType == PBScorecardCellTypeTitle) {
        PBScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.PBScorecardTitleEditB = ^(PBScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.timer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.timer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PBScorecardCellTypeTimeStatistics) {
        PBScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PBScorecardCellTypeScoreStatistics){
    PBScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.PBScorecardEditB = ^(PBScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.timer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.timer setFireDate:[NSDate date]];
        }
    };
    cell.PBScorecardB = ^(PBScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.PBmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else{
        PBScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.timer = cell.timer;
        __weak typeof(self) weakSelf = self;
        cell.PBScorecardOperationB = ^(PBScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            PBScorecardViewModel *timeStatisticsDateModel = self.PBviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.timeStatisticsDateString = dateString;
            timeStatisticsDateModel.timeStatisticsDate = [PBUIUtilities PBdateFromString:dateString formate:@"HH:mm:ss"];
                
            PBScorecardViewModel *teamAModel = self.PBviewDataArray[2];
            teamAModel.score = 0;
            
            PBScorecardViewModel *teamBModel = self.PBviewDataArray[3];
            teamBModel.score = 0;
                
            [weakSelf.PBmainTable reloadData];
            }else if (cell.index == 101){
            PBScorecardViewModel *timeStatisticsDateModel = self.PBviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.timeStatisticsDateString = dateString;
            timeStatisticsDateModel.timeStatisticsDate = [PBUIUtilities PBdateFromString:dateString formate:@"HH:mm:ss"];
            [weakSelf.PBmainTable reloadData];
            }else if (cell.index == 102){
                PBScorecardViewModel *teamAModel = self.PBviewDataArray[2];
                PBScorecardViewModel *teamBModel = self.PBviewDataArray[3];
                [self.PBviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.PBviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.PBmainTable reloadData];
            }else if (cell.index == 103){
                [cell.PBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
                [cell.timer setFireDate:[NSDate distantFuture]];
                [weakSelf PBsave];
                [weakSelf.PBmainTable reloadData];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)PBsaveAction{
    //        进行操作
    PBScorecardViewModel *titleModel = self.PBviewDataArray[0];
    if (!titleModel.natureCompetitionString.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    PBScorecardViewModel *timeStatisticsDateModel = self.PBviewDataArray[1];
    if (!timeStatisticsDateModel.timeStatisticsDateString.length) {
           [MBProgressHUD PBshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    PBScorecardViewModel *temaAModel = self.PBviewDataArray[2];
    if (!temaAModel.teamName.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    PBScorecardViewModel *temaBModel = self.PBviewDataArray[3];
    if (!temaBModel.teamName.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    self.scorecardModel.natureCompetition = titleModel.natureCompetitionString;
    self.scorecardModel.teamAName = temaAModel.teamName;
    self.scorecardModel.teamANameScore = temaAModel.score;
    self.scorecardModel.teamBName = temaBModel.teamName;
    self.scorecardModel.teamBNameScore = temaBModel.score;
    self.scorecardModel.totalTimeString = timeStatisticsDateModel.timeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PBUIUtilities PBformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.scorecardModel.endTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.scorecardModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"PBScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_scorecardModel = nil;
            self->_PBmainTable = nil;
            [self.timer setFireDate:[NSDate distantFuture]];
            self.timer = nil;
            [self PBsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
- (void)PBsave{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self PBsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PBLoginViewController *loginVC = [PBLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PBKeyWindow.rootViewController = loginVCNav;
            
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (PBScorecardModel *)scorecardModel{
    if (!_scorecardModel) {
        _scorecardModel = [[PBScorecardModel alloc] init];
    }
    return _scorecardModel;
}
- (NSMutableArray *)PBviewDataArray{
    if (!_PBviewDataArray) {
        _PBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PBviewDataArray;
}
- (UITableView *)PBmainTable{
    if (!_PBmainTable) {
        _PBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PBmainTable.delegate = self;
        _PBmainTable.dataSource = self;
        _PBmainTable.rowHeight = UITableViewAutomaticDimension;
        _PBmainTable.estimatedRowHeight = 55.0f;
        _PBmainTable.tableHeaderView = [[UIView alloc] init];
        _PBmainTable.tableFooterView = [[UIView alloc] init];
        [_PBmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_PBmainTable registerClass:[PBScorecardTitleTableViewCell class] forCellReuseIdentifier:@"PBScorecardTitleTableViewCell"];
        [_PBmainTable registerClass:[PBScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"PBScorecardTimeStatisticsTableViewCell"];
        [_PBmainTable registerClass:[PBScorecardTableViewCell class] forCellReuseIdentifier:@"PBScorecardTableViewCell"];
        [_PBmainTable registerClass:[PBScorecardOperationTableViewCell class] forCellReuseIdentifier:@"PBScorecardOperationTableViewCell"];
        [self.view addSubview:_PBmainTable];
        [_PBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PBHeightTabBar);
        }];
    }
    return _PBmainTable;
}
@end
