//
//  VTScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTScorecardViewController.h"
#import "VTLoginViewController.h"
#import "VTBothTeamsTableViewCell.h"
#import "VTScoringPartTableViewCell.h"
#import "VTTimePortionTableViewCell.h"
#import "VTScoringSaveTableViewCell.h"
#import "VTScorecardModel.h"
#import "VTScorecardViewModel.h"
@interface VTScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)VTScorecardModel *VTScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *VTviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *VTmainTable;//数据列表
@property (nonatomic,strong )NSTimer *VTtimer;//定时器
@end

@implementation VTScorecardViewController
+ (VTScorecardViewController *)shareInstance{
    static VTScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[VTScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self VTSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)VTSetContentView{
    self.view.backgroundColor = VTH_Color(180, 177, 158, 1);
    [self.VTviewDataArray removeAllObjects];
    
    VTScorecardViewModel *VTBothTeamsModel = [[VTScorecardViewModel alloc] init];
    VTBothTeamsModel.cellType = VTScorecardCellTypeBothTeams;
    VTBothTeamsModel.VTTeamRightName = @"";
    VTBothTeamsModel.VTTeamLeftName = @"";
    [self.VTviewDataArray addObject:VTBothTeamsModel];
    
    VTScorecardViewModel *VTScoringPartModel = [[VTScorecardViewModel alloc] init];
    VTScoringPartModel.cellType = VTScorecardCellTypeScoringPart;
    VTScoringPartModel.VTRightscore = 0;
    VTScoringPartModel.VTLeftscore = 0;
    VTScoringPartModel.VTIndexTime = 0;
    [self.VTviewDataArray addObject:VTScoringPartModel];
    
    VTScorecardViewModel *VTTimePortionModel = [[VTScorecardViewModel alloc] init];
    VTTimePortionModel.cellType = VTScorecardCellTypeTimePortion;
    VTTimePortionModel.VTTimeStatisticsDateString = @"00:00";
    [self.VTviewDataArray addObject:VTTimePortionModel];
    
    VTScorecardViewModel *VTScoringSaveModel = [[VTScorecardViewModel alloc] init];
    VTScoringSaveModel.cellType = VTScorecardCellTypeSave;
    [self.VTviewDataArray addObject:VTScoringSaveModel];
    
    [self.VTmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)VTCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)VTsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self VTsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            VTKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)VTsaveAction{
    VTScorecardViewModel *viewModel = self.VTviewDataArray[0];
    self.VTScoreModel.VTTeamRightName = viewModel.VTTeamRightName;
    self.VTScoreModel.VTTeamLeftName = viewModel.VTTeamLeftName;
    
    VTScorecardViewModel *viewModel1 = self.VTviewDataArray[1];
    self.VTScoreModel.VTTeamRightScore = viewModel1.VTRightscore;
    self.VTScoreModel.VTTeamLeftScore = viewModel1.VTLeftscore;
    
    VTScorecardViewModel *viewModel2 = self.VTviewDataArray[2];
    self.VTScoreModel.VTTotalTimeString = viewModel2.VTTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [VTUIUtilities VTformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.VTScoreModel.VTEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.VTScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"VTScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD VTshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_VTScoreModel = nil;
            self->_VTmainTable = nil;
            [self.VTtimer setFireDate:[NSDate distantFuture]];
            self.VTtimer = nil;
            [self VTSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)VTsave{
    VTScorecardViewModel *viewModel2 = self.VTviewDataArray[2];
       if (!viewModel2.VTTimeStatisticsDate){
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    VTScorecardViewModel *viewModel = self.VTviewDataArray[0];
    if (!viewModel.VTTeamRightName.length || !viewModel.VTTeamLeftName.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.VTScoreModel.VTNatureCompetition.length) {
        [self VTsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.VTScoreModel.VTNatureCompetition.length) {
            [self VTsaveLoginJudge];
        }else{
            [self VTsave];
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
    self.VTScoreModel.VTNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.VTScoreModel.VTNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.VTScoreModel.VTNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.VTviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    VTScorecardViewModel *VTViewModel = self.VTviewDataArray[indexPath.row];
    if (VTViewModel.cellType == VTScorecardCellTypeBothTeams) {
        VTBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.VTModel = VTViewModel;
        return cell;
    }else if (VTViewModel.cellType == VTScorecardCellTypeScoringPart){
        VTScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.VTModel = VTViewModel;
        return cell;
    }else if (VTViewModel.cellType == VTScorecardCellTypeTimePortion){
        VTTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTTimePortionTableViewCell" forIndexPath:indexPath];
        self.VTtimer = cell.VTTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.VTScorecardTimingB = ^(VTTimePortionTableViewCell * _Nonnull cell) {
            if (cell.VTIndex == 0) {
                self.VTScoreModel.VTNatureCompetition = @"";
                self.VTScoreModel.VTTeamRightName = @"";//右边队伍名称
                self.VTScoreModel.VTTeamRightScore = 0;//右边队伍得分
                self.VTScoreModel.VTTeamLeftName = @"";//左边队伍名称
                self.VTScoreModel.VTTeamLeftScore = 0;//左边队伍得分
                self.VTScoreModel.VTTotalTimeString = @"";//总共用时
                self.VTScoreModel.VTEndTimeString = @"";//结束时
                [weakSelf VTSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf VTsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.VTModel = VTViewModel;
        return cell;
    }else{
        VTScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.VTScorecardSaveB = ^(VTScoringSaveTableViewCell * _Nonnull cell) {
            [self.VTtimer setFireDate:[NSDate distantFuture]];
            [weakSelf VTsave];
        };
        cell.VTModel = VTViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (VTScorecardModel *)VTScoreModel{
    if (!_VTScoreModel) {
        _VTScoreModel = [[VTScorecardModel alloc] init];
    }
    return _VTScoreModel;
}
- (NSMutableArray *)VTviewDataArray{
    if (!_VTviewDataArray) {
        _VTviewDataArray = [[NSMutableArray alloc] init];
    }
    return _VTviewDataArray;
}
- (UITableView *)VTmainTable{
    if (!_VTmainTable) {
        _VTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _VTmainTable.backgroundColor = [UIColor cyanColor];
        _VTmainTable.showsVerticalScrollIndicator = NO;
        _VTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _VTmainTable.delegate = self;
        _VTmainTable.dataSource = self;
        _VTmainTable.rowHeight = UITableViewAutomaticDimension;
        _VTmainTable.estimatedRowHeight = 55.0f;
        _VTmainTable.tableHeaderView = [[UIView alloc] init];
        _VTmainTable.tableFooterView = [[UIView alloc] init];
        _VTmainTable.layer.cornerRadius = 8.0f;
        _VTmainTable.layer.masksToBounds = YES;
        [_VTmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_VTmainTable registerClass:[VTBothTeamsTableViewCell class] forCellReuseIdentifier:@"VTBothTeamsTableViewCell"];
        [_VTmainTable registerClass:[VTScoringPartTableViewCell class] forCellReuseIdentifier:@"VTScoringPartTableViewCell"];
        [_VTmainTable registerClass:[VTTimePortionTableViewCell class] forCellReuseIdentifier:@"VTTimePortionTableViewCell"];
        [_VTmainTable registerClass:[VTScoringSaveTableViewCell class] forCellReuseIdentifier:@"VTScoringSaveTableViewCell"];
        [self.view addSubview:_VTmainTable];
        [_VTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-VTHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(VTCloseKeyBoard)];
        [_VTmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _VTmainTable;
}
@end
