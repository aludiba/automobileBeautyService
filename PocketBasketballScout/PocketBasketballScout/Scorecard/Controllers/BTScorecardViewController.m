//
//  BTScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTScorecardViewController.h"
#import "BTLoginViewController.h"
#import "BTBothTeamsTableViewCell.h"
#import "BTScoringPartTableViewCell.h"
#import "BTTimePortionTableViewCell.h"
#import "BTScoringSaveTableViewCell.h"
#import "BTScorecardModel.h"
#import "BTScorecardViewModel.h"
@interface BTScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)BTScorecardModel *BTScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *BTviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *BTmainTable;//数据列表
@property (nonatomic,strong )NSTimer *BTtimer;//定时器
@end

@implementation BTScorecardViewController
+ (BTScorecardViewController *)shareInstance{
    static BTScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[BTScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self BTSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)BTSetContentView{
    [self.BTviewDataArray removeAllObjects];
    
    BTScorecardViewModel *BTBothTeamsModel = [[BTScorecardViewModel alloc] init];
    BTBothTeamsModel.cellType = BTScorecardCellTypeBothTeams;
    BTBothTeamsModel.BTTeamRightName = @"";
    BTBothTeamsModel.BTTeamLeftName = @"";
    [self.BTviewDataArray addObject:BTBothTeamsModel];
    
    BTScorecardViewModel *BTScoringPartModel = [[BTScorecardViewModel alloc] init];
    BTScoringPartModel.cellType = BTScorecardCellTypeScoringPart;
    BTScoringPartModel.BTRightscore = 0;
    BTScoringPartModel.BTLeftscore = 0;
    BTScoringPartModel.BTIndexTime = 0;
    [self.BTviewDataArray addObject:BTScoringPartModel];
    
    BTScorecardViewModel *BTTimePortionModel = [[BTScorecardViewModel alloc] init];
    BTTimePortionModel.cellType = BTScorecardCellTypeTimePortion;
    BTTimePortionModel.BTTimeStatisticsDateString = @"00:00";
    [self.BTviewDataArray addObject:BTTimePortionModel];
    
    BTScorecardViewModel *BTScoringSaveModel = [[BTScorecardViewModel alloc] init];
    BTScoringSaveModel.cellType = BTScorecardCellTypeSave;
    [self.BTviewDataArray addObject:BTScoringSaveModel];
    
    [self.BTmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)BTCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)BTsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self BTsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            BTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)BTsaveAction{
    BTScorecardViewModel *viewModel = self.BTviewDataArray[0];
    self.BTScoreModel.BTTeamRightName = viewModel.BTTeamRightName;
    self.BTScoreModel.BTTeamLeftName = viewModel.BTTeamLeftName;
    
    BTScorecardViewModel *viewModel1 = self.BTviewDataArray[1];
    self.BTScoreModel.BTTeamRightScore = viewModel1.BTRightscore;
    self.BTScoreModel.BTTeamLeftScore = viewModel1.BTLeftscore;
    
    BTScorecardViewModel *viewModel2 = self.BTviewDataArray[2];
    self.BTScoreModel.BTTotalTimeString = viewModel2.BTTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [BTUIUtilities BTformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.BTScoreModel.BTEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.BTScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"BTScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD BTshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_BTScoreModel = nil;
            self->_BTmainTable = nil;
            [self.BTtimer setFireDate:[NSDate distantFuture]];
            self.BTtimer = nil;
            [self BTSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)BTsave{
    BTScorecardViewModel *viewModel2 = self.BTviewDataArray[2];
       if (!viewModel2.BTTimeStatisticsDate){
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    BTScorecardViewModel *viewModel = self.BTviewDataArray[0];
    if (!viewModel.BTTeamRightName.length || !viewModel.BTTeamLeftName.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.BTScoreModel.BTNatureCompetition.length) {
        [self BTsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.BTScoreModel.BTNatureCompetition.length) {
            [self BTsaveLoginJudge];
        }else{
            [self BTsave];
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
    self.BTScoreModel.BTNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.BTScoreModel.BTNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.BTScoreModel.BTNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BTviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BTScorecardViewModel *BTViewModel = self.BTviewDataArray[indexPath.row];
    if (BTViewModel.cellType == BTScorecardCellTypeBothTeams) {
        BTBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.BTModel = BTViewModel;
        return cell;
    }else if (BTViewModel.cellType == BTScorecardCellTypeScoringPart){
        BTScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.BTModel = BTViewModel;
        return cell;
    }else if (BTViewModel.cellType == BTScorecardCellTypeTimePortion){
        BTTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTTimePortionTableViewCell" forIndexPath:indexPath];
        self.BTtimer = cell.BTTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.BTScorecardTimingB = ^(BTTimePortionTableViewCell * _Nonnull cell) {
            if (cell.BTIndex == 0) {
                self.BTScoreModel.BTNatureCompetition = @"";
                self.BTScoreModel.BTTeamRightName = @"";//右边队伍名称
                self.BTScoreModel.BTTeamRightScore = 0;//右边队伍得分
                self.BTScoreModel.BTTeamLeftName = @"";//左边队伍名称
                self.BTScoreModel.BTTeamLeftScore = 0;//左边队伍得分
                self.BTScoreModel.BTTotalTimeString = @"";//总共用时
                self.BTScoreModel.BTEndTimeString = @"";//结束时
                [weakSelf BTSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf BTsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.BTModel = BTViewModel;
        return cell;
    }else{
        BTScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.BTScorecardSaveB = ^(BTScoringSaveTableViewCell * _Nonnull cell) {
            [self.BTtimer setFireDate:[NSDate distantFuture]];
            [weakSelf BTsave];
        };
        cell.BTModel = BTViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (BTScorecardModel *)BTScoreModel{
    if (!_BTScoreModel) {
        _BTScoreModel = [[BTScorecardModel alloc] init];
    }
    return _BTScoreModel;
}
- (NSMutableArray *)BTviewDataArray{
    if (!_BTviewDataArray) {
        _BTviewDataArray = [[NSMutableArray alloc] init];
    }
    return _BTviewDataArray;
}
- (UITableView *)BTmainTable{
    if (!_BTmainTable) {
        _BTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _BTmainTable.backgroundColor = [UIColor cyanColor];
        _BTmainTable.showsVerticalScrollIndicator = NO;
        _BTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BTmainTable.delegate = self;
        _BTmainTable.dataSource = self;
        _BTmainTable.rowHeight = UITableViewAutomaticDimension;
        _BTmainTable.estimatedRowHeight = 55.0f;
        _BTmainTable.tableHeaderView = [[UIView alloc] init];
        _BTmainTable.tableFooterView = [[UIView alloc] init];
        _BTmainTable.layer.cornerRadius = 16.0f;
        _BTmainTable.layer.masksToBounds = YES;
        [_BTmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_BTmainTable registerClass:[BTBothTeamsTableViewCell class] forCellReuseIdentifier:@"BTBothTeamsTableViewCell"];
        [_BTmainTable registerClass:[BTScoringPartTableViewCell class] forCellReuseIdentifier:@"BTScoringPartTableViewCell"];
        [_BTmainTable registerClass:[BTTimePortionTableViewCell class] forCellReuseIdentifier:@"BTTimePortionTableViewCell"];
        [_BTmainTable registerClass:[BTScoringSaveTableViewCell class] forCellReuseIdentifier:@"BTScoringSaveTableViewCell"];
        [self.view addSubview:_BTmainTable];
        [_BTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-BTHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BTCloseKeyBoard)];
        [_BTmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _BTmainTable;
}
@end
