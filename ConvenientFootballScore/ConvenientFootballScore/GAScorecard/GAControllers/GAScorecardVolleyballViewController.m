//
//  GAScorecardVolleyballViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "GAScorecardVolleyballViewController.h"
#import "GALoginViewController.h"
#import "GAVolleyballBothTeamsTableViewCell.h"
#import "GAVolleyballScoringPartTableViewCell.h"
#import "GAVolleyballTimePortionTableViewCell.h"
#import "GAVolleyballScoreSummaryTableViewCell.h"
#import "GAVolleyballScoringSaveTableViewCell.h"
#import "GAVolleyballScorecardModel.h"
#import "GAVolleyballScorecardViewModel.h"
@interface GAScorecardVolleyballViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)GAVolleyballScorecardModel *GAScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *GAmainTable;//数据列表
@property (nonatomic,strong )NSTimer *GAtimer;//定时器
@end

@implementation GAScorecardVolleyballViewController
+ (GAScorecardVolleyballViewController *)shareInstance{
    static GAScorecardVolleyballViewController  *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GAScorecardVolleyballViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemGreenColor];
    [self GASetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)GASetContentView{
    [self.GAviewDataArray removeAllObjects];
    self.view.backgroundColor = [UIColor clearColor];
    [self.GAviewDataArray removeAllObjects];
    GAVolleyballScorecardViewModel *GABothTeamsModel = [[GAVolleyballScorecardViewModel alloc] init];
    GABothTeamsModel.cellType = GAScorecardCellTypeBothTeams;
    GABothTeamsModel.GAbureauString = self.GAScoreModel.GAbureauString;
    GABothTeamsModel.GATeamRightName = self.GAScoreModel.GATeamRightName;
    GABothTeamsModel.GATeamLeftName = self.GAScoreModel.GATeamLeftName;
    [self.GAviewDataArray addObject:GABothTeamsModel];
    
    GAVolleyballScorecardViewModel *GAScoringPartModel = [[GAVolleyballScorecardViewModel alloc] init];
    GAScoringPartModel.cellType = GAScorecardCellTypeScoringPart;
    GAScoringPartModel.GARightscore = 0;
    GAScoringPartModel.GALeftscore = 0;
    GAScoringPartModel.GAIndexTime = 0;
    [self.GAviewDataArray addObject:GAScoringPartModel];
    
    GAVolleyballScorecardViewModel *GATimePortionModel = [[GAVolleyballScorecardViewModel alloc] init];
    GATimePortionModel.cellType = GAScorecardCellTypeTimePortion;
    GATimePortionModel.GATimeStatisticsDateString = self.GAScoreModel.GATotalTimeString;
    [self.GAviewDataArray addObject:GATimePortionModel];
    
    GAVolleyballScorecardViewModel *GASummaryModel = [[GAVolleyballScorecardViewModel alloc] init];
    GASummaryModel.cellType = GAScorecardCellTypeSummary;
    GASummaryModel.GABureauPointsArray = [self.GAScoreModel.GABureauPointsArray mutableCopy];
    [self.GAviewDataArray addObject:GASummaryModel];

    GAVolleyballScorecardViewModel *GAScoringSaveModel = [[GAVolleyballScorecardViewModel alloc] init];
    GAScoringSaveModel.cellType = GAScorecardCellTypeSave;
    [self.GAviewDataArray addObject:GAScoringSaveModel];
    
    [self.GAmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)GACloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)GAsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self GAsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            GALoginViewController *loginVC = [GALoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)GAsaveAction{
    GAVolleyballScorecardViewModel *summaryModel = self.GAviewDataArray[self.GAviewDataArray.count - 2];
    if ((self.GAScoreModel.GATeamRightScore < 3) && (self.GAScoreModel.GATeamLeftScore < 3)) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    
    GAVolleyballScorecardViewModel *viewModel = self.GAviewDataArray[0];
    self.GAScoreModel.GATeamRightName = viewModel.GATeamRightName;
    self.GAScoreModel.GATeamLeftName = viewModel.GATeamLeftName;
    
    NSArray *array = [self.GAScoreModel.totalAcoreString componentsSeparatedByString:@" "];
    NSString *scoreString = array[0];
    NSArray *array1 = [scoreString componentsSeparatedByString:@"-"];
    self.GAScoreModel.GATeamRightScore = [array1[0] integerValue];
    self.GAScoreModel.GATeamLeftScore = [array1[1] integerValue];
    
        
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.GAScoreModel.GAEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.GAScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"GAVolleyballScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_GAScoreModel = nil;
            self->_GAmainTable = nil;
            [self.GAtimer setFireDate:[NSDate distantFuture]];
            self.GAtimer = nil;
            [self GASetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)GAsave{
    GAVolleyballScorecardViewModel *viewModel2 = self.GAviewDataArray[2];
       if (!viewModel2.GATimeStatisticsDate){
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    GAVolleyballScorecardViewModel *viewModel = self.GAviewDataArray[0];
    if (!viewModel.GATeamRightName.length || !viewModel.GATeamLeftName.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.GAScoreModel.GANatureCompetition.length) {
        [self GAsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.GAScoreModel.GANatureCompetition.length) {
            [self GAsaveLoginJudge];
        }else{
            [self GAsave];
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
    self.GAScoreModel.GANatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.GAScoreModel.GANatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.GAScoreModel.GANatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
        GAVolleyballScorecardViewModel *GAViewModel = self.GAviewDataArray[indexPath.row];
        if (GAViewModel.cellType == GAScorecardCellTypeBothTeams) {
            GAVolleyballBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballBothTeamsTableViewCell" forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.GAModel = GAViewModel;
            cell.GAScoreModel = self.GAScoreModel;
            return cell;
        }else if (GAViewModel.cellType == GAScorecardCellTypeScoringPart){
            GAVolleyballScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballScoringPartTableViewCell" forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.GAModel = GAViewModel;
            return cell;
        }else if (GAViewModel.cellType == GAScorecardCellTypeTimePortion){
            GAVolleyballTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballTimePortionTableViewCell" forIndexPath:indexPath];
            cell.GAScoreModel = self.GAScoreModel;
            self.GAtimer = cell.GATimer;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            __weak typeof(self) weakSelf = self;
            cell.GAScorecardTimingB = ^(GAVolleyballTimePortionTableViewCell * _Nonnull cell) {
                if (cell.GAIndex == 0) {
                    self.GAScoreModel.GANatureCompetition = @"";
    //                self.GAScoreModel.GATeamRightName = @"";//右边队伍名称
                    self.GAScoreModel.GATeamRightScore = 0;//右边队伍得分
    //                self.GAScoreModel.GATeamLeftName = @"";//左边队伍名称
                    self.GAScoreModel.GATeamLeftScore = 0;//左边队伍得分
    //                self.GAScoreModel.GATotalTimeString = @"";//总共用时
    //                self.GAScoreModel.GAEndTimeString = @"";//结束时
                    [weakSelf GASetContentView];
                }else{
                    GAVolleyballBureauPointsModel *pointsModel = [[GAVolleyballBureauPointsModel alloc] init];
                [self.GAScoreModel.GABureauPointsArray addObject:pointsModel];
                    pointsModel.GAIndex = self.GAScoreModel.GABureauPointsArray.count - 1;
                    
                    GAVolleyballScorecardViewModel *temaModel = self.GAviewDataArray[1];
                    
                    NSUInteger homeTemaScore = 0;//主队得分
                    NSUInteger visitingTeamScore = 0;//客队得分
                    
                    homeTemaScore = temaModel.GARightscore;
                    visitingTeamScore = temaModel.GALeftscore;
                    pointsModel.GAtBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                    if (homeTemaScore > visitingTeamScore) {
                        pointsModel.whichWinType = scorecardWhichWinTypeMain;
                    }else{
                        pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                    }
                    
                    GAVolleyballScorecardViewModel *summaryModel = self.GAviewDataArray[self.GAviewDataArray.count - 2];
                    summaryModel.GABureauPointsArray = [self.GAScoreModel.GABureauPointsArray mutableCopy];
                    
                    if (self.GAScoreModel.GABureauPointsArray.count > 2) {
                        NSUInteger homeTeamScores = 0;
                        NSUInteger visitingTeamScored = 0;
                        for (int i = 0; i < self.GAScoreModel.GABureauPointsArray.count; i++) {
                            GAVolleyballBureauPointsModel *pointsModel = self.GAScoreModel.GABureauPointsArray[i];
                            if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                                homeTeamScores++;
                            }else{
                                visitingTeamScored++;
                            }
                        }
                        GAVolleyballScorecardViewModel *summaryModel = self.GAviewDataArray[self.GAviewDataArray.count - 2];
                        if (homeTeamScores > visitingTeamScored) {
                            summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                        }else{
                            summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                        }
                        self.GAScoreModel.totalAcoreString = summaryModel.totalAcoreString;
                        self.GAScoreModel.GATeamRightScore = homeTeamScores;
                       
                        self.GAScoreModel.GATeamLeftScore = visitingTeamScored;
                    }
                    self.GAScoreModel.GAbureauString = [NSString stringWithFormat:@"No.%ld",pointsModel.GAIndex + 2];
                    [weakSelf.GAmainTable reloadData];
                  if ((self.GAScoreModel.GATeamRightScore == 3) || (self.GAScoreModel.GATeamLeftScore == 3)) {
                    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"胜负已分!是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                    UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                        
                    }];
                    UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                        [weakSelf GAsave];
                    }];
                    [alertVC addAction:actionCancel];
                    [alertVC addAction:actionSure];
                    [self presentViewController:alertVC animated:YES completion:nil];
                }
                }
            };
            cell.GAModel = GAViewModel;
            return cell;
        }else if (GAViewModel.cellType == GAScorecardCellTypeSummary){
            GAVolleyballScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballScoreSummaryTableViewCell" forIndexPath:indexPath];
            cell.GAModel = GAViewModel;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        }else{
            GAVolleyballScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballScoringSaveTableViewCell" forIndexPath:indexPath];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            __weak typeof(self) weakSelf = self;
            cell.GAScorecardSaveB = ^(GAVolleyballScoringSaveTableViewCell * _Nonnull cell) {
                [self.GAtimer setFireDate:[NSDate distantFuture]];
                [weakSelf GAsave];
            };
            cell.GAModel = GAViewModel;
            return cell;
        }
}
#pragma mark - 属性懒加载
- (GAVolleyballScorecardModel *)GAScoreModel{
    if (!_GAScoreModel) {
        _GAScoreModel = [[GAVolleyballScorecardModel alloc] init];
        _GAScoreModel.GAbureauString = @"No.1";
        _GAScoreModel.GATeamRightName = @"";
        _GAScoreModel.GATeamLeftName = @"";
        _GAScoreModel.GABureauPointsArray = [[NSMutableArray alloc] init];
        _GAScoreModel.GATotalTimeString = @"00:00";
    }
    return _GAScoreModel;
}
- (NSMutableArray *)GAviewDataArray{
    if (!_GAviewDataArray) {
        _GAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GAviewDataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.backgroundColor = [UIColor greenColor];
        _GAmainTable.showsVerticalScrollIndicator = NO;
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        _GAmainTable.layer.cornerRadius = 8.0f;
        _GAmainTable.layer.masksToBounds = YES;
        [_GAmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_GAmainTable registerClass:[GAVolleyballBothTeamsTableViewCell class] forCellReuseIdentifier:@"GAVolleyballBothTeamsTableViewCell"];
        [_GAmainTable registerClass:[GAVolleyballScoringPartTableViewCell class] forCellReuseIdentifier:@"GAVolleyballScoringPartTableViewCell"];
        [_GAmainTable registerClass:[GAVolleyballTimePortionTableViewCell class] forCellReuseIdentifier:@"GAVolleyballTimePortionTableViewCell"];
        [_GAmainTable registerClass:[GAVolleyballScoreSummaryTableViewCell class] forCellReuseIdentifier:@"GAVolleyballScoreSummaryTableViewCell"];
        [_GAmainTable registerClass:[GAVolleyballScoringSaveTableViewCell class] forCellReuseIdentifier:@"GAVolleyballScoringSaveTableViewCell"];
        [self.view addSubview:_GAmainTable];
        [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-GAHeightTabBar);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(GACloseKeyBoard)];
        [_GAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _GAmainTable;
}
@end
