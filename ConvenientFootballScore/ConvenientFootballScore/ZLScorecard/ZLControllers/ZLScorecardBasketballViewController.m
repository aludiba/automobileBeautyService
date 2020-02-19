//
//  ZLScorecardBasketballViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "ZLScorecardBasketballViewController.h"
#import "ZLLoginViewController.h"
#import "ZLBasketballBothTeamsTableViewCell.h"
#import "ZLBasketballScoringPartTableViewCell.h"
#import "ZLBasketballTimePortionTableViewCell.h"
#import "ZLBasketballScoringSaveTableViewCell.h"
#import "ZLBasketballScorecardModel.h"
#import "ZLBasketballScorecardViewModel.h"
@interface ZLScorecardBasketballViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)ZLBasketballScorecardModel *ZLScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *ZLviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *ZLmainTable;//数据列表
@property (nonatomic,strong )NSTimer *ZLtimer;//定时器
@end

@implementation ZLScorecardBasketballViewController
+ (ZLScorecardBasketballViewController *)shareInstance{
    static ZLScorecardBasketballViewController  *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ZLScorecardBasketballViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemGreenColor];
    [self ZLSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)ZLSetContentView{
    [self.ZLviewDataArray removeAllObjects];
    
    ZLBasketballScorecardViewModel *ZLBothTeamsModel = [[ZLBasketballScorecardViewModel alloc] init];
    ZLBothTeamsModel.cellType = ZLScorecardCellTypeBothTeams;
    ZLBothTeamsModel.ZLTeamRightName = @"";
    ZLBothTeamsModel.ZLTeamLeftName = @"";
    [self.ZLviewDataArray addObject:ZLBothTeamsModel];
    
    ZLBasketballScorecardViewModel *ZLScoringPartModel = [[ZLBasketballScorecardViewModel alloc] init];
    ZLScoringPartModel.cellType = ZLScorecardCellTypeScoringPart;
    ZLScoringPartModel.ZLRightscore = 0;
    ZLScoringPartModel.ZLLeftscore = 0;
    ZLScoringPartModel.ZLIndexTime = 0;
    [self.ZLviewDataArray addObject:ZLScoringPartModel];
    
    ZLBasketballScorecardViewModel *ZLTimePortionModel = [[ZLBasketballScorecardViewModel alloc] init];
    ZLTimePortionModel.cellType = ZLScorecardCellTypeTimePortion;
    ZLTimePortionModel.ZLTimeStatisticsDateString = @"00:00";
    [self.ZLviewDataArray addObject:ZLTimePortionModel];
    
    ZLBasketballScorecardViewModel *ZLScoringSaveModel = [[ZLBasketballScorecardViewModel alloc] init];
    ZLScoringSaveModel.cellType = ZLScorecardCellTypeSave;
    [self.ZLviewDataArray addObject:ZLScoringSaveModel];
    
    [self.ZLmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)ZLCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)ZLsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self ZLsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ZLKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)ZLsaveAction{
    if (self.ZLviewDataArray.count) {
    ZLBasketballScorecardViewModel *viewModel = self.ZLviewDataArray[0];
    self.ZLScoreModel.ZLTeamRightName = viewModel.ZLTeamRightName;
    self.ZLScoreModel.ZLTeamLeftName = viewModel.ZLTeamLeftName;
    
    ZLBasketballScorecardViewModel *viewModel1 = self.ZLviewDataArray[1];
    self.ZLScoreModel.ZLTeamRightScore = viewModel1.ZLRightscore;
    self.ZLScoreModel.ZLTeamLeftScore = viewModel1.ZLLeftscore;
    
    ZLBasketballScorecardViewModel *viewModel2 = self.ZLviewDataArray[2];
    self.ZLScoreModel.ZLTotalTimeString = viewModel2.ZLTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [ZLUIUtilities ZLformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.ZLScoreModel.ZLEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.ZLScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"ZLBasketballScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_ZLScoreModel = nil;
            self->_ZLmainTable = nil;
            [self.ZLtimer setFireDate:[NSDate distantFuture]];
            self.ZLtimer = nil;
            [self ZLSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 保存
- (void)ZLsave{
    ZLBasketballScorecardViewModel *viewModel2 = self.ZLviewDataArray[2];
       if (!viewModel2.ZLTimeStatisticsDate){
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    ZLBasketballScorecardViewModel *viewModel = self.ZLviewDataArray[0];
    if (!viewModel.ZLTeamRightName.length || !viewModel.ZLTeamLeftName.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.ZLScoreModel.ZLNatureCompetition.length) {
        [self ZLsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.ZLScoreModel.ZLNatureCompetition.length) {
            [self ZLsaveLoginJudge];
        }else{
            [self ZLsave];
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
    self.ZLScoreModel.ZLNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.ZLScoreModel.ZLNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.ZLScoreModel.ZLNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ZLviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZLBasketballScorecardViewModel *ZLViewModel = self.ZLviewDataArray[indexPath.row];
    if (ZLViewModel.cellType == ZLScorecardCellTypeBothTeams) {
        ZLBasketballBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLBasketballBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ZLModel = ZLViewModel;
        return cell;
    }else if (ZLViewModel.cellType == ZLScorecardCellTypeScoringPart){
        ZLBasketballScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLBasketballScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ZLModel = ZLViewModel;
        return cell;
    }else if (ZLViewModel.cellType == ZLScorecardCellTypeTimePortion){
        ZLBasketballTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLBasketballTimePortionTableViewCell" forIndexPath:indexPath];
        self.ZLtimer = cell.ZLTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ZLScorecardTimingB = ^(ZLBasketballTimePortionTableViewCell * _Nonnull cell) {
            if (cell.ZLIndex == 0) {
                self.ZLScoreModel.ZLNatureCompetition = @"";
                self.ZLScoreModel.ZLTeamRightName = @"";//右边队伍名称
                self.ZLScoreModel.ZLTeamRightScore = 0;//右边队伍得分
                self.ZLScoreModel.ZLTeamLeftName = @"";//左边队伍名称
                self.ZLScoreModel.ZLTeamLeftScore = 0;//左边队伍得分
                self.ZLScoreModel.ZLTotalTimeString = @"";//总共用时
                self.ZLScoreModel.ZLEndTimeString = @"";//结束时
                [weakSelf ZLSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf ZLsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.ZLModel = ZLViewModel;
        return cell;
    }else{
        ZLBasketballScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLBasketballScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.ZLScorecardSaveB = ^(ZLBasketballScoringSaveTableViewCell * _Nonnull cell) {
            [self.ZLtimer setFireDate:[NSDate distantFuture]];
            [weakSelf ZLsave];
        };
        cell.ZLModel = ZLViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (ZLBasketballScorecardModel *)ZLScoreModel{
    if (!_ZLScoreModel) {
        _ZLScoreModel = [[ZLBasketballScorecardModel alloc] init];
    }
    return _ZLScoreModel;
}
- (NSMutableArray *)ZLviewDataArray{
    if (!_ZLviewDataArray) {
        _ZLviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ZLviewDataArray;
}
- (UITableView *)ZLmainTable{
    if (!_ZLmainTable) {
        _ZLmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ZLmainTable.backgroundColor = [UIColor greenColor];
        _ZLmainTable.showsVerticalScrollIndicator = NO;
        _ZLmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ZLmainTable.delegate = self;
        _ZLmainTable.dataSource = self;
        _ZLmainTable.rowHeight = UITableViewAutomaticDimension;
        _ZLmainTable.estimatedRowHeight = 55.0f;
        _ZLmainTable.tableHeaderView = [[UIView alloc] init];
        _ZLmainTable.tableFooterView = [[UIView alloc] init];
        _ZLmainTable.layer.cornerRadius = 4.0f;
        _ZLmainTable.layer.masksToBounds = YES;
        [_ZLmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_ZLmainTable registerClass:[ZLBasketballBothTeamsTableViewCell class] forCellReuseIdentifier:@"ZLBasketballBothTeamsTableViewCell"];
        [_ZLmainTable registerClass:[ZLBasketballScoringPartTableViewCell class] forCellReuseIdentifier:@"ZLBasketballScoringPartTableViewCell"];
        [_ZLmainTable registerClass:[ZLBasketballTimePortionTableViewCell class] forCellReuseIdentifier:@"ZLBasketballTimePortionTableViewCell"];
        [_ZLmainTable registerClass:[ZLBasketballScoringSaveTableViewCell class] forCellReuseIdentifier:@"ZLBasketballScoringSaveTableViewCell"];
        [self.view addSubview:_ZLmainTable];
        [_ZLmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-ZLHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(ZLCloseKeyBoard)];
        [_ZLmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _ZLmainTable;
}
@end
