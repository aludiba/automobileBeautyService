//
//  CBSScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSScorecardViewController.h"
#import "CBSLoginViewController.h"
#import "CBSBothTeamsTableViewCell.h"
#import "CBSScoringPartTableViewCell.h"
#import "CBSTimePortionTableViewCell.h"
#import "CBSScoringSaveTableViewCell.h"
#import "CBSScorecardModel.h"
#import "CBSScorecardViewModel.h"
@interface CBSScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)CBSScorecardModel *CBSScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *CBSviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *CBSmainTable;//数据列表
@property (nonatomic,strong )NSTimer *CBStimer;//定时器
@end

@implementation CBSScorecardViewController
+ (CBSScorecardViewController *)shareInstance{
    static CBSScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CBSScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    self.view.backgroundColor = [UIColor cyanColor];
    [self CBSSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)CBSSetContentView{
    [self.CBSviewDataArray removeAllObjects];
    
    CBSScorecardViewModel *CBSBothTeamsModel = [[CBSScorecardViewModel alloc] init];
    CBSBothTeamsModel.cellType = CBSScorecardCellTypeBothTeams;
    CBSBothTeamsModel.CBSTeamRightName = @"";
    CBSBothTeamsModel.CBSTeamLeftName = @"";
    [self.CBSviewDataArray addObject:CBSBothTeamsModel];
    
    CBSScorecardViewModel *CBSScoringPartModel = [[CBSScorecardViewModel alloc] init];
    CBSScoringPartModel.cellType = CBSScorecardCellTypeScoringPart;
    CBSScoringPartModel.CBSRightscore = 0;
    CBSScoringPartModel.CBSLeftscore = 0;
    CBSScoringPartModel.CBSIndexTime = 0;
    [self.CBSviewDataArray addObject:CBSScoringPartModel];
    
    CBSScorecardViewModel *CBSTimePortionModel = [[CBSScorecardViewModel alloc] init];
    CBSTimePortionModel.cellType = CBSScorecardCellTypeTimePortion;
    CBSTimePortionModel.CBSTimeStatisticsDateString = @"00:00";
    [self.CBSviewDataArray addObject:CBSTimePortionModel];
    
    CBSScorecardViewModel *CBSScoringSaveModel = [[CBSScorecardViewModel alloc] init];
    CBSScoringSaveModel.cellType = CBSScorecardCellTypeSave;
    [self.CBSviewDataArray addObject:CBSScoringSaveModel];
    
    [self.CBSmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)CBSCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)CBSsaveLoginJudge{
    BmobUser *bUser = [BmobUser currentUser];
        if (bUser) {
            [self CBSsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            CBSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)CBSsaveAction{
    CBSScorecardViewModel *viewModel = self.CBSviewDataArray[0];
    self.CBSScoreModel.CBSTeamRightName = viewModel.CBSTeamRightName;
    self.CBSScoreModel.CBSTeamLeftName = viewModel.CBSTeamLeftName;
    
    CBSScorecardViewModel *viewModel1 = self.CBSviewDataArray[1];
    self.CBSScoreModel.CBSTeamRightScore = viewModel1.CBSRightscore;
    self.CBSScoreModel.CBSTeamLeftScore = viewModel1.CBSLeftscore;
    
    CBSScorecardViewModel *viewModel2 = self.CBSviewDataArray[2];
    self.CBSScoreModel.CBSTotalTimeString = viewModel2.CBSTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [CBSUIUtilities CBSformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.CBSScoreModel.CBSEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.CBSScoreModel yy_modelToJSONObject]];
    BmobObject *diary = [BmobObject objectWithClassName:@"CBSScore"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_CBSScoreModel = nil;
            self->_CBSmainTable = nil;
            [self.CBStimer setFireDate:[NSDate distantFuture]];
            self.CBStimer = nil;
            [self CBSSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)CBSsave{
    CBSScorecardViewModel *viewModel2 = self.CBSviewDataArray[2];
       if (!viewModel2.CBSTimeStatisticsDate){
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    CBSScorecardViewModel *viewModel = self.CBSviewDataArray[0];
    if (!viewModel.CBSTeamRightName.length || !viewModel.CBSTeamLeftName.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.CBSScoreModel.CBSNatureCompetition.length) {
        [self CBSsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.CBSScoreModel.CBSNatureCompetition.length) {
            [self CBSsaveLoginJudge];
        }else{
            [self CBSsave];
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
    self.CBSScoreModel.CBSNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.CBSScoreModel.CBSNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.CBSScoreModel.CBSNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CBSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CBSScorecardViewModel *CBSViewModel = self.CBSviewDataArray[indexPath.row];
    if (CBSViewModel.cellType == CBSScorecardCellTypeBothTeams) {
        CBSBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CBSModel = CBSViewModel;
        return cell;
    }else if (CBSViewModel.cellType == CBSScorecardCellTypeScoringPart){
        CBSScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.CBSModel = CBSViewModel;
        return cell;
    }else if (CBSViewModel.cellType == CBSScorecardCellTypeTimePortion){
        CBSTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSTimePortionTableViewCell" forIndexPath:indexPath];
        self.CBStimer = cell.CBSTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CBSScorecardTimingB = ^(CBSTimePortionTableViewCell * _Nonnull cell) {
            if (cell.CBSIndex == 0) {
                self.CBSScoreModel.CBSNatureCompetition = @"";
                self.CBSScoreModel.CBSTeamRightName = @"";//右边队伍名称
                self.CBSScoreModel.CBSTeamRightScore = 0;//右边队伍得分
                self.CBSScoreModel.CBSTeamLeftName = @"";//左边队伍名称
                self.CBSScoreModel.CBSTeamLeftScore = 0;//左边队伍得分
                self.CBSScoreModel.CBSTotalTimeString = @"";//总共用时
                self.CBSScoreModel.CBSEndTimeString = @"";//结束时
                [weakSelf CBSSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf CBSsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.CBSModel = CBSViewModel;
        return cell;
    }else{
        CBSScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.CBSScorecardSaveB = ^(CBSScoringSaveTableViewCell * _Nonnull cell) {
            [self.CBStimer setFireDate:[NSDate distantFuture]];
            [weakSelf CBSsave];
        };
        cell.CBSModel = CBSViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (CBSScorecardModel *)CBSScoreModel{
    if (!_CBSScoreModel) {
        _CBSScoreModel = [[CBSScorecardModel alloc] init];
    }
    return _CBSScoreModel;
}
- (NSMutableArray *)CBSviewDataArray{
    if (!_CBSviewDataArray) {
        _CBSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CBSviewDataArray;
}
- (UITableView *)CBSmainTable{
    if (!_CBSmainTable) {
        _CBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CBSmainTable.backgroundColor = [UIColor whiteColor];
        _CBSmainTable.showsVerticalScrollIndicator = NO;
        _CBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CBSmainTable.delegate = self;
        _CBSmainTable.dataSource = self;
        _CBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CBSmainTable.estimatedRowHeight = 55.0f;
        _CBSmainTable.tableHeaderView = [[UIView alloc] init];
        _CBSmainTable.tableFooterView = [[UIView alloc] init];
        _CBSmainTable.layer.cornerRadius = 4.0f;
        _CBSmainTable.layer.masksToBounds = YES;
        [_CBSmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_CBSmainTable registerClass:[CBSBothTeamsTableViewCell class] forCellReuseIdentifier:@"CBSBothTeamsTableViewCell"];
        [_CBSmainTable registerClass:[CBSScoringPartTableViewCell class] forCellReuseIdentifier:@"CBSScoringPartTableViewCell"];
        [_CBSmainTable registerClass:[CBSTimePortionTableViewCell class] forCellReuseIdentifier:@"CBSTimePortionTableViewCell"];
        [_CBSmainTable registerClass:[CBSScoringSaveTableViewCell class] forCellReuseIdentifier:@"CBSScoringSaveTableViewCell"];
        [self.view addSubview:_CBSmainTable];
        [_CBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-CBSHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(CBSCloseKeyBoard)];
        [_CBSmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _CBSmainTable;
}
@end
