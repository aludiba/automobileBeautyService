//
//  ABScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABScorecardViewController.h"
#import <SafariServices/SafariServices.h>
#import "ABLoginViewController.h"
#import "ABBothTeamsTableViewCell.h"
#import "ABScoringPartTableViewCell.h"
#import "ABTimePortionTableViewCell.h"
#import "ABScoreSummaryTableViewCell.h"
#import "ABScoringSaveTableViewCell.h"
#import "ABScorecardModel.h"
#import "ABScorecardViewModel.h"
@interface ABScorecardViewController ()<UITableViewDelegate,UITableViewDataSource,SFSafariViewControllerDelegate>
@property(nonatomic, strong)ABScorecardModel *ABScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *ABviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *ABmainTable;//数据列表
@property (nonatomic,strong )NSTimer *ABtimer;//定时器
@property (nonatomic, assign)Boolean isBack;
@end

@implementation ABScorecardViewController
+ (ABScorecardViewController *)shareInstance{
    static ABScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ABScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self ABSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *URL = @"http://mock-api.com/jz89Geg4.mock/BInstantVolleyballScore";
    [ABNDHTTPClient ABgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (!self.isBack) {
            if (data) {
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *VC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                VC.delegate = self;
               // 建议
                [self presentViewController:VC animated:YES completion:nil];
            }
        }
    }withErrorBlock:^(NSError *error, id errorData) {
    
    }];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    self.isBack = NO;
}
- (void)ABSetContentView{
    self.view.backgroundColor = [UIColor systemGreenColor];
    [self.ABviewDataArray removeAllObjects];
    ABScorecardViewModel *ABBothTeamsModel = [[ABScorecardViewModel alloc] init];
    ABBothTeamsModel.cellType = ABScorecardCellTypeBothTeams;
    ABBothTeamsModel.ABbureauString = self.ABScoreModel.ABbureauString;
    ABBothTeamsModel.ABTeamRightName = self.ABScoreModel.ABTeamRightName;
    ABBothTeamsModel.ABTeamLeftName = self.ABScoreModel.ABTeamLeftName;
    [self.ABviewDataArray addObject:ABBothTeamsModel];
    
    ABScorecardViewModel *ABScoringPartModel = [[ABScorecardViewModel alloc] init];
    ABScoringPartModel.cellType = ABScorecardCellTypeScoringPart;
    ABScoringPartModel.ABRightscore = 0;
    ABScoringPartModel.ABLeftscore = 0;
    ABScoringPartModel.ABIndexTime = 0;
    [self.ABviewDataArray addObject:ABScoringPartModel];
    
    ABScorecardViewModel *ABTimePortionModel = [[ABScorecardViewModel alloc] init];
    ABTimePortionModel.cellType = ABScorecardCellTypeTimePortion;
    ABTimePortionModel.ABTimeStatisticsDateString = self.ABScoreModel.ABTotalTimeString;
    [self.ABviewDataArray addObject:ABTimePortionModel];
    
    ABScorecardViewModel *ABSummaryModel = [[ABScorecardViewModel alloc] init];
    ABSummaryModel.cellType = ABScorecardCellTypeSummary;
    ABSummaryModel.ABBureauPointsArray = [self.ABScoreModel.ABBureauPointsArray mutableCopy];
    [self.ABviewDataArray addObject:ABSummaryModel];

    ABScorecardViewModel *ABScoringSaveModel = [[ABScorecardViewModel alloc] init];
    ABScoringSaveModel.cellType = ABScorecardCellTypeSave;
    [self.ABviewDataArray addObject:ABScoringSaveModel];
    
    [self.ABmainTable reloadData];
}
#pragma mark - actions
#pragma mark - SFSafariViewControllerDelegate
//加载完成
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    
}
//点击左上角的done
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    self.isBack = YES;
}
#pragma mark - 关闭键盘
- (void)ABCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)ABsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self ABsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ABKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)ABsaveAction{
    ABScorecardViewModel *summaryModel = self.ABviewDataArray[self.ABviewDataArray.count - 2];
    if ((self.ABScoreModel.ABTeamRightScore < 3) && (self.ABScoreModel.ABTeamLeftScore < 3)) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    
    ABScorecardViewModel *viewModel = self.ABviewDataArray[0];
    self.ABScoreModel.ABTeamRightName = viewModel.ABTeamRightName;
    self.ABScoreModel.ABTeamLeftName = viewModel.ABTeamLeftName;
    
    NSArray *array = [self.ABScoreModel.totalAcoreString componentsSeparatedByString:@" "];
    NSString *scoreString = array[0];
    NSArray *array1 = [scoreString componentsSeparatedByString:@"-"];
    self.ABScoreModel.ABTeamRightScore = [array1[0] integerValue];
    self.ABScoreModel.ABTeamLeftScore = [array1[1] integerValue];
    
        
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [ABUIUtilities ABformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.ABScoreModel.ABEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.ABScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"ABScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_ABScoreModel = nil;
            self->_ABmainTable = nil;
            [self.ABtimer setFireDate:[NSDate distantFuture]];
            self.ABtimer = nil;
            [self ABSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)ABsave{
    ABScorecardViewModel *viewModel2 = self.ABviewDataArray[2];
       if (!viewModel2.ABTimeStatisticsDate){
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    ABScorecardViewModel *viewModel = self.ABviewDataArray[0];
    if (!viewModel.ABTeamRightName.length || !viewModel.ABTeamLeftName.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.ABScoreModel.ABNatureCompetition.length) {
        [self ABsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.ABScoreModel.ABNatureCompetition.length) {
            [self ABsaveLoginJudge];
        }else{
            [self ABsave];
        }
    }]];
    __weak typeof(self) weakSelf = self;
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField) {
         textField.placeholder = NSLocalizedString(@"请输入比赛名称", nil);
         textField.delegate = weakSelf;
    }];
    [self presentViewController:alertController animated:YES completion:nil];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.ABScoreModel.ABNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.ABScoreModel.ABNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.ABScoreModel.ABNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ABviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABScorecardViewModel *ABViewModel = self.ABviewDataArray[indexPath.row];
    if (ABViewModel.cellType == ABScorecardCellTypeBothTeams) {
        ABBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ABModel = ABViewModel;
        cell.ABScoreModel = self.ABScoreModel;
        return cell;
    }else if (ABViewModel.cellType == ABScorecardCellTypeScoringPart){
        ABScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ABModel = ABViewModel;
        return cell;
    }else if (ABViewModel.cellType == ABScorecardCellTypeTimePortion){
        ABTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABTimePortionTableViewCell" forIndexPath:indexPath];
        cell.ABScoreModel = self.ABScoreModel;
        self.ABtimer = cell.ABTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ABScorecardTimingB = ^(ABTimePortionTableViewCell * _Nonnull cell) {
            if (cell.ABIndex == 0) {
                self.ABScoreModel.ABNatureCompetition = @"";
//                self.ABScoreModel.ABTeamRightName = @"";//右边队伍名称
                self.ABScoreModel.ABTeamRightScore = 0;//右边队伍得分
//                self.ABScoreModel.ABTeamLeftName = @"";//左边队伍名称
                self.ABScoreModel.ABTeamLeftScore = 0;//左边队伍得分
//                self.ABScoreModel.ABTotalTimeString = @"";//总共用时
//                self.ABScoreModel.ABEndTimeString = @"";//结束时
                [weakSelf ABSetContentView];
            }else{
                ABBureauPointsModel *pointsModel = [[ABBureauPointsModel alloc] init];
            [self.ABScoreModel.ABBureauPointsArray addObject:pointsModel];
                pointsModel.ABIndex = self.ABScoreModel.ABBureauPointsArray.count - 1;
                
                ABScorecardViewModel *temaModel = self.ABviewDataArray[1];
                
                NSUInteger homeTemaScore = 0;//主队得分
                NSUInteger visitingTeamScore = 0;//客队得分
                
                homeTemaScore = temaModel.ABRightscore;
                visitingTeamScore = temaModel.ABLeftscore;
                pointsModel.ABtBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                if (homeTemaScore > visitingTeamScore) {
                    pointsModel.whichWinType = scorecardWhichWinTypeMain;
                }else{
                    pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                }
                
                ABScorecardViewModel *summaryModel = self.ABviewDataArray[self.ABviewDataArray.count - 2];
                summaryModel.ABBureauPointsArray = [self.ABScoreModel.ABBureauPointsArray mutableCopy];
                
                if (self.ABScoreModel.ABBureauPointsArray.count > 2) {
                    NSUInteger homeTeamScores = 0;
                    NSUInteger visitingTeamScored = 0;
                    for (int i = 0; i < self.ABScoreModel.ABBureauPointsArray.count; i++) {
                        ABBureauPointsModel *pointsModel = self.ABScoreModel.ABBureauPointsArray[i];
                        if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                            homeTeamScores++;
                        }else{
                            visitingTeamScored++;
                        }
                    }
                    ABScorecardViewModel *summaryModel = self.ABviewDataArray[self.ABviewDataArray.count - 2];
                    if (homeTeamScores > visitingTeamScored) {
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                    }else{
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                    }
                    self.ABScoreModel.totalAcoreString = summaryModel.totalAcoreString;
                    self.ABScoreModel.ABTeamRightScore = homeTeamScores;
                   
                    self.ABScoreModel.ABTeamLeftScore = visitingTeamScored;
                }
                self.ABScoreModel.ABbureauString = [NSString stringWithFormat:@"No.%ld",pointsModel.ABIndex + 2];
                [weakSelf.ABmainTable reloadData];
              if ((self.ABScoreModel.ABTeamRightScore == 3) || (self.ABScoreModel.ABTeamLeftScore == 3)) {
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"胜负已分!是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf ABsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
            }
        };
        cell.ABModel = ABViewModel;
        return cell;
    }else if (ABViewModel.cellType == ABScorecardCellTypeSummary){
        ABScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABScoreSummaryTableViewCell" forIndexPath:indexPath];
        cell.ABModel = ABViewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        ABScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ABScorecardSaveB = ^(ABScoringSaveTableViewCell * _Nonnull cell) {
            [self.ABtimer setFireDate:[NSDate distantFuture]];
            [weakSelf ABsave];
        };
        cell.ABModel = ABViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (ABScorecardModel *)ABScoreModel{
    if (!_ABScoreModel) {
        _ABScoreModel = [[ABScorecardModel alloc] init];
        _ABScoreModel.ABbureauString = @"No.1";
        _ABScoreModel.ABTeamRightName = @"";
        _ABScoreModel.ABTeamLeftName = @"";
        _ABScoreModel.ABBureauPointsArray = [[NSMutableArray alloc] init];
        _ABScoreModel.ABTotalTimeString = @"00:00";
    }
    return _ABScoreModel;
}
- (NSMutableArray *)ABviewDataArray{
    if (!_ABviewDataArray) {
        _ABviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ABviewDataArray;
}
- (UITableView *)ABmainTable{
    if (!_ABmainTable) {
        _ABmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ABmainTable.backgroundColor = [UIColor cyanColor];
        _ABmainTable.showsVerticalScrollIndicator = NO;
        _ABmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ABmainTable.delegate = self;
        _ABmainTable.dataSource = self;
        _ABmainTable.rowHeight = UITableViewAutomaticDimension;
        _ABmainTable.estimatedRowHeight = 55.0f;
        _ABmainTable.tableHeaderView = [[UIView alloc] init];
        _ABmainTable.tableFooterView = [[UIView alloc] init];
        _ABmainTable.layer.cornerRadius = 8.0f;
        _ABmainTable.layer.masksToBounds = YES;
        [_ABmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_ABmainTable registerClass:[ABBothTeamsTableViewCell class] forCellReuseIdentifier:@"ABBothTeamsTableViewCell"];
        [_ABmainTable registerClass:[ABScoringPartTableViewCell class] forCellReuseIdentifier:@"ABScoringPartTableViewCell"];
        [_ABmainTable registerClass:[ABTimePortionTableViewCell class] forCellReuseIdentifier:@"ABTimePortionTableViewCell"];
        [_ABmainTable registerClass:[ABScoreSummaryTableViewCell class] forCellReuseIdentifier:@"ABScoreSummaryTableViewCell"];
        [_ABmainTable registerClass:[ABScoringSaveTableViewCell class] forCellReuseIdentifier:@"ABScoringSaveTableViewCell"];
        [self.view addSubview:_ABmainTable];
        [_ABmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(10);
            make.leading.equalTo(self.view).offset(10);
            make.trailing.equalTo(self.view).offset(-10);
            make.bottom.equalTo(self.view).offset(-ABHeightTabBar - 10);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ABCloseKeyBoard)];
        [_ABmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _ABmainTable;
}
@end
