//
//  GAScorecardFootballViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "GAScorecardFootballViewController.h"
#import "GALoginViewController.h"
#import "GABothTeamsTableViewCell.h"
#import "GAScoringPartTableViewCell.h"
#import "GATimePortionTableViewCell.h"
#import "GAScoringSaveTableViewCell.h"
#import "GAScorecardModel.h"
#import "GAScorecardViewModel.h"
@interface GAScorecardFootballViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)GAScorecardModel *GAScoreModel;//分数模型
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *GAmainTable;//数据列表
@property (nonatomic,strong )NSTimer *GAtimer;//定时器
@end

@implementation GAScorecardFootballViewController
+ (GAScorecardFootballViewController *)shareInstance{
    static GAScorecardFootballViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GAScorecardFootballViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self GASetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)GASetContentView{
    self.view.backgroundColor = [UIColor clearColor];
    [self.GAviewDataArray removeAllObjects];
    
    GAScorecardViewModel *GABothTeamsModel = [[GAScorecardViewModel alloc] init];
    GABothTeamsModel.cellType = GAScorecardCellTypeBothTeams;
    GABothTeamsModel.GATeamRightName = @"";
    GABothTeamsModel.GATeamLeftName = @"";
    [self.GAviewDataArray addObject:GABothTeamsModel];
    
    GAScorecardViewModel *GAScoringPartModel = [[GAScorecardViewModel alloc] init];
    GAScoringPartModel.cellType = GAScorecardCellTypeScoringPart;
    GAScoringPartModel.GARightscore = 0;
    GAScoringPartModel.GALeftscore = 0;
    GAScoringPartModel.GAIndexTime = 0;
    [self.GAviewDataArray addObject:GAScoringPartModel];
    
    GAScorecardViewModel *GATimePortionModel = [[GAScorecardViewModel alloc] init];
    GATimePortionModel.cellType = GAScorecardCellTypeTimePortion;
    GATimePortionModel.GATimeStatisticsDateString = @"00:00";
    [self.GAviewDataArray addObject:GATimePortionModel];
    
    GAScorecardViewModel *GAScoringSaveModel = [[GAScorecardViewModel alloc] init];
    GAScoringSaveModel.cellType = GAScorecardCellTypeSave;
    [self.GAviewDataArray addObject:GAScoringSaveModel];
    
    [self.GAmainTable reloadData];
}
#pragma mark - actions
#pragma mark - 关闭键盘
- (void)GACloseKeyBoard{
    [self.view endEditing:YES];
}
#pragma mark - 保存功能
- (void)GAsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self GAsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            GALoginViewController *loginVC = [GALoginViewController shareInstance];
            loginVC.type = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)GAsaveAction{
    if (self.GAviewDataArray.count) {
    GAScorecardViewModel *viewModel = self.GAviewDataArray[0];
    self.GAScoreModel.GATeamRightName = viewModel.GATeamRightName;
    self.GAScoreModel.GATeamLeftName = viewModel.GATeamLeftName;
    
    GAScorecardViewModel *viewModel1 = self.GAviewDataArray[1];
    self.GAScoreModel.GATeamRightScore = viewModel1.GARightscore;
    self.GAScoreModel.GATeamLeftScore = viewModel1.GALeftscore;
    
    GAScorecardViewModel *viewModel2 = self.GAviewDataArray[2];
    self.GAScoreModel.GATotalTimeString = viewModel2.GATimeStatisticsDateString;
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *nowDateString = [GAUIUtilities GAformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd HH:mm"];
    self.GAScoreModel.GAEndTimeString = nowDateString;
    
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.GAScoreModel yy_modelToJSONObject]];
    AVObject *diary = [AVObject objectWithClassName:@"GAFootballScore"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"保存成功", nil)];
            self->_GAScoreModel = nil;
            self->_GAmainTable = nil;
            [self.GAtimer setFireDate:[NSDate distantFuture]];
            self.GAtimer = nil;
            [self GASetContentView];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 保存
- (void)GAsave{
    GAScorecardViewModel *viewModel2 = self.GAviewDataArray[2];
       if (!viewModel2.GATimeStatisticsDate){
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请先开始比赛", nil)];
        return;
    }
    
    GAScorecardViewModel *viewModel = self.GAviewDataArray[0];
    if (!viewModel.GATeamRightName.length || !viewModel.GATeamLeftName.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请完整填写队伍名称", nil)];
        return;
    }
    if (self.GAScoreModel.GANatureCompetition.length) {
        [self GAsaveLoginJudge];
    }else{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请输入比赛名称", nil) preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (self.GAScoreModel.GANatureCompetition.length) {
            [self GAsaveLoginJudge];
        }else{
            [self GAsave];
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
    self.GAScoreModel.GANatureCompetition = textField.text;
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    self.GAScoreModel.GANatureCompetition = textField.text;
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.GAScoreModel.GANatureCompetition = textField.text;
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GAScorecardViewModel *GAViewModel = self.GAviewDataArray[indexPath.row];
    if (GAViewModel.cellType == GAScorecardCellTypeBothTeams) {
        GABothTeamsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GABothTeamsTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.GAModel = GAViewModel;
        return cell;
    }else if (GAViewModel.cellType == GAScorecardCellTypeScoringPart){
        GAScoringPartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAScoringPartTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.GAModel = GAViewModel;
        return cell;
    }else if (GAViewModel.cellType == GAScorecardCellTypeTimePortion){
        GATimePortionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GATimePortionTableViewCell" forIndexPath:indexPath];
        self.GAtimer = cell.GATimer;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.GAScorecardTimingB = ^(GATimePortionTableViewCell * _Nonnull cell) {
            if (cell.GAIndex == 0) {
                self.GAScoreModel.GANatureCompetition = @"";
                self.GAScoreModel.GATeamRightName = @"";//右边队伍名称
                self.GAScoreModel.GATeamRightScore = 0;//右边队伍得分
                self.GAScoreModel.GATeamLeftName = @"";//左边队伍名称
                self.GAScoreModel.GATeamLeftScore = 0;//左边队伍得分
                self.GAScoreModel.GATotalTimeString = @"";//总共用时
                self.GAScoreModel.GAEndTimeString = @"";//结束时
                [weakSelf GASetContentView];
            }else{
                UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否保存比赛结果?", nil) preferredStyle:UIAlertControllerStyleAlert];
                UIAlertAction *actionCancel = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
                    
                }];
                UIAlertAction *actionSure = [UIAlertAction actionWithTitle:NSLocalizedString(@"保存", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                    [weakSelf GAsave];
                }];
                [alertVC addAction:actionCancel];
                [alertVC addAction:actionSure];
                [self presentViewController:alertVC animated:YES completion:nil];
            }
        };
        cell.GAModel = GAViewModel;
        return cell;
    }else{
        GAScoringSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAScoringSaveTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        __weak typeof(self) weakSelf = self;
        cell.GAScorecardSaveB = ^(GAScoringSaveTableViewCell * _Nonnull cell) {
            [self.GAtimer setFireDate:[NSDate distantFuture]];
            [weakSelf GAsave];
        };
        cell.GAModel = GAViewModel;
        return cell;
    }
}
#pragma mark - 属性懒加载
- (GAScorecardModel *)GAScoreModel{
    if (!_GAScoreModel) {
        _GAScoreModel = [[GAScorecardModel alloc] init];
    }
    return _GAScoreModel;
}
- (NSMutableArray *)GAviewDataArray{
    if (!_GAviewDataArray) {
        _GAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GAviewDataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.backgroundColor = [UIColor greenColor];
        _GAmainTable.showsVerticalScrollIndicator = NO;
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_GAmainTable registerClass:[GABothTeamsTableViewCell class] forCellReuseIdentifier:@"GABothTeamsTableViewCell"];
        [_GAmainTable registerClass:[GAScoringPartTableViewCell class] forCellReuseIdentifier:@"GAScoringPartTableViewCell"];
        [_GAmainTable registerClass:[GATimePortionTableViewCell class] forCellReuseIdentifier:@"GATimePortionTableViewCell"];
        [_GAmainTable registerClass:[GAScoringSaveTableViewCell class] forCellReuseIdentifier:@"GAScoringSaveTableViewCell"];
        [self.view addSubview:_GAmainTable];
        [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-GAHeightTabBar);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(GACloseKeyBoard)];
        [_GAmainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _GAmainTable;
}
@end
