//
//  AHClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHClockViewController.h"
#import <SafariServices/SafariServices.h>
#import "AHClockTableViewCell.h"
#import "AHsodePlanViewController.h"
#import "AHsodePlanSaveModel.h"
#import "AHsodePlanClockView.h"
@interface AHClockViewController ()<UITableViewDelegate,UITableViewDataSource,SFSafariViewControllerDelegate>
@property(nonatomic, copy)NSString *AHobjectId;
@property(nonatomic, strong)AHsodePlanSaveModel *AHsaveModel;
@property(nonatomic, strong)NSMutableArray *AHviewDataArray;
@property(nonatomic, strong)UITableView *AHmainTable;
@property(nonatomic, strong)AHsodePlanClockView *AHdrinkingPlanClockView;
@property (nonatomic, assign)Boolean isBack;
@end

@implementation AHClockViewController
+ (AHClockViewController *)shareInstance{
    static AHClockViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AHClockViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    self.view.backgroundColor = [UIColor whiteColor];
    [self AHloadData];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSString *URL = @"http://mock-api.com/jz89Geg4.mock/neisr";
    [AHNDHTTPClient AHgetURLStringNoHUD:URL withParam:nil withSuccessBlock:^(id data) {
        if (!self.isBack) {
            if (data) {
                NSArray *arr = (NSArray *)data;
                SFSafariViewController *AHVC = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:[arr lastObject]]];
                AHVC.delegate = self;
                [self presentViewController:AHVC animated:YES completion:nil];
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
- (void)AHloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"AHsodePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.AHmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf AHsetContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.AHobjectId = [obj objectId];
             weakSelf.AHsaveModel.AHclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"AHclockInSAndNumberB"]];
                weakSelf.AHsaveModel.AHsaveDate = [obj objectForKey:@"AHsaveDate"];
                weakSelf.AHsaveModel.AHsodeAges = [[obj objectForKey:@"AHsodeAges"] integerValue];
                weakSelf.AHsaveModel.AHtimeGiveSodeDate = [obj objectForKey:@"AHtimeGiveSodeDate"];
                weakSelf.AHsaveModel.AHsodeEveryDay = [[obj objectForKey:@"AHsodeEveryDay"] integerValue];
                weakSelf.AHsaveModel.AHsodePrices = [[obj objectForKey:@"AHsodePrices"] integerValue];
                weakSelf.AHsaveModel.AHcumulativeNubDays = [[obj objectForKey:@"AHcumulativeNubDays"] integerValue];
                weakSelf.AHsaveModel.AHaccumulativeBot = [[obj objectForKey:@"AHaccumulativeBot"] integerValue];
                weakSelf.AHsaveModel.AHcumulativeAmount = [[obj objectForKey:@"AHcumulativeAmount"] integerValue];
                [weakSelf AHsetContentView];
                }else{
                [weakSelf AHsetContentView];
                }
        }
    }];
}
- (void)AHsave{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.AHsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"AHsaveDate"];
    NSString *dateString = [AHUIUtilities AHformattedTimeStringWithDate:self.AHsaveModel.AHtimeGiveSodeDate format:@"yyyy-MM-dd"];
    NSDate *date = [AHUIUtilities AHdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"AHtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.AHobjectId.length) {
        AVObject *diary = [AVObject objectWithClassName:@"AHsodePlan" objectId:self.AHobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"AHsodePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)AHsetContentView{
    [self.AHmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AHClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.AHmodel = self.AHsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.AHClockCellB = ^(AHClockTableViewCell * _Nonnull cell) {
        if (cell.AHselectIndex == 0) {
            AHsodePlanViewController *AHsodePlanVC = [[AHsodePlanViewController alloc] init];
            AHsodePlanVC.hidesBottomBarWhenPushed = YES;
            AHsodePlanVC.AHobjectId = weakSelf.AHobjectId;
            AHsodePlanVC.AHsaveModel = weakSelf.AHsaveModel;
            AHsodePlanVC.AHsuperVC = weakSelf;
            [weakSelf.navigationController pushViewController:AHsodePlanVC animated:YES];
        }else if (cell.AHselectIndex == 1){
            if (weakSelf.AHobjectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AHUIUtilities AHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.AHsaveModel.AHclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.AHsaveModel.AHclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.AHdrinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (AHsodePlanSaveModel *)AHsaveModel{
    if (!_AHsaveModel) {
        _AHsaveModel = [[AHsodePlanSaveModel alloc] init];
    }
    return _AHsaveModel;
}
- (NSMutableArray *)AHviewDataArray{
    if (!_AHviewDataArray) {
        _AHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AHviewDataArray;
}
- (UITableView *)AHmainTable{
    if (!_AHmainTable) {
        _AHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AHmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _AHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AHmainTable.delegate = self;
        _AHmainTable.dataSource = self;
        _AHmainTable.rowHeight = UITableViewAutomaticDimension;
        _AHmainTable.estimatedRowHeight = 55.0f;
        _AHmainTable.tableHeaderView = [[UIView alloc] init];
        _AHmainTable.tableFooterView = [[UIView alloc] init];
        [_AHmainTable registerClass:[AHClockTableViewCell class] forCellReuseIdentifier:@"AHClockTableViewCell"];
        _AHmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(AHloadData)];
        [self.view addSubview:_AHmainTable];
           [_AHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _AHmainTable;
}
- (AHsodePlanClockView *)AHdrinkingPlanClockView{
    if (!_AHdrinkingPlanClockView) {
        _AHdrinkingPlanClockView = [[AHsodePlanClockView alloc] init];
        [AHKeyWindow addSubview:_AHdrinkingPlanClockView];
        [_AHdrinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(AHKeyWindow);
            make.top.equalTo(AHKeyWindow);
            make.trailing.equalTo(AHKeyWindow);
            make.bottom.equalTo(AHKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _AHdrinkingPlanClockView.AHsodePlanClockSaveB = ^(AHsodePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AHUIUtilities AHformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.AHcontentField.text integerValue]] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
           [weakSelf.AHsaveModel.AHclockInSAndNumberB addObject:dic];
            weakSelf.AHsaveModel.AHcumulativeNubDays += 1;
            weakSelf.AHsaveModel.AHaccumulativeBot += (weakSelf.AHsaveModel.AHsodeEveryDay - [view.AHcontentField.text integerValue]);
            weakSelf.AHsaveModel.AHcumulativeAmount = weakSelf.AHsaveModel.AHaccumulativeBot * weakSelf.AHsaveModel.AHsodePrices;
            [weakSelf.AHmainTable reloadData];
            [weakSelf AHsave];
        };
    }
    return _AHdrinkingPlanClockView;
}
@end
