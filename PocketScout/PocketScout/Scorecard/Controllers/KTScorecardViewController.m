//
//  KTScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTScorecardViewController.h"
#import "KTLoginViewController.h"
#import "KTBothTeamsTableViewCell.h"
#import "KTScoringPartTableViewCell.h"
#import "KTTimePortionTableViewCell.h"
#import "KTScoringSaveTableViewCell.h"
#import "KTScorecardModel.h"
#import "KTScorecardViewModel.h"
@interface KTScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)KTScorecardModel *KTScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *KTviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *KTmainTable;//数据列表
@property (nonatomic,strong )NSTimer *KTtimer;//定时器
@end

@implementation KTScorecardViewController
+ (KTScorecardViewController *)shareInstance{
    static KTScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[KTScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self KTSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)KTSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    [self.KTviewDataArray removeAllObjects];
    
    KTScorecardViewModel *KTBothTeamsModel = [[KTScorecardViewModel alloc] init];
    KTBothTeamsModel.cellType = KTScorecardCellTypeBothTeams;
    KTBothTeamsModel.KTTeamRightName = @"";
    KTBothTeamsModel.KTTeamLeftName = @"";
    [self.KTviewDataArray addObject:KTBothTeamsModel];
    
    KTScorecardViewModel *KTScoringPartModel = [[KTScorecardViewModel alloc] init];
    KTScoringPartModel.cellType = KTScorecardCellTypeScoringPart;
    KTScoringPartModel.KTRightscore = 0;
    KTScoringPartModel.KTLeftscore = 0;
    KTScoringPartModel.KTIndexTime = 0;
    [self.KTviewDataArray addObject:KTScoringPartModel];
    
    KTScorecardViewModel *KTTimePortionModel = [[KTScorecardViewModel alloc] init];
    KTTimePortionModel.cellType = KTScorecardCellTypeTimePortion;
    KTTimePortionModel.KTTimeStatisticsDateString = @"00:00";
    [self.KTviewDataArray addObject:KTTimePortionModel];
    
    KTScorecardViewModel *KTScoringSaveModel = [[KTScorecardViewModel alloc] init];
    KTScoringSaveModel.cellType = KTScorecardCellTypeSave;
    [self.KTviewDataArray addObject:KTScoringSaveModel];
    
    [self.KTmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)KTCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)KTsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self KTsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            KTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)KTsaveAction{
    KTScorecardViewModel *viewModel = self.KTviewDataArray[0];
    self.KTScoreModel.KTTeamRightName = viewModel.KTTeamRightName;
    self.KTScoreModel.KTTeamLeftName = viewModel.KTTeamLeftName;
    
    KTScorecardViewModel *viewModel1 = self.KTviewDataArray[1];
    self.KTScoreModel.KTTeamRightScore = viewModel1.KTRightscore;
    self.KTScoreModel.KTTeamLeftScore = viewModel1.KTLeftscore;
    
    KTScorecardViewModel *viewModel2 = self.KTviewDataArray[2];
    self.KTScoreModel.KTTotalTimeString = viewModel2.KTTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [KTUIUtilities KTformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.KTScoreModel.KTEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.KTScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"KTScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD KTshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_KTScoreModel = nil;
            self->_KTmainTable = nil;
            [self.KTtimer setFireDate:[NSDate distantFuture]];
            self.KTtimer = nil;
            [self KTSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)KTsave{
    KTScorecardViewModel *viewModel2 = self.KTviewDataArray[2];
       if (!viewModel2.KTTimeStatisticsDate){
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    KTScorecardViewModel *viewModel = self.KTviewDataArray[0];
    if (!viewModel.KTTeamRightName.length || !viewModel.KTTeamLeftName.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.KTScoreModel.KTNatureCompetition.length) {
        [self KTsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.KTScoreModel.KTNatureCompetition.length) {
            [self KTsaveLoginJudge];
        }else{
            [self KTsave];
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
    self.KTScoreModel.KTNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.KTScoreModel.KTNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.KTScoreModel.KTNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KTviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KTScorecardViewModel *KTViewModel = self.KTviewDataArray[indexPath.row];
    if (KTViewModel.cellType == KTScorecardCellTypeBothTeams) {
        KTBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.KTModel = KTViewModel;
        return cell;
    }else if (KTViewModel.cellType == KTScorecardCellTypeScoringPart){
        KTScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.KTModel = KTViewModel;
        return cell;
    }else if (KTViewModel.cellType == KTScorecardCellTypeTimePortion){
        KTTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTTimePortionTableViewCell" forIndexPath:indexPath];
        self.KTtimer = cell.KTTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.KTScorecardTimingB = ^(KTTimePortionTableViewCell * _Nonnull cell) {
            if (cell.KTIndex == 0) {
                self.KTScoreModel.KTNatureCompetition = @"";
                self.KTScoreModel.KTTeamRightName = @"";//右边队伍名称
                self.KTScoreModel.KTTeamRightScore = 0;//右边队伍得分
                self.KTScoreModel.KTTeamLeftName = @"";//左边队伍名称
                self.KTScoreModel.KTTeamLeftScore = 0;//左边队伍得分
                self.KTScoreModel.KTTotalTimeString = @"";//总共用时
                self.KTScoreModel.KTEndTimeString = @"";//结束时
                [weakSelf KTSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf KTsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.KTModel = KTViewModel;
        return cell;
    }else{
        KTScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.KTScorecardSaveB = ^(KTScoringSaveTableViewCell * _Nonnull cell) {
            [self.KTtimer setFireDate:[NSDate distantFuture]];
            [weakSelf KTsave];
        };
        cell.KTModel = KTViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (KTScorecardModel *)KTScoreModel{
    if (!_KTScoreModel) {
        _KTScoreModel = [[KTScorecardModel alloc] init];
    }
    return _KTScoreModel;
}
- (NSMutableArray *)KTviewDataArray{
    if (!_KTviewDataArray) {
        _KTviewDataArray = [[NSMutableArray alloc] init];
    }
    return _KTviewDataArray;
}
- (UITableView *)KTmainTable{
    if (!_KTmainTable) {
        _KTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _KTmainTable.showsVerticalScrollIndicator = NO;
        _KTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _KTmainTable.delegate = self;
        _KTmainTable.dataSource = self;
        _KTmainTable.rowHeight = UITableViewAutomaticDimension;
        _KTmainTable.estimatedRowHeight = 55.0f;
        _KTmainTable.tableHeaderView = [[UIView alloc] init];
        _KTmainTable.tableFooterView = [[UIView alloc] init];
        _KTmainTable.layer.cornerRadius = 16.0f;
        _KTmainTable.layer.masksToBounds = YES;
        [_KTmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_KTmainTable registerClass:[KTBothTeamsTableViewCell class] forCellReuseIdentifier:@"KTBothTeamsTableViewCell"];
        [_KTmainTable registerClass:[KTScoringPartTableViewCell class] forCellReuseIdentifier:@"KTScoringPartTableViewCell"];
        [_KTmainTable registerClass:[KTTimePortionTableViewCell class] forCellReuseIdentifier:@"KTTimePortionTableViewCell"];
        [_KTmainTable registerClass:[KTScoringSaveTableViewCell class] forCellReuseIdentifier:@"KTScoringSaveTableViewCell"];
        [self.view addSubview:_KTmainTable];
        [_KTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-KTHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(KTCloseKeyBoard)];
        [_KTmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _KTmainTable;
}
@end
