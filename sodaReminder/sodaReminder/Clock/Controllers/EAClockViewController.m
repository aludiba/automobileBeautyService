//
//  EAClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAClockViewController.h"
#import "EAClockTableViewCell.h"
#import "EAsodePlanViewController.h"
#import "EAsodePlanSaveModel.h"
#import "EAsodePlanClockView.h"
@interface EAClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *EAobjectId;
@property(nonatomic, strong)EAsodePlanSaveModel *EAsaveModel;
@property(nonatomic, strong)NSMutableArray *EAviewDataArray;
@property(nonatomic, strong)UITableView *EAmainTable;
@property(nonatomic, strong)EAsodePlanClockView *EAdrinkingPlanClockView;
@end

@implementation EAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    self.view.backgroundColor = [UIColor whiteColor];
    [self EAloadData];
}
- (void)EAloadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"EAsodePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.EAmainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf EAsetContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.EAobjectId = [obj objectId];
             weakSelf.EAsaveModel.EAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"EAclockInSAndNumberB"]];
                weakSelf.EAsaveModel.EAsaveDate = [obj objectForKey:@"EAsaveDate"];
                weakSelf.EAsaveModel.EAsodeAges = [[obj objectForKey:@"EAsodeAges"] integerValue];
                weakSelf.EAsaveModel.EAtimeGiveSodeDate = [obj objectForKey:@"EAtimeGiveSodeDate"];
                weakSelf.EAsaveModel.EAsodeEveryDay = [[obj objectForKey:@"EAsodeEveryDay"] integerValue];
                weakSelf.EAsaveModel.EAsodePrices = [[obj objectForKey:@"EAsodePrices"] integerValue];
                weakSelf.EAsaveModel.EAcumulativeNubDays = [[obj objectForKey:@"EAcumulativeNubDays"] integerValue];
                weakSelf.EAsaveModel.EAaccumulativeBot = [[obj objectForKey:@"EAaccumulativeBot"] integerValue];
                weakSelf.EAsaveModel.EAcumulativeAmount = [[obj objectForKey:@"EAcumulativeAmount"] integerValue];
                [weakSelf EAsetContentView];
                }else{
                [weakSelf EAsetContentView];
                }
        }
    }];
}
- (void)EAsave{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.EAsaveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"EAsaveDate"];
    NSString *dateString = [EAUIUtilities EAformattedTimeStringWithDate:self.EAsaveModel.EAtimeGiveSodeDate format:@"yyyy-MM-dd"];
    NSDate *date = [EAUIUtilities EAdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"EAtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.EAobjectId.length) {
        AVObject *diary = [AVObject objectWithClassName:@"EAsodePlan" objectId:self.EAobjectId];
        for (NSString *key in jsonDictionary.allKeys) {
            [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
        }
        AVUser *author = [AVUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    AVObject *diary = [AVObject objectWithClassName:@"EAsodePlan"];
    for (NSString *key in jsonDictionary.allKeys) {
        [diary setObject:[jsonDictionary objectForKey:key]  forKey:key];
    }
    AVUser *author = [AVUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
- (void)EAsetContentView{
    [self.EAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.EAmodel = self.EAsaveModel;
    __weak typeof(self) weakSelf = self;
    cell.EAClockCellB = ^(EAClockTableViewCell * _Nonnull cell) {
        if (cell.EAselectIndex == 0) {
            EAsodePlanViewController *EAsodePlanVC = [[EAsodePlanViewController alloc] init];
            EAsodePlanVC.hidesBottomBarWhenPushed = YES;
            EAsodePlanVC.EAobjectId = weakSelf.EAobjectId;
            EAsodePlanVC.EAsaveModel = weakSelf.EAsaveModel;
            EAsodePlanVC.EAsuperVC = weakSelf;
            [weakSelf.navigationController pushViewController:EAsodePlanVC animated:YES];
        }else if (cell.EAselectIndex == 1){
            if (weakSelf.EAobjectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [EAUIUtilities EAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.EAsaveModel.EAclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.EAsaveModel.EAclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.EAdrinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (EAsodePlanSaveModel *)EAsaveModel{
    if (!_EAsaveModel) {
        _EAsaveModel = [[EAsodePlanSaveModel alloc] init];
    }
    return _EAsaveModel;
}
- (NSMutableArray *)EAviewDataArray{
    if (!_EAviewDataArray) {
        _EAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _EAviewDataArray;
}
- (UITableView *)EAmainTable{
    if (!_EAmainTable) {
        _EAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _EAmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _EAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _EAmainTable.delegate = self;
        _EAmainTable.dataSource = self;
        _EAmainTable.rowHeight = UITableViewAutomaticDimension;
        _EAmainTable.estimatedRowHeight = 55.0f;
        _EAmainTable.tableHeaderView = [[UIView alloc] init];
        _EAmainTable.tableFooterView = [[UIView alloc] init];
        [_EAmainTable registerClass:[EAClockTableViewCell class] forCellReuseIdentifier:@"EAClockTableViewCell"];
        _EAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(EAloadData)];
        [self.view addSubview:_EAmainTable];
           [_EAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _EAmainTable;
}
- (EAsodePlanClockView *)EAdrinkingPlanClockView{
    if (!_EAdrinkingPlanClockView) {
        _EAdrinkingPlanClockView = [[EAsodePlanClockView alloc] init];
        [EAKeyWindow addSubview:_EAdrinkingPlanClockView];
        [_EAdrinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(EAKeyWindow);
            make.top.equalTo(EAKeyWindow);
            make.trailing.equalTo(EAKeyWindow);
            make.bottom.equalTo(EAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _EAdrinkingPlanClockView.EAsodePlanClockSaveB = ^(EAsodePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [EAUIUtilities EAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.EAcontentField.text integerValue]] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
           [weakSelf.EAsaveModel.EAclockInSAndNumberB addObject:dic];
            weakSelf.EAsaveModel.EAcumulativeNubDays += 1;
            weakSelf.EAsaveModel.EAaccumulativeBot += (weakSelf.EAsaveModel.EAsodeEveryDay - [view.EAcontentField.text integerValue]);
            weakSelf.EAsaveModel.EAcumulativeAmount = weakSelf.EAsaveModel.EAaccumulativeBot * weakSelf.EAsaveModel.EAsodePrices;
            [weakSelf.EAmainTable reloadData];
            [weakSelf EAsave];
        };
    }
    return _EAdrinkingPlanClockView;
}
@end
