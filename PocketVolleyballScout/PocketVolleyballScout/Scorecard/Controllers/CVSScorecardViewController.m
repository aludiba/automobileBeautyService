//
//  CVSScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSScorecardViewController.h"
#import "CVSLoginViewController.h"
#import "CVSBothTeamsTableViewCell.h"
#import "CVSScoringPartTableViewCell.h"
#import "CVSTimePortionTableViewCell.h"
#import "CVSScoreSummaryTableViewCell.h"
#import "CVSScoringSaveTableViewCell.h"
#import "CVSScorecardModel.h"
#import "CVSScorecardViewModel.h"
@interface CVSScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)CVSScorecardModel *CVSScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *CVSviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *CVSmainTable;//数据列表
@property (nonatomic,strong )NSTimer *CVStimer;//定时器
@end

@implementation CVSScorecardViewController
+ (CVSScorecardViewController *)shareInstance{
    static CVSScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CVSScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self CVSSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)CVSSetContentView{
    self.view.backgroundColor = CVSH_Color(180, 177, 158, 1);
    [self.CVSviewDataArray removeAllObjects];
    
    CVSScorecardViewModel *CVSBothTeamsModel = [[CVSScorecardViewModel alloc] init];
    CVSBothTeamsModel.cellType = CVSScorecardCellTypeBothTeams;
    CVSBothTeamsModel.CVSbureauString = self.CVSScoreModel.CVSbureauString;
    CVSBothTeamsModel.CVSTeamRightName = self.CVSScoreModel.CVSTeamRightName;
    CVSBothTeamsModel.CVSTeamLeftName = self.CVSScoreModel.CVSTeamLeftName;
    [self.CVSviewDataArray addObject:CVSBothTeamsModel];
    
    CVSScorecardViewModel *CVSScoringPartModel = [[CVSScorecardViewModel alloc] init];
    CVSScoringPartModel.cellType = CVSScorecardCellTypeScoringPart;
    CVSScoringPartModel.CVSRightscore = 0;
    CVSScoringPartModel.CVSLeftscore = 0;
    CVSScoringPartModel.CVSIndexTime = 0;
    [self.CVSviewDataArray addObject:CVSScoringPartModel];
    
    CVSScorecardViewModel *CVSTimePortionModel = [[CVSScorecardViewModel alloc] init];
    CVSTimePortionModel.cellType = CVSScorecardCellTypeTimePortion;
    CVSTimePortionModel.CVSTimeStatisticsDateString = self.CVSScoreModel.CVSTotalTimeString;
    [self.CVSviewDataArray addObject:CVSTimePortionModel];
    
    CVSScorecardViewModel *CVSSummaryModel = [[CVSScorecardViewModel alloc] init];
    CVSSummaryModel.cellType = CVSScorecardCellTypeSummary;
    CVSSummaryModel.CVSBureauPointsArray = [self.CVSScoreModel.CVSBureauPointsArray mutableCopy];
    [self.CVSviewDataArray addObject:CVSSummaryModel];

    CVSScorecardViewModel *CVSScoringSaveModel = [[CVSScorecardViewModel alloc] init];
    CVSScoringSaveModel.cellType = CVSScorecardCellTypeSave;
    [self.CVSviewDataArray addObject:CVSScoringSaveModel];
    
    [self.CVSmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)CVSCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)CVSsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self CVSsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CVSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)CVSsaveAction{
    CVSScorecardViewModel *summaryModel = self.CVSviewDataArray[self.CVSviewDataArray.count - 2];
    if ((self.CVSScoreModel.CVSTeamRightScore < 3) && (self.CVSScoreModel.CVSTeamLeftScore < 3)) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"比赛还未结束", nil)];
        return;
    }
    
    CVSScorecardViewModel *viewModel = self.CVSviewDataArray[0];
    self.CVSScoreModel.CVSTeamRightName = viewModel.CVSTeamRightName;
    self.CVSScoreModel.CVSTeamLeftName = viewModel.CVSTeamLeftName;
    
    NSArray *array = [self.CVSScoreModel.totalAcoreString componentsSeparatedByString:@" "];
    NSString *scoreString = array[0];
    NSArray *array1 = [scoreString componentsSeparatedByString:@"-"];
    self.CVSScoreModel.CVSTeamRightScore = [array1[0] integerValue];
    self.CVSScoreModel.CVSTeamLeftScore = [array1[1] integerValue];
    
        
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CVSUIUtilities CVSformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.CVSScoreModel.CVSEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.CVSScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"CVSScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_CVSScoreModel = nil;
            self->_CVSmainTable = nil;
            [self.CVStimer setFireDate:[NSDate distantFuture]];
            self.CVStimer = nil;
            [self CVSSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)CVSsave{
    CVSScorecardViewModel *viewModel2 = self.CVSviewDataArray[2];
       if (!viewModel2.CVSTimeStatisticsDate){
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    CVSScorecardViewModel *viewModel = self.CVSviewDataArray[0];
    if (!viewModel.CVSTeamRightName.length || !viewModel.CVSTeamLeftName.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.CVSScoreModel.CVSNatureCompetition.length) {
        [self CVSsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.CVSScoreModel.CVSNatureCompetition.length) {
            [self CVSsaveLoginJudge];
        }else{
            [self CVSsave];
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
    self.CVSScoreModel.CVSNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.CVSScoreModel.CVSNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.CVSScoreModel.CVSNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CVSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CVSScorecardViewModel *CVSViewModel = self.CVSviewDataArray[indexPath.row];
    if (CVSViewModel.cellType == CVSScorecardCellTypeBothTeams) {
        CVSBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CVSModel = CVSViewModel;
        cell.CVSScoreModel = self.CVSScoreModel;
        return cell;
    }else if (CVSViewModel.cellType == CVSScorecardCellTypeScoringPart){
        CVSScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CVSModel = CVSViewModel;
        return cell;
    }else if (CVSViewModel.cellType == CVSScorecardCellTypeTimePortion){
        CVSTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSTimePortionTableViewCell" forIndexPath:indexPath];
        cell.CVSScoreModel = self.CVSScoreModel;
        self.CVStimer = cell.CVSTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CVSScorecardTimingB = ^(CVSTimePortionTableViewCell * _Nonnull cell) {
            if (cell.CVSIndex == 0) {
                self.CVSScoreModel.CVSNatureCompetition = @"";
//                self.CVSScoreModel.CVSTeamRightName = @"";//右边队伍名称
                self.CVSScoreModel.CVSTeamRightScore = 0;//右边队伍得分
//                self.CVSScoreModel.CVSTeamLeftName = @"";//左边队伍名称
                self.CVSScoreModel.CVSTeamLeftScore = 0;//左边队伍得分
//                self.CVSScoreModel.CVSTotalTimeString = @"";//总共用时
//                self.CVSScoreModel.CVSEndTimeString = @"";//结束时
                [weakSelf CVSSetContentView];
            }else{
                CVSBureauPointsModel *pointsModel = [[CVSBureauPointsModel alloc] init];
            [self.CVSScoreModel.CVSBureauPointsArray addObject:pointsModel];
                pointsModel.CVSIndex = self.CVSScoreModel.CVSBureauPointsArray.count - 1;
                
                CVSScorecardViewModel *temaModel = self.CVSviewDataArray[1];
                
                NSUInteger homeTemaScore = 0;//主队得分
                NSUInteger visitingTeamScore = 0;//客队得分
                
                homeTemaScore = temaModel.CVSRightscore;
                visitingTeamScore = temaModel.CVSLeftscore;
                pointsModel.CVStBureauScoreString = [NSString stringWithFormat:@"%ld-%ld",homeTemaScore,visitingTeamScore];
                if (homeTemaScore > visitingTeamScore) {
                    pointsModel.whichWinType = scorecardWhichWinTypeMain;
                }else{
                    pointsModel.whichWinType = scorecardWhichWinTypeGuest;
                }
                
                CVSScorecardViewModel *summaryModel = self.CVSviewDataArray[self.CVSviewDataArray.count - 2];
                summaryModel.CVSBureauPointsArray = [self.CVSScoreModel.CVSBureauPointsArray mutableCopy];
                
                if (self.CVSScoreModel.CVSBureauPointsArray.count > 2) {
                    NSUInteger homeTeamScores = 0;
                    NSUInteger visitingTeamScored = 0;
                    for (int i = 0; i < self.CVSScoreModel.CVSBureauPointsArray.count; i++) {
                        CVSBureauPointsModel *pointsModel = self.CVSScoreModel.CVSBureauPointsArray[i];
                        if (pointsModel.whichWinType == scorecardWhichWinTypeMain) {
                            homeTeamScores++;
                        }else{
                            visitingTeamScored++;
                        }
                    }
                    CVSScorecardViewModel *summaryModel = self.CVSviewDataArray[self.CVSviewDataArray.count - 2];
                    if (homeTeamScores > visitingTeamScored) {
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"主胜", nil)];
                    }else{
                        summaryModel.totalAcoreString = [NSString stringWithFormat:@"%ld-%ld   %@",homeTeamScores,visitingTeamScored,NSLocalizedString(@"客胜", nil)];
                    }
                    self.CVSScoreModel.totalAcoreString = summaryModel.totalAcoreString;
                    self.CVSScoreModel.CVSTeamRightScore = homeTeamScores;
                   
                    self.CVSScoreModel.CVSTeamLeftScore = visitingTeamScored;
                }
                self.CVSScoreModel.CVSbureauString = [NSString stringWithFormat:@"No.%ld",pointsModel.CVSIndex + 2];
                [weakSelf.CVSmainTable reloadData];
              if ((self.CVSScoreModel.CVSTeamRightScore == 3) || (self.CVSScoreModel.CVSTeamLeftScore == 3)) {
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"胜负已分!是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf CVSsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
            }
        };
        cell.CVSModel = CVSViewModel;
        return cell;
    }else if (CVSViewModel.cellType == CVSScorecardCellTypeSummary){
        CVSScoreSummaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSScoreSummaryTableViewCell" forIndexPath:indexPath];
        cell.CVSModel = CVSViewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        CVSScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CVSScorecardSaveB = ^(CVSScoringSaveTableViewCell * _Nonnull cell) {
            [self.CVStimer setFireDate:[NSDate distantFuture]];
            [weakSelf CVSsave];
        };
        cell.CVSModel = CVSViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (CVSScorecardModel *)CVSScoreModel{
    if (!_CVSScoreModel) {
        _CVSScoreModel = [[CVSScorecardModel alloc] init];
        _CVSScoreModel.CVSbureauString = @"No.1";
        _CVSScoreModel.CVSTeamRightName = @"";
        _CVSScoreModel.CVSTeamLeftName = @"";
        _CVSScoreModel.CVSBureauPointsArray = [[NSMutableArray alloc] init];
        _CVSScoreModel.CVSTotalTimeString = @"00:00";
    }
    return _CVSScoreModel;
}
- (NSMutableArray *)CVSviewDataArray{
    if (!_CVSviewDataArray) {
        _CVSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CVSviewDataArray;
}
- (UITableView *)CVSmainTable{
    if (!_CVSmainTable) {
        _CVSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CVSmainTable.backgroundColor = [UIColor cyanColor];
        _CVSmainTable.showsVerticalScrollIndicator = NO;
        _CVSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CVSmainTable.delegate = self;
        _CVSmainTable.dataSource = self;
        _CVSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CVSmainTable.estimatedRowHeight = 55.0f;
        _CVSmainTable.tableHeaderView = [[UIView alloc] init];
        _CVSmainTable.tableFooterView = [[UIView alloc] init];
        _CVSmainTable.layer.cornerRadius = 8.0f;
        _CVSmainTable.layer.masksToBounds = YES;
        [_CVSmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_CVSmainTable registerClass:[CVSBothTeamsTableViewCell class] forCellReuseIdentifier:@"CVSBothTeamsTableViewCell"];
        [_CVSmainTable registerClass:[CVSScoringPartTableViewCell class] forCellReuseIdentifier:@"CVSScoringPartTableViewCell"];
        [_CVSmainTable registerClass:[CVSTimePortionTableViewCell class] forCellReuseIdentifier:@"CVSTimePortionTableViewCell"];
        [_CVSmainTable registerClass:[CVSScoreSummaryTableViewCell class] forCellReuseIdentifier:@"CVSScoreSummaryTableViewCell"];
        [_CVSmainTable registerClass:[CVSScoringSaveTableViewCell class] forCellReuseIdentifier:@"CVSScoringSaveTableViewCell"];
        [self.view addSubview:_CVSmainTable];
        [_CVSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-CVSHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(CVSCloseKeyBoard)];
        [_CVSmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _CVSmainTable;
}
@end
