//
//  AFClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFClockViewController.h"
#import "AFClockTableViewCell.h"
#import "AFgamePlanViewController.h"
#import "AFgamePlanSaveModel.h"
#import "AFgamePlanClockView.h"
#import "AFLoginViewController.h"
@interface AFClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *AFobjectId;
@property(nonatomic, strong)AFgamePlanSaveModel *AFsaveModel;
@property(nonatomic, strong)NSMutableArray *AFviewDataArray;
@property(nonatomic, strong)UITableView *AFmainTable;
@property(nonatomic, strong)AFgamePlanClockView *AFgamePlanClockView;
@end

@implementation AFClockViewController
+ (AFClockViewController *)AFshareInstance{
    static AFClockViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AFClockViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self AFloadData];
}
- (void)AFloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AFgamePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.AFmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf AFsetContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.AFobjectId = [obj objectId];
             weakSelf.AFsaveModel.AFclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AFclockInSAndNumberB"]];
                weakSelf.AFsaveModel.AFsaveDate = [obj objectForKey:@"AFsaveDate"];
                weakSelf.AFsaveModel.AFgameAges = [[obj objectForKey:@"AFgameAges"] integerValue];
                weakSelf.AFsaveModel.AFtimeGiveGameDate = [obj objectForKey:@"AFtimeGiveGameDate"];
                weakSelf.AFsaveModel.AFgameEveryDay = [[obj objectForKey:@"AFgameEveryDay"] integerValue];
                weakSelf.AFsaveModel.AFgameLong = [[obj objectForKey:@"AFgameLong"] integerValue];
                weakSelf.AFsaveModel.AFcumulativeNubDays = [[obj objectForKey:@"AFcumulativeNubDays"] integerValue];
                weakSelf.AFsaveModel.AFaccumulativeGames = [[obj objectForKey:@"AFaccumulativeGames"] integerValue];
                weakSelf.AFsaveModel.AFcumulativeAmount = [[obj objectForKey:@"AFcumulativeAmount"] integerValue];
                [weakSelf AFsetContentView];
                }else{
                [weakSelf AFsetContentView];
                }
        }
    }];
}
- (void)AFsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self AFsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AFLoginViewController *loginVC = [AFLoginViewController AFshareInstance];
            loginVC.AFtype = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AFKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)AFsaveAction{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AFsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AFsaveDate"];
    NSString *dateString = [AFUIUtilities AFformattedTimeStringWithDate:self.AFsaveModel.AFtimeGiveGameDate format:@"yyyy/MM/dd"];
    NSDate *date = [AFUIUtilities AFdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"AFtimeGiveGameDate"];
    if (self.AFobjectId.length) {
        AVObject *diary = [AVObject objectWithoutDataWithClassName:@"AFgamePlan" objectId:self.AFobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AFgamePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)AFsave{
       if (!self.AFsaveModel.AFclockInSAndNumberB){
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请输入今天玩游戏次数", nil)];
        return;
      }
        [self AFsaveLoginJudge];
}
- (void)AFsetContentView{
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self.AFmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.AFmodel = self.AFsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.AFClockCellB = ^(AFClockTableViewCell * _Nonnull cell) {
        weakSelf.AFselectIndex = cell.AFselectIndex;
        if (cell.AFselectIndex == 0) {
            AVUser *bUser = [AVUser currentUser];
            if (bUser) {
                AFgamePlanViewController *AFgamePlanVC = [[AFgamePlanViewController alloc] init];
                AFgamePlanVC.hidesBottomBarWhenPushed = YES;
                AFgamePlanVC.AFobjectId = weakSelf.AFobjectId;
                AFgamePlanVC.AFsaveModel = weakSelf.AFsaveModel;
                AFgamePlanVC.AFsuperVC = weakSelf;
                [weakSelf.navigationController pushViewController:AFgamePlanVC animated:YES];
            }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                AFLoginViewController *loginVC = [AFLoginViewController AFshareInstance];
                loginVC.AFtype = 1;
                UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
                AFKeyWindow.rootViewController = loginVCNav;
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [weakSelf presentViewController:alertVC animated:YES completion:nil];
            }
        }else if (cell.AFselectIndex == 1){
            if (weakSelf.AFobjectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AFUIUtilities AFformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
                for (int i = 0; i < weakSelf.AFsaveModel.AFclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.AFsaveModel.AFclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.AFgamePlanClockView.hidden = NO;
            }else{
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (AFgamePlanSaveModel *)AFsaveModel{
    if (!_AFsaveModel) {
        _AFsaveModel = [[AFgamePlanSaveModel alloc] init];
    }
    return _AFsaveModel;
}
- (NSMutableArray *)AFviewDataArray{
    if (!_AFviewDataArray) {
        _AFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AFviewDataArray;
}
- (UITableView *)AFmainTable{
    if (!_AFmainTable) {
        _AFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFmainTable.backgroundColor = AFH_Color(44, 77, 93, 1);
        _AFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AFmainTable.delegate = self;
        _AFmainTable.dataSource = self;
        _AFmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFmainTable.estimatedRowHeight = 55.0f;
        _AFmainTable.tableHeaderView = [[UIView alloc] init];
        _AFmainTable.tableFooterView = [[UIView alloc] init];
        [_AFmainTable registerClass:[AFClockTableViewCell class] forCellReuseIdentifier:@"AFClockTableViewCell"];
        _AFmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(AFloadData)];
        [self.view addSubview:_AFmainTable];
           [_AFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _AFmainTable;
}
- (AFgamePlanClockView *)AFgamePlanClockView{
    if (!_AFgamePlanClockView) {
        _AFgamePlanClockView = [[AFgamePlanClockView alloc] init];
        [AFKeyWindow addSubview:_AFgamePlanClockView];
        [_AFgamePlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(AFKeyWindow);
            make.top.equalTo(AFKeyWindow);
            make.trailing.equalTo(AFKeyWindow);
            make.bottom.equalTo(AFKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _AFgamePlanClockView.AFgamePlanClockSaveB = ^(AFgamePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AFUIUtilities AFformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.AFcontentField.text integerValue]] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
           [weakSelf.AFsaveModel.AFclockInSAndNumberB addObject:dic];
            weakSelf.AFsaveModel.AFcumulativeNubDays += 1;
            weakSelf.AFsaveModel.AFaccumulativeGames += (weakSelf.AFsaveModel.AFgameEveryDay - [view.AFcontentField.text integerValue]);
            weakSelf.AFsaveModel.AFcumulativeAmount = weakSelf.AFsaveModel.AFaccumulativeGames * weakSelf.AFsaveModel.AFgameLong;
            [weakSelf.AFmainTable reloadData];
            
            [weakSelf AFsave];
        };
    }
    return _AFgamePlanClockView;
}
@end
