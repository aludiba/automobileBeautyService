//
//  CAScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CAScorecardViewController.h"
#import <SafariServices/SafariServices.h>
#import "CALoginViewController.h"
#import "CABothTeamsTableViewCell.h"
#import "CAScoringPartTableViewCell.h"
#import "CATimePortionTableViewCell.h"
#import "CAScoreSummaryTableViewCell.h"
#import "CAScoringSaveTableViewCell.h"
#import "CAScorecardModel.h"
#import "CAScorecardViewModel.h"
@interface CAScorecardViewController ()<UITableViewDelegate,UITableViewDataSource,SFSafariViewControllerDelegate>
@property(nonatomic, strong)CAScorecardModel *CAScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *CAviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *CAmainTable;//数据列表
@property (nonatomic,strong )NSTimer *CAtimer;//定时器
@property (nonatomic, assign)Boolean isBack;
@end

@implementation CAScorecardViewController
+ (CAScorecardViewController *)shareInstance{
    static CAScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CAScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self CASetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *URL = @"http://mock-api.com/jz89Geg4.mock/BInstantVolleyballScore";
    [CANDHTTPClient CAgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (!self.isBack) {
            if (data) {
                [MBProgressHUD CAshowReminderText:@"Welcome to our app"];
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *CAVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                CAVC.delegate = self;
                [self presentViewController:CAVC animated:YES completion:nil];
            }else{
                
            }
        }
    }withErrorBlock:^(NSError *error, id errorData) {
    
    }];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    self.isBack = NO;
}
- (void)CASetContentView{
    self.view.backgroundColor = [UIColor greenColor];
    [self.CAviewDataArray removeAllObjects];
    CAScorecardViewModel *CABothTeamsModel = [[CAScorecardViewModel alloc] init];
    CABothTeamsModel.cellType = CAScorecardCellTypeBothTeams;
    CABothTeamsModel.CAbureauString = self.CAScoreModel.CAbureauString;
    CABothTeamsModel.CATeamRightName = self.CAScoreModel.CATeamRightName;
    CABothTeamsModel.CATeamLeftName = self.CAScoreModel.CATeamLeftName;
    [self.CAviewDataArray addObject:CABothTeamsModel];
    
    CAScorecardViewModel *CAScoringPartModel = [[CAScorecardViewModel alloc] init];
    CAScoringPartModel.cellType = CAScorecardCellTypeScoringPart;
    CAScoringPartModel.CARightscore = 0;
    CAScoringPartModel.CALeftscore = 0;
    CAScoringPartModel.CAIndexTime = 0;
    [self.CAviewDataArray addObject:CAScoringPartModel];
    
    CAScorecardViewModel *CATimePortionModel = [[CAScorecardViewModel alloc] init];
    CATimePortionModel.cellType = CAScorecardCellTypeTimePortion;
    CATimePortionModel.CATimeStatisticsDateString = self.CAScoreModel.CATotalTimeString;
    [self.CAviewDataArray addObject:CATimePortionModel];
    
    CAScorecardViewModel *CASummaryModel = [[CAScorecardViewModel alloc] init];
    CASummaryModel.cellType = CAScorecardCellTypeSummary;
    CASummaryModel.CABureauPointsArray = [self.CAScoreModel.CABureauPointsArray mutableCopy];
    [self.CAviewDataArray addObject:CASummaryModel];

    CAScorecardViewModel *CAScoringSaveModel = [[CAScorecardViewModel alloc] init];
    CAScoringSaveModel.cellType = CAScorecardCellTypeSave;
    [self.CAviewDataArray addObject:CAScoringSaveModel];
    
    [self.CAmainTable reloadData];
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
- (void)CACloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)CAsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self CAsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CALoginViewController *loginVC = [CALoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)CAsaveAction{
    CAScorecardViewModel *summaryModel = self.CAviewDataArray[self.CAviewDataArray.count - 2];
    if ((self.CAScoreModel.CATeamRightScore < 3) && (self.CAScoreModel.CATeamLeftScore < 3)) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    
    CAScorecardViewModel *viewModel = self.CAviewDataArray[0];
    self.CAScoreModel.CATeamRightName = viewModel.CATeamRightName;
    self.CAScoreModel.CATeamLeftName = viewModel.CATeamLeftName;
    
    NSArray *array = [self.CAScoreModel.totalAcoreString componentsSeparatedByString:@" "];
    NSString *scoreString = array[0];
    NSArray *array1 = [scoreString componentsSeparatedByString:@"-"];
    self.CAScoreModel.CATeamRightScore = [array1[0] integerValue];
    self.CAScoreModel.CATeamLeftScore = [array1[1] integerValue];
    
        
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CAUIUtilities CAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.CAScoreModel.CAEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.CAScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"CAScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_CAScoreModel = nil;
            self->_CAmainTable = nil;
            [self.CAtimer setFireDate:[NSDate distantFuture]];
            self.CAtimer = nil;
            [self CASetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)CAsave{
    CAScorecardViewModel *viewModel2 = self.CAviewDataArray[2];
       if (!viewModel2.CATimeStatisticsDate){
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    CAScorecardViewModel *viewModel = self.CAviewDataArray[0];
    if (!viewModel.CATeamRightName.length || !viewModel.CATeamLeftName.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.CAScoreModel.CANatureCompetition.length) {
        [self CAsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.CAScoreModel.CANatureCompetition.length) {
            [self CAsaveLoginJudge];
        }else{
            [self CAsave];
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
    self.CAScoreModel.CANatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.CAScoreModel.CANatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.CAScoreModel.CANatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CAScorecardViewModel *CAViewModel = self.CAviewDataArray[indexPath.row];
    if (CAViewModel.cellType == CAScorecardCellTypeBothTeams) {
        CABothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CABothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CAModel = CAViewModel;
        cell.CAScoreModel = self.CAScoreModel;
        return cell;
    }else if (CAViewModel.cellType == CAScorecardCellTypeScoringPart){
        CAScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CAModel = CAViewModel;
        return cell;
    }else if (CAViewModel.cellType == CAScorecardCellTypeTimePortion){
        CATimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CATimePortionTableViewCell" forIndexPath:indexPath];
        cell.CAScoreModel = self.CAScoreModel;
        self.CAtimer = cell.CATimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CAScorecardTimingB = ^(CATimePortionTableViewCell * _Nonnull cell) {
            if (cell.CAIndex == 0) {
                self.CAScoreModel.CANatureCompetition = @"";
//                self.CAScoreModel.CATeamRightName = @"";//右边队伍名称
                self.CAScoreModel.CATeamRightScore = 0;//右边队伍得分
//                self.CAScoreModel.CATeamLeftName = @"";//左边队伍名称
                self.CAScoreModel.CATeamLeftScore = 0;//左边队伍得分
//                self.CAScoreModel.CATotalTimeString = @"";//总共用时
//                self.CAScoreModel.CAEndTimeString = @"";//结束时
                [weakSelf CASetContentView];
            }else{
                CABureauPointsModel *pointsModel = [[CABureauPointsModel alloc] init];
            [self.CAScoreModel.CABureauPointsArray addObject:pointsModel];
                pointsModel.CAIndex = self.CAScoreModel.CABureauPointsArray.count - 1;
                
                CAScorecardViewModel *temaModel = self.CAviewDataArray[1];
                
                NSUInteger homeTemaScore = 0;//主队得分
                NSUInteger visitingTeamScore = 0;//客队得分
                
                homeTemaScore = temaModel.CARightscore;
                visitingTeamScore = temaModel.CALeftscore;
                pointsModel.CAtBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                if (homeTemaScore > visitingTeamScore) {
                    pointsModel.whichWinType = scorecardWhichWinTypeMain;
                }else{
                    pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                }
                
                CAScorecardViewModel *summaryModel = self.CAviewDataArray[self.CAviewDataArray.count - 2];
                summaryModel.CABureauPointsArray = [self.CAScoreModel.CABureauPointsArray mutableCopy];
                
                if (self.CAScoreModel.CABureauPointsArray.count > 2) {
                    NSUInteger homeTeamScores = 0;
                    NSUInteger visitingTeamScored = 0;
                    for (int i = 0; i < self.CAScoreModel.CABureauPointsArray.count; i++) {
                        CABureauPointsModel *pointsModel = self.CAScoreModel.CABureauPointsArray[i];
                        if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                            homeTeamScores++;
                        }else{
                            visitingTeamScored++;
                        }
                    }
                    CAScorecardViewModel *summaryModel = self.CAviewDataArray[self.CAviewDataArray.count - 2];
                    if (homeTeamScores > visitingTeamScored) {
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                    }else{
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                    }
                    self.CAScoreModel.totalAcoreString = summaryModel.totalAcoreString;
                    self.CAScoreModel.CATeamRightScore = homeTeamScores;
                   
                    self.CAScoreModel.CATeamLeftScore = visitingTeamScored;
                }
                self.CAScoreModel.CAbureauString = [NSString stringWithFormat:@"No.%ld",pointsModel.CAIndex + 2];
                [weakSelf.CAmainTable reloadData];
              if ((self.CAScoreModel.CATeamRightScore == 3) || (self.CAScoreModel.CATeamLeftScore == 3)) {
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"胜负已分!是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf CAsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
            }
        };
        cell.CAModel = CAViewModel;
        return cell;
    }else if (CAViewModel.cellType == CAScorecardCellTypeSummary){
        CAScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAScoreSummaryTableViewCell" forIndexPath:indexPath];
        cell.CAModel = CAViewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        CAScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CAScorecardSaveB = ^(CAScoringSaveTableViewCell * _Nonnull cell) {
            [self.CAtimer setFireDate:[NSDate distantFuture]];
            [weakSelf CAsave];
        };
        cell.CAModel = CAViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (CAScorecardModel *)CAScoreModel{
    if (!_CAScoreModel) {
        _CAScoreModel = [[CAScorecardModel alloc] init];
        _CAScoreModel.CAbureauString = @"No.1";
        _CAScoreModel.CATeamRightName = @"";
        _CAScoreModel.CATeamLeftName = @"";
        _CAScoreModel.CABureauPointsArray = [[NSMutableArray alloc] init];
        _CAScoreModel.CATotalTimeString = @"00:00";
    }
    return _CAScoreModel;
}
- (NSMutableArray *)CAviewDataArray{
    if (!_CAviewDataArray) {
        _CAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CAviewDataArray;
}
- (UITableView *)CAmainTable{
    if (!_CAmainTable) {
        _CAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CAmainTable.backgroundColor = [UIColor systemGreenColor];
        _CAmainTable.showsVerticalScrollIndicator = NO;
        _CAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CAmainTable.delegate = self;
        _CAmainTable.dataSource = self;
        _CAmainTable.rowHeight = UITableViewAutomaticDimension;
        _CAmainTable.estimatedRowHeight = 55.0f;
        _CAmainTable.tableHeaderView = [[UIView alloc] init];
        _CAmainTable.tableFooterView = [[UIView alloc] init];
        _CAmainTable.layer.cornerRadius = 8.0f;
        _CAmainTable.layer.masksToBounds = YES;
        [_CAmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_CAmainTable registerClass:[CABothTeamsTableViewCell class] forCellReuseIdentifier:@"CABothTeamsTableViewCell"];
        [_CAmainTable registerClass:[CAScoringPartTableViewCell class] forCellReuseIdentifier:@"CAScoringPartTableViewCell"];
        [_CAmainTable registerClass:[CATimePortionTableViewCell class] forCellReuseIdentifier:@"CATimePortionTableViewCell"];
        [_CAmainTable registerClass:[CAScoreSummaryTableViewCell class] forCellReuseIdentifier:@"CAScoreSummaryTableViewCell"];
        [_CAmainTable registerClass:[CAScoringSaveTableViewCell class] forCellReuseIdentifier:@"CAScoringSaveTableViewCell"];
        [self.view addSubview:_CAmainTable];
        [_CAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(25);
            make.leading.equalTo(self.view).offset(10);
            make.trailing.equalTo(self.view).offset(-10);
            make.bottom.equalTo(self.view).offset(-CAHeightTabBar - 25);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(CACloseKeyBoard)];
        [_CAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _CAmainTable;
}
@end
