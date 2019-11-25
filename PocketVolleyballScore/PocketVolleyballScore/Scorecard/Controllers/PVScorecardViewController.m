//
//  PVScorecardViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardViewController.h"
#import "PVLoginViewController.h"
#import "PVScorecardModel.h"
#import "PVScorecardViewModel.h"
#import "PVBureauPointsModel.h"
#import "PVScorecardTitleTableViewCell.h"
#import "PVScorecardTimeStatisticsTableViewCell.h"
#import "PVScorecardTableViewCell.h"
#import "PVScorecardOperationTableViewCell.h"
#import "PVScorecardSaveTableViewCell.h"
#import "PVScoreSummaryTableViewCell.h"
@interface PVScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)PVScorecardModel *PVscorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *PVviewDataArray;
@property(nonatomic, strong)UITableView *PVmainTable;
@property (nonatomic,strong )NSTimer *PVtimer;//定时器
@end

@implementation PVScorecardViewController
+ (PVScorecardViewController *)shareInstance{
    static PVScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self PVsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)PVsetContentView{
    [self.PVviewDataArray removeAllObjects];
    PVScorecardViewModel *titleModel = [[PVScorecardViewModel alloc] init];
    titleModel.cellType = PVScorecardCellTypeTitle;
    titleModel.PVnatureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    titleModel.PVbureauString = NSLocalizedString(@"例如：第一局", nil);
    [self.PVviewDataArray addObject:titleModel];
    
    PVScorecardViewModel *timeStatisticsDateModel = [[PVScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = PVScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.PVtimeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [PVUIUtilities PVdateFromString:timeStatisticsDateModel.PVtimeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.PVtimeStatisticsDate = timeStatisticsDate;
    [self.PVviewDataArray addObject:timeStatisticsDateModel];
    
    PVScorecardViewModel *teamAModel = [[PVScorecardViewModel alloc] init];
    teamAModel.PVteamName = @"TeamA";
    teamAModel.cellType = PVScorecardCellTypeScoreStatistics;
    teamAModel.teamStatusType = PVScorecardHomeTeamOrVisitingTeamTypeHome;
    [self.PVviewDataArray addObject:teamAModel];
    
    PVScorecardViewModel *teamBModel = [[PVScorecardViewModel alloc] init];
    teamBModel.PVteamName = @"TeamB";
    teamBModel.cellType = PVScorecardCellTypeScoreStatistics;
    teamBModel.teamStatusType = PVScorecardHomeTeamOrVisitingTeamTypeVisiting;
    [self.PVviewDataArray addObject:teamBModel];
    
    PVScorecardViewModel *operationModel = [[PVScorecardViewModel alloc] init];
    operationModel.cellType = PVScorecardCellTypeOperation;
    [self.PVviewDataArray addObject:operationModel];
    
    PVScorecardViewModel *summaryModel = [[PVScorecardViewModel alloc] init];
    summaryModel.cellType = PVScorecardCellTypeSummary;
    summaryModel.PVBureauPointsArray = [self.PVscorecardModel.PVBureauPointsArray mutableCopy];
    [self.PVviewDataArray addObject:summaryModel];
    
    PVScorecardViewModel *saveModel = [[PVScorecardViewModel alloc] init];
    saveModel.cellType = PVScorecardCellTypeSave;
    [self.PVviewDataArray addObject:saveModel];
    
    [self.PVmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVScorecardViewModel *viewModel = self.PVviewDataArray[indexPath.row];
    if (viewModel.cellType == PVScorecardCellTypeTitle) {
        PVScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.PVScorecardTitleEditB = ^(PVScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.PVtimer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.PVtimer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PVScorecardCellTypeTimeStatistics) {
        PVScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PVScorecardCellTypeScoreStatistics){
    PVScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.PVScorecardEditB = ^(PVScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.PVtimer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.PVtimer setFireDate:[NSDate date]];
        }
    };
    cell.PVScorecardB = ^(PVScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.PVmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else if(viewModel.cellType == PVScorecardCellTypeOperation){
        PVScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.PVtimer = cell.PVtimer;
        __weak typeof(self) weakSelf = self;
        cell.PVScorecardOperationB = ^(PVScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            PVScorecardViewModel *timeStatisticsDateModel = self.PVviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PVtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.PVtimeStatisticsDate = [PVUIUtilities PVdateFromString:dateString formate:@"HH:mm:ss"];
                
            PVScorecardViewModel *teamAModel = self.PVviewDataArray[2];
            teamAModel.score = 0;
            
            PVScorecardViewModel *teamBModel = self.PVviewDataArray[3];
            teamBModel.score = 0;
                
            PVScorecardViewModel *summaryModel = self.PVviewDataArray[self.PVviewDataArray.count - 2];
            [summaryModel.PVBureauPointsArray removeAllObjects];
                
           [self.PVscorecardModel.PVBureauPointsArray removeAllObjects];
                
            [weakSelf.PVmainTable reloadData];
            }else if (cell.index == 101){
            PVScorecardViewModel *timeStatisticsDateModel = self.PVviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PVtimeStatisticsDateString = dateString;
         timeStatisticsDateModel.PVtimeStatisticsDate = [PVUIUtilities PVdateFromString:dateString formate:@"HH:mm:ss"];
                if (cell.startOrStopType == scorecardOperationStartOrStopTypeStart) {
                    
                }else if(cell.startOrStopType == scorecardOperationStartOrStopTypeStop){
                    PVBureauPointsModel *pointsModel = [[PVBureauPointsModel alloc] init];
                    pointsModel.PVIndex = self.PVscorecardModel.PVBureauPointsArray.count;
                   PVScorecardViewModel *temaAModel = self.PVviewDataArray[2];
                    
                    PVScorecardViewModel *temaBModel = self.PVviewDataArray[3];
                    
                    NSUInteger homeTemaScore = 0;
                    NSUInteger visitingTeamScore = 0;
                    if (temaAModel.teamStatusType == PVScorecardHomeTeamOrVisitingTeamTypeHome && temaBModel.teamStatusType == PVScorecardHomeTeamOrVisitingTeamTypeVisiting) {
                        homeTemaScore = temaAModel.score;
                        visitingTeamScore = temaBModel.score;
                    }else if (temaAModel.teamStatusType == PVScorecardHomeTeamOrVisitingTeamTypeVisiting && temaBModel.teamStatusType == PVScorecardHomeTeamOrVisitingTeamTypeHome){
                        homeTemaScore = temaBModel.score;
                        visitingTeamScore = temaAModel.score;
                    }
                    pointsModel.PVtBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                    if (homeTemaScore > visitingTeamScore) {
                        pointsModel.whichWinType = scorecardWhichWinTypeMain;
                    }else{
                        pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                    } [self.PVscorecardModel.PVBureauPointsArray addObject:pointsModel];
                    PVScorecardViewModel *summaryModel = self.PVviewDataArray[self.PVviewDataArray.count - 2];
                    summaryModel.PVBureauPointsArray = [self.PVscorecardModel.PVBureauPointsArray mutableCopy];
                    
                    PVScorecardViewModel *teamAModel = self.PVviewDataArray[2];
                    teamAModel.score = 0;
                               
                    PVScorecardViewModel *teamBModel = self.PVviewDataArray[3];
                    teamBModel.score = 0;
                }
                if (self.PVscorecardModel.PVBureauPointsArray.count > 2) {
                    NSUInteger homeTeamScores = 0;
                    NSUInteger visitingTeamScored = 0;
                    for (int i = 0; i < self.PVscorecardModel.PVBureauPointsArray.count; i++) {
                        PVBureauPointsModel *pointsModel = self.PVscorecardModel.PVBureauPointsArray[i];
                        if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                            homeTeamScores++;
                        }else{
                            visitingTeamScored++;
                        }
                    }
                    PVScorecardViewModel *summaryModel = self.PVviewDataArray[self.PVviewDataArray.count - 2];
                    if (homeTeamScores > visitingTeamScored) {
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                    }else{
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                    }
                    self.PVscorecardModel.totalAcoreString = summaryModel.totalAcoreString;
                    self.PVscorecardModel.PVteamANameScore = homeTeamScores;
                   
                    self.PVscorecardModel.PVteamBNameScore = visitingTeamScored;
                }
            [weakSelf.PVmainTable reloadData];
                if ((self.PVscorecardModel.PVteamANameScore == 3) || (self.PVscorecardModel.PVteamBNameScore == 3)) {
                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提示", nil) message:NSLocalizedString(@"胜负已分请保存", nil) preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                        
                    }];
                    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        [self.PVtimer setFireDate:[NSDate distantFuture]];
                        [weakSelf PVsave];
                    }];
                    [alert addAction:cancelAction];
                    [alert addAction:sureAction];
                    [self presentViewController:alert animated:YES completion:^{
                        
                    }];
                }
            }else if (cell.index == 102){
                PVScorecardViewModel *teamAModel = self.PVviewDataArray[2];
                PVScorecardViewModel *teamBModel = self.PVviewDataArray[3];
                [self.PVviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.PVviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.PVmainTable reloadData];
            }else if (cell.index == 103){
               
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if(viewModel.cellType == PVScorecardCellTypeSummary){
        PVScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScoreSummaryTableViewCell" forIndexPath:indexPath];
        cell.PVModel = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        PVScorecardSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVScorecardSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.PVScorecardSaveB = ^(PVScorecardSaveTableViewCell * _Nonnull cell) {
            [self.PVtimer setFireDate:[NSDate distantFuture]];
            [weakSelf PVsave];
            [weakSelf.PVmainTable reloadData];
        };
        return cell;
    }
}
- (void)PVsaveAction{
    PVScorecardViewModel *titleModel = self.PVviewDataArray[0];
    if (!titleModel.PVnatureCompetitionString.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    PVScorecardViewModel *timeStatisticsDateModel = self.PVviewDataArray[1];
    if (!timeStatisticsDateModel.PVtimeStatisticsDateString.length) {
           [MBProgressHUD PVshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    PVScorecardViewModel *temaModel = self.PVviewDataArray[2];
    PVScorecardViewModel *temaModel1 = self.PVviewDataArray[3];
    PVScorecardViewModel *temaAModel;
    PVScorecardViewModel *temaBModel;
    if (temaModel.teamStatusType == PVScorecardHomeTeamOrVisitingTeamTypeHome) {
        temaAModel = temaModel;
        temaBModel = temaModel1;
    }else{
        temaAModel = temaModel1;
        temaBModel = temaModel;
    }
    if (!temaAModel.PVteamName.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    if (!temaBModel.PVteamName.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    PVScorecardViewModel *summaryModel = self.PVviewDataArray[self.PVviewDataArray.count - 2];
    if ((self.PVscorecardModel.PVteamANameScore < 3) && (self.PVscorecardModel.PVteamBNameScore < 3)) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    self.PVscorecardModel.PVnatureCompetition = titleModel.PVnatureCompetitionString;
    self.PVscorecardModel.PVteamAName = temaAModel.PVteamName;
    self.PVscorecardModel.PVteamBName = temaBModel.PVteamName;
    self.PVscorecardModel.PVtotalTimeString = timeStatisticsDateModel.PVtimeStatisticsDateString;
    NSUInteger loc = self.PVscorecardModel.PVteamANameScore + self.PVscorecardModel.PVteamBNameScore;
    [self.PVscorecardModel.PVBureauPointsArray removeObjectsInRange:NSMakeRange(loc, self.PVscorecardModel.PVBureauPointsArray.count - loc)];
    
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PVUIUtilities PVformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.PVscorecardModel.PVendTimeString = nowDateString;
    
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.PVscorecardModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"PVScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_PVscorecardModel = nil;
            self->_PVmainTable = nil;
            [self.PVtimer setFireDate:[NSDate distantFuture]];
            self.PVtimer = nil;
            [self PVsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (void)PVsave{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self PVsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (PVScorecardModel *)PVscorecardModel{
    if (!_PVscorecardModel) {
        _PVscorecardModel = [[PVScorecardModel alloc] init];
       _PVscorecardModel.PVBureauPointsArray = [[NSMutableArray alloc] init];
    }
    return _PVscorecardModel;
}
- (NSMutableArray *)PVviewDataArray{
    if (!_PVviewDataArray) {
        _PVviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PVviewDataArray;
}
- (UITableView *)PVmainTable{
    if (!_PVmainTable) {
        _PVmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVmainTable.backgroundColor = [UIColor cyanColor];
        _PVmainTable.delegate = self;
        _PVmainTable.dataSource = self;
        _PVmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVmainTable.estimatedRowHeight = 55.0f;
        _PVmainTable.tableHeaderView = [[UIView alloc] init];
        _PVmainTable.tableFooterView = [[UIView alloc] init];
        [_PVmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_PVmainTable registerClass:[PVScorecardTitleTableViewCell class] forCellReuseIdentifier:@"PVScorecardTitleTableViewCell"];
        [_PVmainTable registerClass:[PVScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"PVScorecardTimeStatisticsTableViewCell"];
        [_PVmainTable registerClass:[PVScorecardTableViewCell class] forCellReuseIdentifier:@"PVScorecardTableViewCell"];
        [_PVmainTable registerClass:[PVScorecardOperationTableViewCell class] forCellReuseIdentifier:@"PVScorecardOperationTableViewCell"];
        [_PVmainTable registerClass:[PVScorecardSaveTableViewCell class] forCellReuseIdentifier:@"PVScorecardSaveTableViewCell"];
        [_PVmainTable registerClass:[PVScoreSummaryTableViewCell class] forCellReuseIdentifier:@"PVScoreSummaryTableViewCell"];
        [self.view addSubview:_PVmainTable];
        [_PVmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PVHeightTabBar);
        }];
    }
    return _PVmainTable;
}
@end
