//
//  PFScorecardViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFScorecardViewController.h"
#import "PFScorecardModel.h"
#import "PFScorecardViewModel.h"
#import "PFScorecardTitleTableViewCell.h"
#import "PFScorecardTimeStatisticsTableViewCell.h"
#import "PFScorecardTableViewCell.h"
#import "PFScorecardOperationTableViewCell.h"
@interface PFScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)PFScorecardModel *PFscorecardModel;//数据模型
@property(nonatomic, strong)NSMutableArray *PFviewDataArray;
@property(nonatomic, strong)UITableView *PFmainTable;
@property (nonatomic,strong )NSTimer *PFtimer;//定时器
@end

@implementation PFScorecardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PFsetContentView];
}
- (void)PFsetContentView{
    [self.PFviewDataArray removeAllObjects];
    PFScorecardViewModel *titleModel = [[PFScorecardViewModel alloc] init];
    titleModel.cellType = PFScorecardCellTypeTitle;
    titleModel.PFnatureCompetitionString = NSLocalizedString(@"例如：友谊比赛第一场", nil);
    [self.PFviewDataArray addObject:titleModel];
    
    PFScorecardViewModel *timeStatisticsDateModel = [[PFScorecardViewModel alloc] init];
    timeStatisticsDateModel.cellType = PFScorecardCellTypeTimeStatistics;
    timeStatisticsDateModel.PFtimeStatisticsDateString = @"00:00:00";
    NSDate *timeStatisticsDate = [PFUIUtilities PFdateFromString:timeStatisticsDateModel.PFtimeStatisticsDateString formate:@"HH:mm:ss"];
    timeStatisticsDateModel.PFtimeStatisticsDate = timeStatisticsDate;
    [self.PFviewDataArray addObject:timeStatisticsDateModel];
    
    PFScorecardViewModel *teamAModel = [[PFScorecardViewModel alloc] init];
    teamAModel.PFteamName = @"TeamA";
    teamAModel.cellType = PFScorecardCellTypeScoreStatistics;
    [self.PFviewDataArray addObject:teamAModel];
    
    PFScorecardViewModel *teamBModel = [[PFScorecardViewModel alloc] init];
    teamBModel.PFteamName = @"TeamB";
    teamBModel.cellType = PFScorecardCellTypeScoreStatistics;
    [self.PFviewDataArray addObject:teamBModel];
    
    PFScorecardViewModel *operationModel = [[PFScorecardViewModel alloc] init];
    operationModel.cellType = PFScorecardCellTypeOperation;
    [self.PFviewDataArray addObject:operationModel];
    
    [self.PFmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PFScorecardViewModel *viewModel = self.PFviewDataArray[indexPath.row];
    if (viewModel.cellType == PFScorecardCellTypeTitle) {
        PFScorecardTitleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFScorecardTitleTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.PFScorecardTitleEditB = ^(PFScorecardTitleTableViewCell * _Nonnull cell) {
            if (cell.type == 0) {
                [weakSelf.PFtimer setFireDate:[NSDate distantFuture]];
            }else{
                [weakSelf.PFtimer setFireDate:[NSDate date]];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PFScorecardCellTypeTimeStatistics) {
        PFScorecardTimeStatisticsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFScorecardTimeStatisticsTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.cellType == PFScorecardCellTypeScoreStatistics){
    PFScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    __weak typeof(self) weakSelf = self;
    cell.PFScorecardEditB = ^(PFScorecardTableViewCell * _Nonnull cell) {
        if (cell.type == 0) {
            [weakSelf.PFtimer setFireDate:[NSDate distantFuture]];
        }else{
            [weakSelf.PFtimer setFireDate:[NSDate date]];
        }
    };
    cell.PFScorecardB = ^(PFScorecardTableViewCell * _Nonnull cell) {
        [weakSelf.PFmainTable reloadData];
    };
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    }else{
        PFScorecardOperationTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFScorecardOperationTableViewCell" forIndexPath:indexPath];
        self.PFtimer = cell.PFtimer;
        __weak typeof(self) weakSelf = self;
        cell.PFScorecardOperationB = ^(PFScorecardOperationTableViewCell * _Nonnull cell) {
            if (cell.index == 100) {
            PFScorecardViewModel *timeStatisticsDateModel = self.PFviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PFtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.PFtimeStatisticsDate = [PFUIUtilities PFdateFromString:dateString formate:@"HH:mm:ss"];
                
            PFScorecardViewModel *teamAModel = self.PFviewDataArray[2];
            teamAModel.score = 0;
            
            PFScorecardViewModel *teamBModel = self.PFviewDataArray[3];
            teamBModel.score = 0;
                
            [weakSelf.PFmainTable reloadData];
            }else if (cell.index == 101){
            PFScorecardViewModel *timeStatisticsDateModel = self.PFviewDataArray[1];
            NSString *dateString = [NSString stringWithFormat:@"%.2d:%.2d:%.2d",cell.hours,cell.minutes,cell.seconds];
        timeStatisticsDateModel.PFtimeStatisticsDateString = dateString;
            timeStatisticsDateModel.PFtimeStatisticsDate = [PFUIUtilities PFdateFromString:dateString formate:@"HH:mm:ss"];
            [weakSelf.PFmainTable reloadData];
            }else if (cell.index == 102){
                PFScorecardViewModel *teamAModel = self.PFviewDataArray[2];
                PFScorecardViewModel *teamBModel = self.PFviewDataArray[3];
                [self.PFviewDataArray replaceObjectAtIndex:2 withObject:teamBModel];
                [self.PFviewDataArray replaceObjectAtIndex:3 withObject:teamAModel];
                [weakSelf.PFmainTable reloadData];
            }else if (cell.index == 103){
                [cell.PFStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
                [cell.PFtimer setFireDate:[NSDate distantFuture]];
                [weakSelf PFsave];
                [weakSelf.PFmainTable reloadData];
            }
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)PFsave{
    PFScorecardViewModel *titleModel = self.PFviewDataArray[0];
    if (!titleModel.PFnatureCompetitionString.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入比赛性质", nil)];
        return;
    }
    PFScorecardViewModel *timeStatisticsDateModel = self.PFviewDataArray[1];
    if (!timeStatisticsDateModel.PFtimeStatisticsDateString.length) {
           [MBProgressHUD PFshowReminderText:NSLocalizedString(@"比赛时长不能为空", nil)];
           return;
       }
    PFScorecardViewModel *temaAModel = self.PFviewDataArray[2];
    if (!temaAModel.PFteamName.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入A队名称", nil)];
        return;
    }
    PFScorecardViewModel *temaBModel = self.PFviewDataArray[3];
    if (!temaBModel.PFteamName.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入B队名称", nil)];
        return;
    }
    self.PFscorecardModel.PFnatureCompetition = titleModel.PFnatureCompetitionString;
    self.PFscorecardModel.PFteamAName = temaAModel.PFteamName;
    self.PFscorecardModel.PFteamANameScore = temaAModel.score;
    self.PFscorecardModel.PFteamBName = temaBModel.PFteamName;
    self.PFscorecardModel.PFteamBNameScore = temaBModel.score;
    self.PFscorecardModel.PFtotalTimeString = timeStatisticsDateModel.PFtimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [PFUIUtilities PFformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.PFscorecardModel.PFendTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.PFscorecardModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"PFScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_PFscorecardModel = nil;
            self->_PFmainTable = nil;
            [self.PFtimer setFireDate:[NSDate distantFuture]];
            self.PFtimer = nil;
            [self PFsetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 属性懒加载
- (PFScorecardModel *)PFscorecardModel{
    if (!_PFscorecardModel) {
        _PFscorecardModel = [[PFScorecardModel alloc] init];
    }
    return _PFscorecardModel;
}
- (NSMutableArray *)PFviewDataArray{
    if (!_PFviewDataArray) {
        _PFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PFviewDataArray;
}
- (UITableView *)PFmainTable{
    if (!_PFmainTable) {
        _PFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PFmainTable.delegate = self;
        _PFmainTable.dataSource = self;
        _PFmainTable.rowHeight = UITableViewAutomaticDimension;
        _PFmainTable.estimatedRowHeight = 55.0f;
        _PFmainTable.tableHeaderView = [[UIView alloc] init];
        _PFmainTable.tableFooterView = [[UIView alloc] init];
        [_PFmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_PFmainTable registerClass:[PFScorecardTitleTableViewCell class] forCellReuseIdentifier:@"PFScorecardTitleTableViewCell"];
        [_PFmainTable registerClass:[PFScorecardTimeStatisticsTableViewCell class] forCellReuseIdentifier:@"PFScorecardTimeStatisticsTableViewCell"];
        [_PFmainTable registerClass:[PFScorecardTableViewCell class] forCellReuseIdentifier:@"PFScorecardTableViewCell"];
        [_PFmainTable registerClass:[PFScorecardOperationTableViewCell class] forCellReuseIdentifier:@"PFScorecardOperationTableViewCell"];
        [self.view addSubview:_PFmainTable];
        [_PFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PFHeightTabBar);
        }];
    }
    return _PFmainTable;
}
@end
