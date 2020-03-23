//
//  AJClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJClockViewController.h"
#import <SafariServices/SafariServices.h>
#import "AJClockTableViewCell.h"
#import "AJgamePlanViewController.h"
#import "AJgamePlanSaveModel.h"
#import "AJgamePlanClockView.h"
#import "AJLoginViewController.h"
@interface AJClockViewController ()<UITableViewDelegate,UITableViewDataSource,SFSafariViewControllerDelegate>
@property(nonatomic, copy)NSString *AJobjectId;
@property(nonatomic, strong)AJgamePlanSaveModel *AJsaveModel;
@property(nonatomic, strong)NSMutableArray *AJviewDataArray;
@property(nonatomic, strong)UITableView *AJmainTable;
@property(nonatomic, strong)AJgamePlanClockView *AJgamePlanClockView;
@property (nonatomic, assign)Boolean isBack;
@end

@implementation AJClockViewController
+ (AJClockViewController *)AJshareInstance{
    static AJClockViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AJClockViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self AJloadData];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *URL = @"http://mock-api.com/Rz3yVMnM.mock/BAlertGame";
    [AJNDHTTPClient AJgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (!self.isBack) {
            if (data) {
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *AJVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                AJVC.delegate = self;
                [self presentViewController:AJVC animated:YES completion:nil];
            }else{
                
            }
        }
    }withErrorBlock:^(NSError *error, id errorData) {
    
    }];
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    self.isBack = NO;
}
#pragma mark - actions
#pragma mark - SFSafariViewControllerDelegate
//加载完成
- (void)safariViewController:(SFSafariViewController *)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    
}
//点击左上角的done
- (void)safariViewControllerDidFinish:(SFSafariViewController *)controller {
    self.isBack = YES;
}
- (void)AJloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AJgamePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.AJmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf AJsetContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.AJobjectId = [obj objectId];
             weakSelf.AJsaveModel.AJclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AJclockInSAndNumberB"]];
                weakSelf.AJsaveModel.AJsaveDate = [obj objectForKey:@"AJsaveDate"];
                weakSelf.AJsaveModel.AJgameAges = [[obj objectForKey:@"AJgameAges"] integerValue];
                weakSelf.AJsaveModel.AJtimeGiveGameDate = [obj objectForKey:@"AJtimeGiveGameDate"];
                weakSelf.AJsaveModel.AJgameEveryDay = [[obj objectForKey:@"AJgameEveryDay"] integerValue];
                weakSelf.AJsaveModel.AJgameLong = [[obj objectForKey:@"AJgameLong"] integerValue];
                weakSelf.AJsaveModel.AJcumulativeNubDays = [[obj objectForKey:@"AJcumulativeNubDays"] integerValue];
                weakSelf.AJsaveModel.AJaccumulativeGames = [[obj objectForKey:@"AJaccumulativeGames"] integerValue];
                weakSelf.AJsaveModel.AJcumulativeAmount = [[obj objectForKey:@"AJcumulativeAmount"] integerValue];
                [weakSelf AJsetContentView];
                }else{
                [weakSelf AJsetContentView];
                }
        }
    }];
}
- (void)AJsaveLoginJudge{
    AVUser *bUser = [AVUser currentUser];
        if (bUser) {
            [self AJsaveAction];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
            loginVC.AJtype = 1;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AJKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)AJsaveAction{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AJsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AJsaveDate"];
    NSString *dateString = [AJUIUtilities AJformattedTimeStringWithDate:self.AJsaveModel.AJtimeGiveGameDate format:@"yyyy/MM/dd"];
    NSDate *date = [AJUIUtilities AJdateFromString:dateString formate:@"yyyy/MM/dd"];
    [jsonDictionary setObject:date forKey:@"AJtimeGiveGameDate"];
    if (self.AJobjectId.length) {
        AVObject *diary = [AVObject objectWithoutDataWithClassName:@"AJgamePlan" objectId:self.AJobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AJgamePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)AJsave{
       if (!self.AJsaveModel.AJclockInSAndNumberB){
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请输入今天玩游戏次数", nil)];
        return;
      }
        [self AJsaveLoginJudge];
}
- (void)AJsetContentView{
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    [self.AJmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AJClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.AJmodel = self.AJsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.AJClockCellB = ^(AJClockTableViewCell * _Nonnull cell) {
        weakSelf.AJselectIndex = cell.AJselectIndex;
        if (cell.AJselectIndex == 0) {
            AVUser *bUser = [AVUser currentUser];
            if (bUser) {
                AJgamePlanViewController *AJgamePlanVC = [[AJgamePlanViewController alloc] init];
                AJgamePlanVC.hidesBottomBarWhenPushed = YES;
                AJgamePlanVC.AJobjectId = weakSelf.AJobjectId;
                AJgamePlanVC.AJsaveModel = weakSelf.AJsaveModel;
                AJgamePlanVC.AJsuperVC = weakSelf;
                [weakSelf.navigationController pushViewController:AJgamePlanVC animated:YES];
            }else{
            UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
            UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
                loginVC.AJtype = 1;
                UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
                AJKeyWindow.rootViewController = loginVCNav;
            }];
            [alertVC addAction:cancelAction];
            [alertVC addAction:sureAction];
            [weakSelf presentViewController:alertVC animated:YES completion:nil];
            }
        }else if (cell.AJselectIndex == 1){
            if (weakSelf.AJobjectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AJUIUtilities AJformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
                for (int i = 0; i < weakSelf.AJsaveModel.AJclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.AJsaveModel.AJclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.AJgamePlanClockView.hidden = NO;
            }else{
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (AJgamePlanSaveModel *)AJsaveModel{
    if (!_AJsaveModel) {
        _AJsaveModel = [[AJgamePlanSaveModel alloc] init];
    }
    return _AJsaveModel;
}
- (NSMutableArray *)AJviewDataArray{
    if (!_AJviewDataArray) {
        _AJviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AJviewDataArray;
}
- (UITableView *)AJmainTable{
    if (!_AJmainTable) {
        _AJmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AJmainTable.backgroundColor = AJH_Color(44, 77, 93, 1);
        _AJmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AJmainTable.delegate = self;
        _AJmainTable.dataSource = self;
        _AJmainTable.rowHeight = UITableViewAutomaticDimension;
        _AJmainTable.estimatedRowHeight = 55.0f;
        _AJmainTable.tableHeaderView = [[UIView alloc] init];
        _AJmainTable.tableFooterView = [[UIView alloc] init];
        [_AJmainTable registerClass:[AJClockTableViewCell class] forCellReuseIdentifier:@"AJClockTableViewCell"];
        _AJmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(AJloadData)];
        [self.view addSubview:_AJmainTable];
           [_AJmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _AJmainTable;
}
- (AJgamePlanClockView *)AJgamePlanClockView{
    if (!_AJgamePlanClockView) {
        _AJgamePlanClockView = [[AJgamePlanClockView alloc] init];
        [AJKeyWindow addSubview:_AJgamePlanClockView];
        [_AJgamePlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(AJKeyWindow);
            make.top.equalTo(AJKeyWindow);
            make.trailing.equalTo(AJKeyWindow);
            make.bottom.equalTo(AJKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _AJgamePlanClockView.AJgamePlanClockSaveB = ^(AJgamePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AJUIUtilities AJformattedTimeStringWithDate:nowDate format:@"yyyy/MM/dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.AJcontentField.text integerValue]] forKey:@"numberGamesPlayed"];//当天喝苏打水瓶数
           [weakSelf.AJsaveModel.AJclockInSAndNumberB addObject:dic];
            weakSelf.AJsaveModel.AJcumulativeNubDays += 1;
            weakSelf.AJsaveModel.AJaccumulativeGames += (weakSelf.AJsaveModel.AJgameEveryDay - [view.AJcontentField.text integerValue]);
            weakSelf.AJsaveModel.AJcumulativeAmount = weakSelf.AJsaveModel.AJaccumulativeGames * weakSelf.AJsaveModel.AJgameLong;
            [weakSelf.AJmainTable reloadData];
            
            [weakSelf AJsave];
        };
    }
    return _AJgamePlanClockView;
}
@end
