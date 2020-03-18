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
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)EAsodePlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)EAsodePlanClockView *drinkingPlanClockView;
@end

@implementation EAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"EAsodePlan"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.mainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                AVObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.saveModel.EAclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"EAclockInSAndNumberB"]];
                weakSelf.saveModel.EAsaveDate = [obj objectForKey:@"EAsaveDate"];
                weakSelf.saveModel.EAsodeAges = [[obj objectForKey:@"EAsodeAges"] integerValue];
                weakSelf.saveModel.EAtimeGiveSodeDate = [obj objectForKey:@"EAtimeGiveSodeDate"];
                weakSelf.saveModel.EAsodeEveryDay = [[obj objectForKey:@"EAsodeEveryDay"] integerValue];
                weakSelf.saveModel.EAsodePrices = [[obj objectForKey:@"EAsodePrices"] integerValue];
                weakSelf.saveModel.EAcumulativeNubDays = [[obj objectForKey:@"EAcumulativeNubDays"] integerValue];
                weakSelf.saveModel.EAaccumulativeBot = [[obj objectForKey:@"EAaccumulativeBot"] integerValue];
                weakSelf.saveModel.EAcumulativeAmount = [[obj objectForKey:@"EAcumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"EAsaveDate"];
    NSString *dateString = [EAUIUtilities EAformattedTimeStringWithDate:self.saveModel.EAtimeGiveSodeDate format:@"yyyy-MM-dd"];
    NSDate *date = [EAUIUtilities EAdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"EAtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        AVObject *diary = [AVObject objectWithClassName:@"EAsodePlan" objectId:self.objectId];
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
- (void)setContentView{
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.EAClockCellB = ^(EAClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            EAsodePlanViewController *EAsodePlanVC = [[EAsodePlanViewController alloc] init];
            EAsodePlanVC.hidesBottomBarWhenPushed = YES;
            EAsodePlanVC.objectId = weakSelf.objectId;
            EAsodePlanVC.saveModel = weakSelf.saveModel;
            EAsodePlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:EAsodePlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [EAUIUtilities EAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.EAclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.EAclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (EAsodePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[EAsodePlanSaveModel alloc] init];
    }
    return _saveModel;
}
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = EAH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[EAClockTableViewCell class] forCellReuseIdentifier:@"EAClockTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_mainTable];
           [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
               make.top.equalTo(self.view);
               make.leading.equalTo(self.view);
               make.trailing.equalTo(self.view);
               make.bottom.equalTo(self.view);
           }];
    }
    return _mainTable;
}
- (EAsodePlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[EAsodePlanClockView alloc] init];
        [EAKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(EAKeyWindow);
            make.top.equalTo(EAKeyWindow);
            make.trailing.equalTo(EAKeyWindow);
            make.bottom.equalTo(EAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.EAsodePlanClockSaveB = ^(EAsodePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [EAUIUtilities EAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [EAUIUtilities EAdateFromString:nowDateString formate:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
           [weakSelf.saveModel.EAclockInSAndNumberB addObject:dic];
            weakSelf.saveModel.EAcumulativeNubDays += 1;
            weakSelf.saveModel.EAaccumulativeBot += (weakSelf.saveModel.EAsodeEveryDay - [view.contentField.text integerValue]);
            weakSelf.saveModel.EAcumulativeAmount = weakSelf.saveModel.EAaccumulativeBot * weakSelf.saveModel.EAsodePrices;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
