//
//  PVYWKScorecardViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardViewController.h"
#import "PVYWKLoginViewController.h"
#import "PVYWKScorecardModel.h"
#import "PVYWKScorecardViewModel.h"
#import "PVYWKBureauPointsModel.h"
#import "PVYWKScorecardTitleTableViewCell.h"
#import "PVYWKScorecardTimeStatisticsTableViewCell.h"
#import "PVYWKScorecardTableViewCell.h"
#import "PVYWKScorecardOperationTableViewCell.h"
#import "PVYWKScorecardSaveTableViewCell.h"
#import "PVYWKScoreSummaryTableViewCell.h"
@interface PVYWKScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)PVYWKScorecardModel *PVYWKscorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *PVYWKviewDataArray;
@property(nonatomic, strong)UITableView *PVYWKmainTable;
@property (nonatomic,strong )NSTimer *PVYWKtimer;//定时器
@end

@implementation PVYWKScorecardViewController
+ (PVYWKScorecardViewController *)shareInstance{
    static PVYWKScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVYWKScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self PVYWKsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)PVYWKsetContentView{
    [self.PVYWKviewDataArray removeAllObjects];
    PVYWKScorecardViewModel *titleModel = [[PVYWKScorecardViewModel alloc] init];
    titleModel.cellType = PVYWKScorecardCellTypeTitle;
    titleModel.PVYWKnatureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    titleModel.PVYWKbureauString = NSLocalizedString(@"例如：第一局", nil);
    [self.PVYWKviewDataArray addObject:titleModel];
    
    PVYWKScorecardViewModel *timeStatisticsDateModel = [[PVYWKScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = PVYWKScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.PVYWKtimeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [PVYWKUIUtilities PVYWKdateFromString:timeStatisticsDateModel.PVYWKtimeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.PVYWKtimeStatisticsDate = timeStatisticsDate;
    [self.PVYWKviewDataArray addObject:timeStatisticsDateModel];
    
    PVYWKScorecardViewModel *teamAModel = [[PVYWKScorecardViewModel alloc] init];
    teamAModel.PVYWKteamName = @"TeamA";
    teamAModel.cellType = PVYWKScorecardCellTypeScoreStatistics;
    teamAModel.teamStatusType = PVYWKScorecardHomeTeamOrVisitingTeamTypeHome;
    [self.PVYWKviewDataArray addObject:teamAModel];
    
    PVYWKScorecardViewModel *teamBModel = [[PVYWKScorecardViewModel alloc] init];
    teamBModel.PVYWKteamName = @"TeamB";
    teamBModel.cellType = PVYWKScorecardCellTypeScoreStatistics;
    teamBModel.teamStatusType = PVYWKScorecardHomeTeamOrVisitingTeamTypeVisiting;
    [self.PVYWKviewDataArray addObject:teamBModel];
    
    PVYWKScorecardViewModel *operationModel = [[PVYWKScorecardViewModel alloc] init];
    operationModel.cellType = PVYWKScorecardCellTypeOperation;
    [self.PVYWKviewDataArray addObject:operationModel];
    
    PVYWKScorecardViewModel *summaryModel = [[PVYWKScorecardViewModel alloc] init];
    summaryModel.cellType = PVYWKScorecardCellTypeSummary;
    summaryModel.PVYWKBureauPointsArray = [self.PVYWKscorecardModel.PVYWKBureauPointsArray mutableCopy];
    [self.PVYWKviewDataArray addObject:summaryModel];
    
    PVYWKScorecardViewModel *saveModel = [[PVYWKScorecardViewModel alloc] init];
    saveModel.cellType = PVYWKScorecardCellTypeSave;
    [self.PVYWKviewDataArray addObject:saveModel];
    
    [self.PVYWKmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVYWKviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVYWKScorecardViewModel *viewModel = self.PVYWKviewDataArray[indexPath.row];
    if (viewModel.cellType == PVYWKScorecardCellTypeTitle) {
        PVYWKScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.PVYWKScorecardTitleEditB = ^(PVYWKScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.PVYWKtimer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.PVYWKtimer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PVYWKScorecardCellTypeTimeStatistics) {
        PVYWKScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PVYWKScorecardCellTypeScoreStatistics){
    PVYWKScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.PVYWKScorecardEditB = ^(PVYWKScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.PVYWKtimer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.PVYWKtimer setFireDate:[NSDate date]];
        }
    };
    cell.PVYWKScorecardB = ^(PVYWKScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.PVYWKmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else if(viewModel.cellType == PVYWKScorecardCellTypeOperation){
        PVYWKScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.PVYWKtimer = cell.PVYWKtimer;
        __weak typeof(self) weakSelf = self;
        cell.PVYWKScorecardOperationB = ^(PVYWKScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            PVYWKScorecardViewModel *timeStatisticsDateModel = self.PVYWKviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PVYWKtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.PVYWKtimeStatisticsDate = [PVYWKUIUtilities PVYWKdateFromString:dateString formate:@"HH:mm:ss"];
                
            PVYWKScorecardViewModel *teamAModel = self.PVYWKviewDataArray[2];
            teamAModel.score = 0;
            
            PVYWKScorecardViewModel *teamBModel = self.PVYWKviewDataArray[3];
            teamBModel.score = 0;
                
            PVYWKScorecardViewModel *summaryModel = self.PVYWKviewDataArray[self.PVYWKviewDataArray.count - 2];
            [summaryModel.PVYWKBureauPointsArray removeAllObjects];
                
           [self.PVYWKscorecardModel.PVYWKBureauPointsArray removeAllObjects];
                
            [weakSelf.PVYWKmainTable reloadData];
            }else if (cell.index == 101){
            PVYWKScorecardViewModel *timeStatisticsDateModel = self.PVYWKviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PVYWKtimeStatisticsDateString = dateString;
         timeStatisticsDateModel.PVYWKtimeStatisticsDate = [PVYWKUIUtilities PVYWKdateFromString:dateString formate:@"HH:mm:ss"];
                if (cell.startOrStopType == scorecardOperationStartOrStopTypeStart) {
                    
                }else if(cell.startOrStopType == scorecardOperationStartOrStopTypeStop){
                    PVYWKBureauPointsModel *pointsModel = [[PVYWKBureauPointsModel alloc] init];
                    pointsModel.PVYWKIndex = self.PVYWKscorecardModel.PVYWKBureauPointsArray.count;
                   PVYWKScorecardViewModel *temaAModel = self.PVYWKviewDataArray[2];
                    
                    PVYWKScorecardViewModel *temaBModel = self.PVYWKviewDataArray[3];
                    
                    NSUInteger homeTemaScore = 0;
                    NSUInteger visitingTeamScore = 0;
                    if (temaAModel.teamStatusType == PVYWKScorecardHomeTeamOrVisitingTeamTypeHome && temaBModel.teamStatusType == PVYWKScorecardHomeTeamOrVisitingTeamTypeVisiting) {
                        homeTemaScore = temaAModel.score;
                        visitingTeamScore = temaBModel.score;
                    }else if (temaAModel.teamStatusType == PVYWKScorecardHomeTeamOrVisitingTeamTypeVisiting && temaBModel.teamStatusType == PVYWKScorecardHomeTeamOrVisitingTeamTypeHome){
                        homeTemaScore = temaBModel.score;
                        visitingTeamScore = temaAModel.score;
                    }
                    pointsModel.PVYWKtBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                    if (homeTemaScore > visitingTeamScore) {
                        pointsModel.whichWinType = scorecardWhichWinTypeMain;
                    }else{
                        pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                    } [self.PVYWKscorecardModel.PVYWKBureauPointsArray addObject:pointsModel];
                    PVYWKScorecardViewModel *summaryModel = self.PVYWKviewDataArray[self.PVYWKviewDataArray.count - 2];
                    summaryModel.PVYWKBureauPointsArray = [self.PVYWKscorecardModel.PVYWKBureauPointsArray mutableCopy];
                    
                    PVYWKScorecardViewModel *teamAModel = self.PVYWKviewDataArray[2];
                    teamAModel.score = 0;
                               
                    PVYWKScorecardViewModel *teamBModel = self.PVYWKviewDataArray[3];
                    teamBModel.score = 0;
                }
                if (self.PVYWKscorecardModel.PVYWKBureauPointsArray.count > 2) {
                    NSUInteger homeTeamScores = 0;
                    NSUInteger visitingTeamScored = 0;
                    for (int i = 0; i < self.PVYWKscorecardModel.PVYWKBureauPointsArray.count; i++) {
                        PVYWKBureauPointsModel *pointsModel = self.PVYWKscorecardModel.PVYWKBureauPointsArray[i];
                        if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                            homeTeamScores++;
                        }else{
                            visitingTeamScored++;
                        }
                    }
                    PVYWKScorecardViewModel *summaryModel = self.PVYWKviewDataArray[self.PVYWKviewDataArray.count - 2];
                    if (homeTeamScores > visitingTeamScored) {
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                    }else{
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                    }
                    self.PVYWKscorecardModel.totalAcoreString = summaryModel.totalAcoreString;
                    self.PVYWKscorecardModel.PVYWKteamANameScore = homeTeamScores;
                   
                    self.PVYWKscorecardModel.PVYWKteamBNameScore = visitingTeamScored;
                }
            [weakSelf.PVYWKmainTable reloadData];
                if ((self.PVYWKscorecardModel.PVYWKteamANameScore == 3) || (self.PVYWKscorecardModel.PVYWKteamBNameScore == 3)) {
                    UIAlertController *alert = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提示", nil) message:NSLocalizedString(@"胜负已分请保存", nil) preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                        
                    }];
                    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
                        [weakSelf PVYWKsave];
                    }];
                    [alert addAction:cancelAction];
                    [alert addAction:sureAction];
                    [self presentViewController:alert animated:YES completion:^{
                        
                    }];
                }
            }else if (cell.index == 102){
                PVYWKScorecardViewModel *teamAModel = self.PVYWKviewDataArray[2];
                PVYWKScorecardViewModel *teamBModel = self.PVYWKviewDataArray[3];
                [self.PVYWKviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.PVYWKviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.PVYWKmainTable reloadData];
            }else if (cell.index == 103){
               
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if(viewModel.cellType == PVYWKScorecardCellTypeSummary){
        PVYWKScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScoreSummaryTableViewCell" forIndexPath:indexPath];
        cell.PVYWKModel = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        PVYWKScorecardSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKScorecardSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.PVYWKScorecardSaveB = ^(PVYWKScorecardSaveTableViewCell * _Nonnull cell) {
            [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
            [weakSelf PVYWKsave];
            [weakSelf.PVYWKmainTable reloadData];
        };
        return cell;
    }
}
- (void)PVYWKsaveAction{
    PVYWKScorecardViewModel *titleModel = self.PVYWKviewDataArray[0];
    if (!titleModel.PVYWKnatureCompetitionString.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    PVYWKScorecardViewModel *timeStatisticsDateModel = self.PVYWKviewDataArray[1];
    if (!timeStatisticsDateModel.PVYWKtimeStatisticsDateString.length) {
           [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    PVYWKScorecardViewModel *temaModel = self.PVYWKviewDataArray[2];
    PVYWKScorecardViewModel *temaModel1 = self.PVYWKviewDataArray[3];
    PVYWKScorecardViewModel *temaAModel;
    PVYWKScorecardViewModel *temaBModel;
    if (temaModel.teamStatusType == PVYWKScorecardHomeTeamOrVisitingTeamTypeHome) {
        temaAModel = temaModel;
        temaBModel = temaModel1;
    }else{
        temaAModel = temaModel1;
        temaBModel = temaModel;
    }
    if (!temaAModel.PVYWKteamName.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    if (!temaBModel.PVYWKteamName.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    PVYWKScorecardViewModel *summaryModel = self.PVYWKviewDataArray[self.PVYWKviewDataArray.count - 2];
    if ((self.PVYWKscorecardModel.PVYWKteamANameScore < 3) && (self.PVYWKscorecardModel.PVYWKteamBNameScore < 3)) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    self.PVYWKscorecardModel.PVYWKnatureCompetition = titleModel.PVYWKnatureCompetitionString;
    self.PVYWKscorecardModel.PVYWKteamAName = temaAModel.PVYWKteamName;
    self.PVYWKscorecardModel.PVYWKteamBName = temaBModel.PVYWKteamName;
    self.PVYWKscorecardModel.PVYWKtotalTimeString = timeStatisticsDateModel.PVYWKtimeStatisticsDateString;
    NSUInteger loc = self.PVYWKscorecardModel.PVYWKteamANameScore + self.PVYWKscorecardModel.PVYWKteamBNameScore;
    [self.PVYWKscorecardModel.PVYWKBureauPointsArray removeObjectsInRange:NSMakeRange(loc, self.PVYWKscorecardModel.PVYWKBureauPointsArray.count - loc)];
    
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PVYWKUIUtilities PVYWKformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.PVYWKscorecardModel.PVYWKendTimeString = nowDateString;
    
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.PVYWKscorecardModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"PVYWKScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_PVYWKscorecardModel = nil;
            self->_PVYWKmainTable = nil;
            [self.PVYWKtimer setFireDate:[NSDate distantFuture]];
            self.PVYWKtimer = nil;
            [self PVYWKsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (void)PVYWKsave{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self PVYWKsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVYWKKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - 属性懒加载
- (PVYWKScorecardModel *)PVYWKscorecardModel{
    if (!_PVYWKscorecardModel) {
        _PVYWKscorecardModel = [[PVYWKScorecardModel alloc] init];
       _PVYWKscorecardModel.PVYWKBureauPointsArray = [[NSMutableArray alloc] init];
    }
    return _PVYWKscorecardModel;
}
- (NSMutableArray *)PVYWKviewDataArray{
    if (!_PVYWKviewDataArray) {
        _PVYWKviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PVYWKviewDataArray;
}
- (UITableView *)PVYWKmainTable{
    if (!_PVYWKmainTable) {
        _PVYWKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVYWKmainTable.backgroundColor = [UIColor cyanColor];
        _PVYWKmainTable.delegate = self;
        _PVYWKmainTable.dataSource = self;
        _PVYWKmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVYWKmainTable.estimatedRowHeight = 55.0f;
        _PVYWKmainTable.tableHeaderView = [[UIView alloc] init];
        _PVYWKmainTable.tableFooterView = [[UIView alloc] init];
        [_PVYWKmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_PVYWKmainTable registerClass:[PVYWKScorecardTitleTableViewCell class] forCellReuseIdentifier:@"PVYWKScorecardTitleTableViewCell"];
        [_PVYWKmainTable registerClass:[PVYWKScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"PVYWKScorecardTimeStatisticsTableViewCell"];
        [_PVYWKmainTable registerClass:[PVYWKScorecardTableViewCell class] forCellReuseIdentifier:@"PVYWKScorecardTableViewCell"];
        [_PVYWKmainTable registerClass:[PVYWKScorecardOperationTableViewCell class] forCellReuseIdentifier:@"PVYWKScorecardOperationTableViewCell"];
        [_PVYWKmainTable registerClass:[PVYWKScorecardSaveTableViewCell class] forCellReuseIdentifier:@"PVYWKScorecardSaveTableViewCell"];
        [_PVYWKmainTable registerClass:[PVYWKScoreSummaryTableViewCell class] forCellReuseIdentifier:@"PVYWKScoreSummaryTableViewCell"];
        [self.view addSubview:_PVYWKmainTable];
        [_PVYWKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PVYWKHeightTabBar);
        }];
    }
    return _PVYWKmainTable;
}
@end
