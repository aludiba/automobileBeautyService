//
//  CFScorecardViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFScorecardViewController.h"
#import "CFLoginViewController.h"
#import "CFBothTeamsTableViewCell.h"
#import "CFScoringPartTableViewCell.h"
#import "CFTimePortionTableViewCell.h"
#import "CFScoringSaveTableViewCell.h"
#import "CFScorecardModel.h"
#import "CFScorecardViewModel.h"
@interface CFScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)CFScorecardModel *CFScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *CFviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *CFmainTable;//数据列表
@property (nonatomic,strong )NSTimer *CFtimer;//定时器
@end

@implementation CFScorecardViewController
+ (CFScorecardViewController *)shareInstance{
    static CFScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CFScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self CFSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)CFSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    [self.CFviewDataArray removeAllObjects];
    
    CFScorecardViewModel *CFBothTeamsModel = [[CFScorecardViewModel alloc] init];
    CFBothTeamsModel.cellType = CFScorecardCellTypeBothTeams;
    CFBothTeamsModel.CFTeamRightName = @"";
    CFBothTeamsModel.CFTeamLeftName = @"";
    [self.CFviewDataArray addObject:CFBothTeamsModel];
    
    CFScorecardViewModel *CFScoringPartModel = [[CFScorecardViewModel alloc] init];
    CFScoringPartModel.cellType = CFScorecardCellTypeScoringPart;
    CFScoringPartModel.CFRightscore = 0;
    CFScoringPartModel.CFLeftscore = 0;
    CFScoringPartModel.CFIndexTime = 0;
    [self.CFviewDataArray addObject:CFScoringPartModel];
    
    CFScorecardViewModel *CFTimePortionModel = [[CFScorecardViewModel alloc] init];
    CFTimePortionModel.cellType = CFScorecardCellTypeTimePortion;
    CFTimePortionModel.CFTimeStatisticsDateString = @"00:00";
    [self.CFviewDataArray addObject:CFTimePortionModel];
    
    CFScorecardViewModel *CFScoringSaveModel = [[CFScorecardViewModel alloc] init];
    CFScoringSaveModel.cellType = CFScorecardCellTypeSave;
    [self.CFviewDataArray addObject:CFScoringSaveModel];
    
    [self.CFmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)CFCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)CFsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self CFsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)CFsaveAction{
    CFScorecardViewModel *viewModel = self.CFviewDataArray[0];
    self.CFScoreModel.CFTeamRightName = viewModel.CFTeamRightName;
    self.CFScoreModel.CFTeamLeftName = viewModel.CFTeamLeftName;
    
    CFScorecardViewModel *viewModel1 = self.CFviewDataArray[1];
    self.CFScoreModel.CFTeamRightScore = viewModel1.CFRightscore;
    self.CFScoreModel.CFTeamLeftScore = viewModel1.CFLeftscore;
    
    CFScorecardViewModel *viewModel2 = self.CFviewDataArray[2];
    self.CFScoreModel.CFTotalTimeString = viewModel2.CFTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CFUIUtilities CFformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.CFScoreModel.CFEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.CFScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"CFScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD CFshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_CFScoreModel = nil;
            self->_CFmainTable = nil;
            [self.CFtimer setFireDate:[NSDate distantFuture]];
            self.CFtimer = nil;
            [self CFSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)CFsave{
    CFScorecardViewModel *viewModel2 = self.CFviewDataArray[2];
       if (!viewModel2.CFTimeStatisticsDate){
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    CFScorecardViewModel *viewModel = self.CFviewDataArray[0];
    if (!viewModel.CFTeamRightName.length || !viewModel.CFTeamLeftName.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.CFScoreModel.CFNatureCompetition.length) {
        [self CFsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.CFScoreModel.CFNatureCompetition.length) {
            [self CFsaveLoginJudge];
        }else{
            [self CFsave];
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
    self.CFScoreModel.CFNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.CFScoreModel.CFNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.CFScoreModel.CFNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CFScorecardViewModel *CFViewModel = self.CFviewDataArray[indexPath.row];
    if (CFViewModel.cellType == CFScorecardCellTypeBothTeams) {
        CFBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CFModel = CFViewModel;
        return cell;
    }else if (CFViewModel.cellType == CFScorecardCellTypeScoringPart){
        CFScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CFModel = CFViewModel;
        return cell;
    }else if (CFViewModel.cellType == CFScorecardCellTypeTimePortion){
        CFTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFTimePortionTableViewCell" forIndexPath:indexPath];
        self.CFtimer = cell.CFTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CFScorecardTimingB = ^(CFTimePortionTableViewCell * _Nonnull cell) {
            if (cell.CFIndex == 0) {
                self.CFScoreModel.CFNatureCompetition = @"";
                self.CFScoreModel.CFTeamRightName = @"";//右边队伍名称
                self.CFScoreModel.CFTeamRightScore = 0;//右边队伍得分
                self.CFScoreModel.CFTeamLeftName = @"";//左边队伍名称
                self.CFScoreModel.CFTeamLeftScore = 0;//左边队伍得分
                self.CFScoreModel.CFTotalTimeString = @"";//总共用时
                self.CFScoreModel.CFEndTimeString = @"";//结束时
                [weakSelf CFSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf CFsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.CFModel = CFViewModel;
        return cell;
    }else{
        CFScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CFScorecardSaveB = ^(CFScoringSaveTableViewCell * _Nonnull cell) {
            [self.CFtimer setFireDate:[NSDate distantFuture]];
            [weakSelf CFsave];
        };
        cell.CFModel = CFViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (CFScorecardModel *)CFScoreModel{
    if (!_CFScoreModel) {
        _CFScoreModel = [[CFScorecardModel alloc] init];
    }
    return _CFScoreModel;
}
- (NSMutableArray *)CFviewDataArray{
    if (!_CFviewDataArray) {
        _CFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CFviewDataArray;
}
- (UITableView *)CFmainTable{
    if (!_CFmainTable) {
        _CFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CFmainTable.showsVerticalScrollIndicator = NO;
        _CFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CFmainTable.delegate = self;
        _CFmainTable.dataSource = self;
        _CFmainTable.rowHeight = UITableViewAutomaticDimension;
        _CFmainTable.estimatedRowHeight = 55.0f;
        _CFmainTable.tableHeaderView = [[UIView alloc] init];
        _CFmainTable.tableFooterView = [[UIView alloc] init];
        _CFmainTable.layer.cornerRadius = 16.0f;
        _CFmainTable.layer.masksToBounds = YES;
        [_CFmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_CFmainTable registerClass:[CFBothTeamsTableViewCell class] forCellReuseIdentifier:@"CFBothTeamsTableViewCell"];
        [_CFmainTable registerClass:[CFScoringPartTableViewCell class] forCellReuseIdentifier:@"CFScoringPartTableViewCell"];
        [_CFmainTable registerClass:[CFTimePortionTableViewCell class] forCellReuseIdentifier:@"CFTimePortionTableViewCell"];
        [_CFmainTable registerClass:[CFScoringSaveTableViewCell class] forCellReuseIdentifier:@"CFScoringSaveTableViewCell"];
        [self.view addSubview:_CFmainTable];
        [_CFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-CFHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(CFCloseKeyBoard)];
        [_CFmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _CFmainTable;
}
@end
