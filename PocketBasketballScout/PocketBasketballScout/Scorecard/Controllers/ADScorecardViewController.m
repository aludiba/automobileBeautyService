//
//  ADScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADScorecardViewController.h"
#import "ADLoginViewController.h"
#import "ADBothTeamsTableViewCell.h"
#import "ADScoringPartTableViewCell.h"
#import "ADTimePortionTableViewCell.h"
#import "ADScoringSaveTableViewCell.h"
#import "ADScorecardModel.h"
#import "ADScorecardViewModel.h"
@interface ADScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)ADScorecardModel *ADScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *ADviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *ADmainTable;//数据列表
@property (nonatomic,strong )NSTimer *ADtimer;//定时器
@end

@implementation ADScorecardViewController
+ (ADScorecardViewController *)shareInstance{
    static ADScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ADScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Scoring";
    self.view.backgroundColor = [UIColor cyanColor];
    [self ADSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)ADSetContentView{
    [self.ADviewDataArray removeAllObjects];
    
    ADScorecardViewModel *ADBothTeamsModel = [[ADScorecardViewModel alloc] init];
    ADBothTeamsModel.cellType = ADScorecardCellTypeBothTeams;
    ADBothTeamsModel.ADTeamRightName = @"";
    ADBothTeamsModel.ADTeamLeftName = @"";
    [self.ADviewDataArray addObject:ADBothTeamsModel];
    
    ADScorecardViewModel *ADScoringPartModel = [[ADScorecardViewModel alloc] init];
    ADScoringPartModel.cellType = ADScorecardCellTypeScoringPart;
    ADScoringPartModel.ADRightscore = 0;
    ADScoringPartModel.ADLeftscore = 0;
    ADScoringPartModel.ADIndexTime = 0;
    [self.ADviewDataArray addObject:ADScoringPartModel];
    
    ADScorecardViewModel *ADTimePortionModel = [[ADScorecardViewModel alloc] init];
    ADTimePortionModel.cellType = ADScorecardCellTypeTimePortion;
    ADTimePortionModel.ADTimeStatisticsDateString = @"00:00";
    [self.ADviewDataArray addObject:ADTimePortionModel];
    
    ADScorecardViewModel *ADScoringSaveModel = [[ADScorecardViewModel alloc] init];
    ADScoringSaveModel.cellType = ADScorecardCellTypeSave;
    [self.ADviewDataArray addObject:ADScoringSaveModel];
    
    [self.ADmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)ADCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)ADsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self ADsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ADKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)ADsaveAction{
    ADScorecardViewModel *viewModel = self.ADviewDataArray[0];
    self.ADScoreModel.ADTeamRightName = viewModel.ADTeamRightName;
    self.ADScoreModel.ADTeamLeftName = viewModel.ADTeamLeftName;
    
    ADScorecardViewModel *viewModel1 = self.ADviewDataArray[1];
    self.ADScoreModel.ADTeamRightScore = viewModel1.ADRightscore;
    self.ADScoreModel.ADTeamLeftScore = viewModel1.ADLeftscore;
    
    ADScorecardViewModel *viewModel2 = self.ADviewDataArray[2];
    self.ADScoreModel.ADTotalTimeString = viewModel2.ADTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [ADUIUtilities ADformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.ADScoreModel.ADEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.ADScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"ADScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD ADshowReminderText:@"Saved successfully"];
            self->_ADScoreModel = nil;
            self->_ADmainTable = nil;
            [self.ADtimer setFireDate:[NSDate distantFuture]];
            self.ADtimer = nil;
            [self ADSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD ADshowReminderText:@"Please try again later"];
        } else {
            [MBProgressHUD ADshowReminderText:@"Please try again later"];

        }
    }];
}
#pragma mark - 保存
- (void)ADsave{
    ADScorecardViewModel *viewModel2 = self.ADviewDataArray[2];
       if (!viewModel2.ADTimeStatisticsDate){
        [MBProgressHUD ADshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    ADScorecardViewModel *viewModel = self.ADviewDataArray[0];
    if (!viewModel.ADTeamRightName.length || !viewModel.ADTeamLeftName.length) {
        [MBProgressHUD ADshowReminderText:@""];
        return;
    }
    if (self.ADScoreModel.ADNatureCompetition.length) {
        [self ADsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:@"Please enter competition name" preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.ADScoreModel.ADNatureCompetition.length) {
            [self ADsaveLoginJudge];
        }else{
            [self ADsave];
        }
    }]];
    __weak typeof(self) weakSelf = self;
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField) {
         textField.placeholder = @"Please enter competition name";
         textField.delegate = weakSelf;
    }];
    [self presentViewController:alertController animated:YES completion:nil];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    self.ADScoreModel.ADNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.ADScoreModel.ADNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.ADScoreModel.ADNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ADviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ADScorecardViewModel *ADViewModel = self.ADviewDataArray[indexPath.row];
    if (ADViewModel.cellType == ADScorecardCellTypeBothTeams) {
        ADBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ADModel = ADViewModel;
        return cell;
    }else if (ADViewModel.cellType == ADScorecardCellTypeScoringPart){
        ADScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ADModel = ADViewModel;
        return cell;
    }else if (ADViewModel.cellType == ADScorecardCellTypeTimePortion){
        ADTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADTimePortionTableViewCell" forIndexPath:indexPath];
        self.ADtimer = cell.ADTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ADScorecardTimingB = ^(ADTimePortionTableViewCell * _Nonnull cell) {
            if (cell.ADIndex == 0) {
                self.ADScoreModel.ADNatureCompetition = @"";
                self.ADScoreModel.ADTeamRightName = @"";//右边队伍名称
                self.ADScoreModel.ADTeamRightScore = 0;//右边队伍得分
                self.ADScoreModel.ADTeamLeftName = @"";//左边队伍名称
                self.ADScoreModel.ADTeamLeftScore = 0;//左边队伍得分
                self.ADScoreModel.ADTotalTimeString = @"";//总共用时
                self.ADScoreModel.ADEndTimeString = @"";//结束时
                [weakSelf ADSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Save result?" preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:@"Save" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf ADsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.ADModel = ADViewModel;
        return cell;
    }else{
        ADScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ADScorecardSaveB = ^(ADScoringSaveTableViewCell * _Nonnull cell) {
            [self.ADtimer setFireDate:[NSDate distantFuture]];
            [weakSelf ADsave];
        };
        cell.ADModel = ADViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (ADScorecardModel *)ADScoreModel{
    if (!_ADScoreModel) {
        _ADScoreModel = [[ADScorecardModel alloc] init];
    }
    return _ADScoreModel;
}
- (NSMutableArray *)ADviewDataArray{
    if (!_ADviewDataArray) {
        _ADviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ADviewDataArray;
}
- (UITableView *)ADmainTable{
    if (!_ADmainTable) {
        _ADmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ADmainTable.backgroundColor = [UIColor whiteColor];
        _ADmainTable.showsVerticalScrollIndicator = NO;
        _ADmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ADmainTable.delegate = self;
        _ADmainTable.dataSource = self;
        _ADmainTable.rowHeight = UITableViewAutomaticDimension;
        _ADmainTable.estimatedRowHeight = 55.0f;
        _ADmainTable.tableHeaderView = [[UIView alloc] init];
        _ADmainTable.tableFooterView = [[UIView alloc] init];
        _ADmainTable.layer.cornerRadius = 4.0f;
        _ADmainTable.layer.masksToBounds = YES;
        [_ADmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_ADmainTable registerClass:[ADBothTeamsTableViewCell class] forCellReuseIdentifier:@"ADBothTeamsTableViewCell"];
        [_ADmainTable registerClass:[ADScoringPartTableViewCell class] forCellReuseIdentifier:@"ADScoringPartTableViewCell"];
        [_ADmainTable registerClass:[ADTimePortionTableViewCell class] forCellReuseIdentifier:@"ADTimePortionTableViewCell"];
        [_ADmainTable registerClass:[ADScoringSaveTableViewCell class] forCellReuseIdentifier:@"ADScoringSaveTableViewCell"];
        [self.view addSubview:_ADmainTable];
        [_ADmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ADHeightTabBar);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ADCloseKeyBoard)];
        [_ADmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _ADmainTable;
}
@end
