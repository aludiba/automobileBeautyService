//
//  WBYBKOKScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKScorecardViewController.h"
#import "WBYBKOKLoginViewController.h"
#import "WBYBKOKBothTeamsTableViewCell.h"
#import "WBYBKOKScoringPartTableViewCell.h"
#import "WBYBKOKTimePortionTableViewCell.h"
#import "WBYBKOKScoringSaveTableViewCell.h"
#import "WBYBKOKScorecardModel.h"
#import "WBYBKOKScorecardViewModel.h"
@interface WBYBKOKScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)WBYBKOKScorecardModel *WBYBKOKScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *WBYBKOKviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *WBYBKOKmainTable;//数据列表
@property (nonatomic,strong )NSTimer *WBYBKOKtimer;//定时器
@end

@implementation WBYBKOKScorecardViewController
+ (WBYBKOKScorecardViewController *)shareInstance{
    static WBYBKOKScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[WBYBKOKScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    self.view.backgroundColor = [UIColor cyanColor];
    [self WBYBKOKSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)WBYBKOKSetContentView{
    [self.WBYBKOKviewDataArray removeAllObjects];
    
    WBYBKOKScorecardViewModel *WBYBKOKBothTeamsModel = [[WBYBKOKScorecardViewModel alloc] init];
    WBYBKOKBothTeamsModel.cellType = WBYBKOKScorecardCellTypeBothTeams;
    WBYBKOKBothTeamsModel.WBYBKOKTeamRightName = @"";
    WBYBKOKBothTeamsModel.WBYBKOKTeamLeftName = @"";
    [self.WBYBKOKviewDataArray addObject:WBYBKOKBothTeamsModel];
    
    WBYBKOKScorecardViewModel *WBYBKOKScoringPartModel = [[WBYBKOKScorecardViewModel alloc] init];
    WBYBKOKScoringPartModel.cellType = WBYBKOKScorecardCellTypeScoringPart;
    WBYBKOKScoringPartModel.WBYBKOKRightscore = 0;
    WBYBKOKScoringPartModel.WBYBKOKLeftscore = 0;
    WBYBKOKScoringPartModel.WBYBKOKIndexTime = 0;
    [self.WBYBKOKviewDataArray addObject:WBYBKOKScoringPartModel];
    
    WBYBKOKScorecardViewModel *WBYBKOKTimePortionModel = [[WBYBKOKScorecardViewModel alloc] init];
    WBYBKOKTimePortionModel.cellType = WBYBKOKScorecardCellTypeTimePortion;
    WBYBKOKTimePortionModel.WBYBKOKTimeStatisticsDateString = @"00:00";
    [self.WBYBKOKviewDataArray addObject:WBYBKOKTimePortionModel];
    
    WBYBKOKScorecardViewModel *WBYBKOKScoringSaveModel = [[WBYBKOKScorecardViewModel alloc] init];
    WBYBKOKScoringSaveModel.cellType = WBYBKOKScorecardCellTypeSave;
    [self.WBYBKOKviewDataArray addObject:WBYBKOKScoringSaveModel];
    
    [self.WBYBKOKmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)WBYBKOKCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)WBYBKOKsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self WBYBKOKsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            WBYBKOKKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)WBYBKOKsaveAction{
    WBYBKOKScorecardViewModel *viewModel = self.WBYBKOKviewDataArray[0];
    self.WBYBKOKScoreModel.WBYBKOKTeamRightName = viewModel.WBYBKOKTeamRightName;
    self.WBYBKOKScoreModel.WBYBKOKTeamLeftName = viewModel.WBYBKOKTeamLeftName;
    
    WBYBKOKScorecardViewModel *viewModel1 = self.WBYBKOKviewDataArray[1];
    self.WBYBKOKScoreModel.WBYBKOKTeamRightScore = viewModel1.WBYBKOKRightscore;
    self.WBYBKOKScoreModel.WBYBKOKTeamLeftScore = viewModel1.WBYBKOKLeftscore;
    
    WBYBKOKScorecardViewModel *viewModel2 = self.WBYBKOKviewDataArray[2];
    self.WBYBKOKScoreModel.WBYBKOKTotalTimeString = viewModel2.WBYBKOKTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [WBYBKOKUIUtilities WBYBKOKformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.WBYBKOKScoreModel.WBYBKOKEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.WBYBKOKScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"WBYBKOKScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_WBYBKOKScoreModel = nil;
            self->_WBYBKOKmainTable = nil;
            [self.WBYBKOKtimer setFireDate:[NSDate distantFuture]];
            self.WBYBKOKtimer = nil;
            [self WBYBKOKSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)WBYBKOKsave{
    WBYBKOKScorecardViewModel *viewModel2 = self.WBYBKOKviewDataArray[2];
       if (!viewModel2.WBYBKOKTimeStatisticsDate){
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    WBYBKOKScorecardViewModel *viewModel = self.WBYBKOKviewDataArray[0];
    if (!viewModel.WBYBKOKTeamRightName.length || !viewModel.WBYBKOKTeamLeftName.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.WBYBKOKScoreModel.WBYBKOKNatureCompetition.length) {
        [self WBYBKOKsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.WBYBKOKScoreModel.WBYBKOKNatureCompetition.length) {
            [self WBYBKOKsaveLoginJudge];
        }else{
            [self WBYBKOKsave];
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
    self.WBYBKOKScoreModel.WBYBKOKNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.WBYBKOKScoreModel.WBYBKOKNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.WBYBKOKScoreModel.WBYBKOKNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.WBYBKOKviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WBYBKOKScorecardViewModel *WBYBKOKViewModel = self.WBYBKOKviewDataArray[indexPath.row];
    if (WBYBKOKViewModel.cellType == WBYBKOKScorecardCellTypeBothTeams) {
        WBYBKOKBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.WBYBKOKModel = WBYBKOKViewModel;
        return cell;
    }else if (WBYBKOKViewModel.cellType == WBYBKOKScorecardCellTypeScoringPart){
        WBYBKOKScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.WBYBKOKModel = WBYBKOKViewModel;
        return cell;
    }else if (WBYBKOKViewModel.cellType == WBYBKOKScorecardCellTypeTimePortion){
        WBYBKOKTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKTimePortionTableViewCell" forIndexPath:indexPath];
        self.WBYBKOKtimer = cell.WBYBKOKTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.WBYBKOKScorecardTimingB = ^(WBYBKOKTimePortionTableViewCell * _Nonnull cell) {
            if (cell.WBYBKOKIndex == 0) {
                self.WBYBKOKScoreModel.WBYBKOKNatureCompetition = @"";
                self.WBYBKOKScoreModel.WBYBKOKTeamRightName = @"";//右边队伍名称
                self.WBYBKOKScoreModel.WBYBKOKTeamRightScore = 0;//右边队伍得分
                self.WBYBKOKScoreModel.WBYBKOKTeamLeftName = @"";//左边队伍名称
                self.WBYBKOKScoreModel.WBYBKOKTeamLeftScore = 0;//左边队伍得分
                self.WBYBKOKScoreModel.WBYBKOKTotalTimeString = @"";//总共用时
                self.WBYBKOKScoreModel.WBYBKOKEndTimeString = @"";//结束时
                [weakSelf WBYBKOKSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf WBYBKOKsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.WBYBKOKModel = WBYBKOKViewModel;
        return cell;
    }else{
        WBYBKOKScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.WBYBKOKScorecardSaveB = ^(WBYBKOKScoringSaveTableViewCell * _Nonnull cell) {
            [self.WBYBKOKtimer setFireDate:[NSDate distantFuture]];
            [weakSelf WBYBKOKsave];
        };
        cell.WBYBKOKModel = WBYBKOKViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (WBYBKOKScorecardModel *)WBYBKOKScoreModel{
    if (!_WBYBKOKScoreModel) {
        _WBYBKOKScoreModel = [[WBYBKOKScorecardModel alloc] init];
    }
    return _WBYBKOKScoreModel;
}
- (NSMutableArray *)WBYBKOKviewDataArray{
    if (!_WBYBKOKviewDataArray) {
        _WBYBKOKviewDataArray = [[NSMutableArray alloc] init];
    }
    return _WBYBKOKviewDataArray;
}
- (UITableView *)WBYBKOKmainTable{
    if (!_WBYBKOKmainTable) {
        _WBYBKOKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _WBYBKOKmainTable.backgroundColor = [UIColor whiteColor];
        _WBYBKOKmainTable.showsVerticalScrollIndicator = NO;
        _WBYBKOKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _WBYBKOKmainTable.delegate = self;
        _WBYBKOKmainTable.dataSource = self;
        _WBYBKOKmainTable.rowHeight = UITableViewAutomaticDimension;
        _WBYBKOKmainTable.estimatedRowHeight = 55.0f;
        _WBYBKOKmainTable.tableHeaderView = [[UIView alloc] init];
        _WBYBKOKmainTable.tableFooterView = [[UIView alloc] init];
        _WBYBKOKmainTable.layer.cornerRadius = 4.0f;
        _WBYBKOKmainTable.layer.masksToBounds = YES;
        [_WBYBKOKmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_WBYBKOKmainTable registerClass:[WBYBKOKBothTeamsTableViewCell class] forCellReuseIdentifier:@"WBYBKOKBothTeamsTableViewCell"];
        [_WBYBKOKmainTable registerClass:[WBYBKOKScoringPartTableViewCell class] forCellReuseIdentifier:@"WBYBKOKScoringPartTableViewCell"];
        [_WBYBKOKmainTable registerClass:[WBYBKOKTimePortionTableViewCell class] forCellReuseIdentifier:@"WBYBKOKTimePortionTableViewCell"];
        [_WBYBKOKmainTable registerClass:[WBYBKOKScoringSaveTableViewCell class] forCellReuseIdentifier:@"WBYBKOKScoringSaveTableViewCell"];
        [self.view addSubview:_WBYBKOKmainTable];
        [_WBYBKOKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-WBYBKOKHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(WBYBKOKCloseKeyBoard)];
        [_WBYBKOKmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _WBYBKOKmainTable;
}
@end
