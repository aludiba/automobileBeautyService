//
//  AFSScorecardViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSScorecardViewController.h"
#import "AFSLoginViewController.h"
#import "AFSBothTeamsTableViewCell.h"
#import "AFSScoringPartTableViewCell.h"
#import "AFSTimePortionTableViewCell.h"
#import "AFSScoringSaveTableViewCell.h"
#import "AFSScorecardModel.h"
#import "AFSScorecardViewModel.h"
@interface AFSScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)AFSScorecardModel *AFSScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *AFSviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *AFSmainTable;//数据列表
@property (nonatomic,strong )NSTimer *AFStimer;//定时器
@end

@implementation AFSScorecardViewController
+ (AFSScorecardViewController *)shareInstance{
    static AFSScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AFSScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self AFSSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)AFSSetContentView{
    self.view.backgroundColor = [UIColor cyanColor];
    [self.AFSviewDataArray removeAllObjects];
    
    AFSScorecardViewModel *AFSBothTeamsModel = [[AFSScorecardViewModel alloc] init];
    AFSBothTeamsModel.cellType = AFSScorecardCellTypeBothTeams;
    AFSBothTeamsModel.AFSTeamRightName = @"";
    AFSBothTeamsModel.AFSTeamLeftName = @"";
    [self.AFSviewDataArray addObject:AFSBothTeamsModel];
    
    AFSScorecardViewModel *AFSScoringPartModel = [[AFSScorecardViewModel alloc] init];
    AFSScoringPartModel.cellType = AFSScorecardCellTypeScoringPart;
    AFSScoringPartModel.AFSRightscore = 0;
    AFSScoringPartModel.AFSLeftscore = 0;
    AFSScoringPartModel.AFSIndexTime = 0;
    [self.AFSviewDataArray addObject:AFSScoringPartModel];
    
    AFSScorecardViewModel *AFSTimePortionModel = [[AFSScorecardViewModel alloc] init];
    AFSTimePortionModel.cellType = AFSScorecardCellTypeTimePortion;
    AFSTimePortionModel.AFSTimeStatisticsDateString = @"00:00";
    [self.AFSviewDataArray addObject:AFSTimePortionModel];
    
    AFSScorecardViewModel *AFSScoringSaveModel = [[AFSScorecardViewModel alloc] init];
    AFSScoringSaveModel.cellType = AFSScorecardCellTypeSave;
    [self.AFSviewDataArray addObject:AFSScoringSaveModel];
    
    [self.AFSmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)AFSCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)AFSsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self AFSsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AFSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)AFSsaveAction{
    AFSScorecardViewModel *viewModel = self.AFSviewDataArray[0];
    self.AFSScoreModel.AFSTeamRightName = viewModel.AFSTeamRightName;
    self.AFSScoreModel.AFSTeamLeftName = viewModel.AFSTeamLeftName;
    
    AFSScorecardViewModel *viewModel1 = self.AFSviewDataArray[1];
    self.AFSScoreModel.AFSTeamRightScore = viewModel1.AFSRightscore;
    self.AFSScoreModel.AFSTeamLeftScore = viewModel1.AFSLeftscore;
    
    AFSScorecardViewModel *viewModel2 = self.AFSviewDataArray[2];
    self.AFSScoreModel.AFSTotalTimeString = viewModel2.AFSTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [AFSUIUtilities AFSformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.AFSScoreModel.AFSEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.AFSScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"AFSScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_AFSScoreModel = nil;
            self->_AFSmainTable = nil;
            [self.AFStimer setFireDate:[NSDate distantFuture]];
            self.AFStimer = nil;
            [self AFSSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)AFSsave{
    AFSScorecardViewModel *viewModel2 = self.AFSviewDataArray[2];
       if (!viewModel2.AFSTimeStatisticsDate){
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    AFSScorecardViewModel *viewModel = self.AFSviewDataArray[0];
    if (!viewModel.AFSTeamRightName.length || !viewModel.AFSTeamLeftName.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.AFSScoreModel.AFSNatureCompetition.length) {
        [self AFSsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.AFSScoreModel.AFSNatureCompetition.length) {
            [self AFSsaveLoginJudge];
        }else{
            [self AFSsave];
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
    self.AFSScoreModel.AFSNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.AFSScoreModel.AFSNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.AFSScoreModel.AFSNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AFSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFSScorecardViewModel *AFSViewModel = self.AFSviewDataArray[indexPath.row];
    if (AFSViewModel.cellType == AFSScorecardCellTypeBothTeams) {
        AFSBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.AFSModel = AFSViewModel;
        return cell;
    }else if (AFSViewModel.cellType == AFSScorecardCellTypeScoringPart){
        AFSScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.AFSModel = AFSViewModel;
        return cell;
    }else if (AFSViewModel.cellType == AFSScorecardCellTypeTimePortion){
        AFSTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSTimePortionTableViewCell" forIndexPath:indexPath];
        self.AFStimer = cell.AFSTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.AFSScorecardTimingB = ^(AFSTimePortionTableViewCell * _Nonnull cell) {
            if (cell.AFSIndex == 0) {
                self.AFSScoreModel.AFSNatureCompetition = @"";
                self.AFSScoreModel.AFSTeamRightName = @"";//右边队伍名称
                self.AFSScoreModel.AFSTeamRightScore = 0;//右边队伍得分
                self.AFSScoreModel.AFSTeamLeftName = @"";//左边队伍名称
                self.AFSScoreModel.AFSTeamLeftScore = 0;//左边队伍得分
                self.AFSScoreModel.AFSTotalTimeString = @"";//总共用时
                self.AFSScoreModel.AFSEndTimeString = @"";//结束时
                [weakSelf AFSSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf AFSsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.AFSModel = AFSViewModel;
        return cell;
    }else{
        AFSScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.AFSScorecardSaveB = ^(AFSScoringSaveTableViewCell * _Nonnull cell) {
            [self.AFStimer setFireDate:[NSDate distantFuture]];
            [weakSelf AFSsave];
        };
        cell.AFSModel = AFSViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (AFSScorecardModel *)AFSScoreModel{
    if (!_AFSScoreModel) {
        _AFSScoreModel = [[AFSScorecardModel alloc] init];
    }
    return _AFSScoreModel;
}
- (NSMutableArray *)AFSviewDataArray{
    if (!_AFSviewDataArray) {
        _AFSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AFSviewDataArray;
}
- (UITableView *)AFSmainTable{
    if (!_AFSmainTable) {
        _AFSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFSmainTable.showsVerticalScrollIndicator = NO;
        _AFSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AFSmainTable.delegate = self;
        _AFSmainTable.dataSource = self;
        _AFSmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFSmainTable.estimatedRowHeight = 55.0f;
        _AFSmainTable.tableHeaderView = [[UIView alloc] init];
        _AFSmainTable.tableFooterView = [[UIView alloc] init];
        _AFSmainTable.layer.cornerRadius = 16.0f;
        _AFSmainTable.layer.masksToBounds = YES;
        [_AFSmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_AFSmainTable registerClass:[AFSBothTeamsTableViewCell class] forCellReuseIdentifier:@"AFSBothTeamsTableViewCell"];
        [_AFSmainTable registerClass:[AFSScoringPartTableViewCell class] forCellReuseIdentifier:@"AFSScoringPartTableViewCell"];
        [_AFSmainTable registerClass:[AFSTimePortionTableViewCell class] forCellReuseIdentifier:@"AFSTimePortionTableViewCell"];
        [_AFSmainTable registerClass:[AFSScoringSaveTableViewCell class] forCellReuseIdentifier:@"AFSScoringSaveTableViewCell"];
        [self.view addSubview:_AFSmainTable];
        [_AFSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-AFSHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(AFSCloseKeyBoard)];
        [_AFSmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _AFSmainTable;
}
@end
