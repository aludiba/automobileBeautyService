//
//  YBPBSScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSScorecardViewController.h"
#import "YBPBSLoginViewController.h"
#import "YBPBSBothTeamsTableViewCell.h"
#import "YBPBSScoringPartTableViewCell.h"
#import "YBPBSTimePortionTableViewCell.h"
#import "YBPBSScoringSaveTableViewCell.h"
#import "YBPBSScorecardModel.h"
#import "YBPBSScorecardViewModel.h"
@interface YBPBSScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)YBPBSScorecardModel *YBPBSScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *YBPBSviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *YBPBSmainTable;//数据列表
@property (nonatomic,strong )NSTimer *YBPBStimer;//定时器
@end

@implementation YBPBSScorecardViewController
+ (YBPBSScorecardViewController *)shareInstance{
    static YBPBSScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBPBSScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    self.view.backgroundColor = [UIColor cyanColor];
    [self YBPBSSetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)YBPBSSetContentView{
    [self.YBPBSviewDataArray removeAllObjects];
    
    YBPBSScorecardViewModel *YBPBSBothTeamsModel = [[YBPBSScorecardViewModel alloc] init];
    YBPBSBothTeamsModel.cellType = YBPBSScorecardCellTypeBothTeams;
    YBPBSBothTeamsModel.YBPBSTeamRightName = @"";
    YBPBSBothTeamsModel.YBPBSTeamLeftName = @"";
    [self.YBPBSviewDataArray addObject:YBPBSBothTeamsModel];
    
    YBPBSScorecardViewModel *YBPBSScoringPartModel = [[YBPBSScorecardViewModel alloc] init];
    YBPBSScoringPartModel.cellType = YBPBSScorecardCellTypeScoringPart;
    YBPBSScoringPartModel.YBPBSRightscore = 0;
    YBPBSScoringPartModel.YBPBSLeftscore = 0;
    YBPBSScoringPartModel.YBPBSIndexTime = 0;
    [self.YBPBSviewDataArray addObject:YBPBSScoringPartModel];
    
    YBPBSScorecardViewModel *YBPBSTimePortionModel = [[YBPBSScorecardViewModel alloc] init];
    YBPBSTimePortionModel.cellType = YBPBSScorecardCellTypeTimePortion;
    YBPBSTimePortionModel.YBPBSTimeStatisticsDateString = @"00:00";
    [self.YBPBSviewDataArray addObject:YBPBSTimePortionModel];
    
    YBPBSScorecardViewModel *YBPBSScoringSaveModel = [[YBPBSScorecardViewModel alloc] init];
    YBPBSScoringSaveModel.cellType = YBPBSScorecardCellTypeSave;
    [self.YBPBSviewDataArray addObject:YBPBSScoringSaveModel];
    
    [self.YBPBSmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)YBPBSCloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)YBPBSsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self YBPBSsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YBPBSKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)YBPBSsaveAction{
    YBPBSScorecardViewModel *viewModel = self.YBPBSviewDataArray[0];
    self.YBPBSScoreModel.YBPBSTeamRightName = viewModel.YBPBSTeamRightName;
    self.YBPBSScoreModel.YBPBSTeamLeftName = viewModel.YBPBSTeamLeftName;
    
    YBPBSScorecardViewModel *viewModel1 = self.YBPBSviewDataArray[1];
    self.YBPBSScoreModel.YBPBSTeamRightScore = viewModel1.YBPBSRightscore;
    self.YBPBSScoreModel.YBPBSTeamLeftScore = viewModel1.YBPBSLeftscore;
    
    YBPBSScorecardViewModel *viewModel2 = self.YBPBSviewDataArray[2];
    self.YBPBSScoreModel.YBPBSTotalTimeString = viewModel2.YBPBSTimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [YBPBSUIUtilities YBPBSformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.YBPBSScoreModel.YBPBSEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.self.YBPBSScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"YBPBSScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_YBPBSScoreModel = nil;
            self->_YBPBSmainTable = nil;
            [self.YBPBStimer setFireDate:[NSDate distantFuture]];
            self.YBPBStimer = nil;
            [self YBPBSSetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
}
#pragma mark - 保存
- (void)YBPBSsave{
    YBPBSScorecardViewModel *viewModel2 = self.YBPBSviewDataArray[2];
       if (!viewModel2.YBPBSTimeStatisticsDate){
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    YBPBSScorecardViewModel *viewModel = self.YBPBSviewDataArray[0];
    if (!viewModel.YBPBSTeamRightName.length || !viewModel.YBPBSTeamLeftName.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.YBPBSScoreModel.YBPBSNatureCompetition.length) {
        [self YBPBSsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.YBPBSScoreModel.YBPBSNatureCompetition.length) {
            [self YBPBSsaveLoginJudge];
        }else{
            [self YBPBSsave];
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
    self.YBPBSScoreModel.YBPBSNatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.YBPBSScoreModel.YBPBSNatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.YBPBSScoreModel.YBPBSNatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YBPBSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YBPBSScorecardViewModel *YBPBSViewModel = self.YBPBSviewDataArray[indexPath.row];
    if (YBPBSViewModel.cellType == YBPBSScorecardCellTypeBothTeams) {
        YBPBSBothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSBothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.YBPBSModel = YBPBSViewModel;
        return cell;
    }else if (YBPBSViewModel.cellType == YBPBSScorecardCellTypeScoringPart){
        YBPBSScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.YBPBSModel = YBPBSViewModel;
        return cell;
    }else if (YBPBSViewModel.cellType == YBPBSScorecardCellTypeTimePortion){
        YBPBSTimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSTimePortionTableViewCell" forIndexPath:indexPath];
        self.YBPBStimer = cell.YBPBSTimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.YBPBSScorecardTimingB = ^(YBPBSTimePortionTableViewCell * _Nonnull cell) {
            if (cell.YBPBSIndex == 0) {
                self.YBPBSScoreModel.YBPBSNatureCompetition = @"";
                self.YBPBSScoreModel.YBPBSTeamRightName = @"";//右边队伍名称
                self.YBPBSScoreModel.YBPBSTeamRightScore = 0;//右边队伍得分
                self.YBPBSScoreModel.YBPBSTeamLeftName = @"";//左边队伍名称
                self.YBPBSScoreModel.YBPBSTeamLeftScore = 0;//左边队伍得分
                self.YBPBSScoreModel.YBPBSTotalTimeString = @"";//总共用时
                self.YBPBSScoreModel.YBPBSEndTimeString = @"";//结束时
                [weakSelf YBPBSSetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf YBPBSsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.YBPBSModel = YBPBSViewModel;
        return cell;
    }else{
        YBPBSScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.YBPBSScorecardSaveB = ^(YBPBSScoringSaveTableViewCell * _Nonnull cell) {
            [self.YBPBStimer setFireDate:[NSDate distantFuture]];
            [weakSelf YBPBSsave];
        };
        cell.YBPBSModel = YBPBSViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (YBPBSScorecardModel *)YBPBSScoreModel{
    if (!_YBPBSScoreModel) {
        _YBPBSScoreModel = [[YBPBSScorecardModel alloc] init];
    }
    return _YBPBSScoreModel;
}
- (NSMutableArray *)YBPBSviewDataArray{
    if (!_YBPBSviewDataArray) {
        _YBPBSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YBPBSviewDataArray;
}
- (UITableView *)YBPBSmainTable{
    if (!_YBPBSmainTable) {
        _YBPBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YBPBSmainTable.backgroundColor = [UIColor whiteColor];
        _YBPBSmainTable.showsVerticalScrollIndicator = NO;
        _YBPBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YBPBSmainTable.delegate = self;
        _YBPBSmainTable.dataSource = self;
        _YBPBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBPBSmainTable.estimatedRowHeight = 55.0f;
        _YBPBSmainTable.tableHeaderView = [[UIView alloc] init];
        _YBPBSmainTable.tableFooterView = [[UIView alloc] init];
        _YBPBSmainTable.layer.cornerRadius = 4.0f;
        _YBPBSmainTable.layer.masksToBounds = YES;
        [_YBPBSmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_YBPBSmainTable registerClass:[YBPBSBothTeamsTableViewCell class] forCellReuseIdentifier:@"YBPBSBothTeamsTableViewCell"];
        [_YBPBSmainTable registerClass:[YBPBSScoringPartTableViewCell class] forCellReuseIdentifier:@"YBPBSScoringPartTableViewCell"];
        [_YBPBSmainTable registerClass:[YBPBSTimePortionTableViewCell class] forCellReuseIdentifier:@"YBPBSTimePortionTableViewCell"];
        [_YBPBSmainTable registerClass:[YBPBSScoringSaveTableViewCell class] forCellReuseIdentifier:@"YBPBSScoringSaveTableViewCell"];
        [self.view addSubview:_YBPBSmainTable];
        [_YBPBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
            make.leading.equalTo(self.view).offset(20);
            make.trailing.equalTo(self.view).offset(-20);
            make.bottom.equalTo(self.view).offset(-YBPBSHeightTabBar - 20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(YBPBSCloseKeyBoard)];
        [_YBPBSmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _YBPBSmainTable;
}
@end
