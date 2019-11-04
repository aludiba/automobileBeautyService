//
//  SOClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOClockViewController.h"
#import "SOClockTableViewCell.h"
#import "SOsodePlanViewController.h"
#import "SOsodePlanSaveModel.h"
#import "SOsodePlanClockView.h"
@interface SOClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)SOsodePlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)SOsodePlanClockView *drinkingPlanClockView;
@end

@implementation SOClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    AVObject *testObject = [AVObject objectWithClassName:@"TestObject"];
    [testObject setObject:@"Hello world!" forKey:@"words"];
    [testObject save];
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"SOsodePlan"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [self.mainTable.mj_header endRefreshing];
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.saveModel.SOclockInSAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"SOclockInSAndNumberB"]];
                weakSelf.saveModel.SOsaveDate = [obj objectForKey:@"SOsaveDate"];
                weakSelf.saveModel.SOsodeAges = [[obj objectForKey:@"SOsodeAges"] integerValue];
                weakSelf.saveModel.SOtimeGiveSodeDate = [obj objectForKey:@"SOtimeGiveSodeDate"];
                weakSelf.saveModel.SOsodeEveryDay = [[obj objectForKey:@"SOsodeEveryDay"] integerValue];
                weakSelf.saveModel.SOsodePrices = [[obj objectForKey:@"SOsodePrices"] integerValue];
                weakSelf.saveModel.SOcumulativeNubDays = [[obj objectForKey:@"SOcumulativeNubDays"] integerValue];
                weakSelf.saveModel.SOaccumulativeBot = [[obj objectForKey:@"SOaccumulativeBot"] integerValue];
                weakSelf.saveModel.SOcumulativeAmount = [[obj objectForKey:@"SOcumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"SOsaveDate"];
    NSString *dateString = [SOUIUtilities SOformattedTimeStringWithDate:self.saveModel.SOtimeGiveSodeDate format:@"yyyy-MM-dd"];
    NSDate *date = [SOUIUtilities SOdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"SOtimeGiveSodeDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"SOsodePlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"SOsodePlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

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
    SOClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.SOClockCellB = ^(SOClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            SOsodePlanViewController *SOsodePlanVC = [[SOsodePlanViewController alloc] init];
            SOsodePlanVC.hidesBottomBarWhenPushed = YES;
            SOsodePlanVC.objectId = weakSelf.objectId;
            SOsodePlanVC.saveModel = weakSelf.saveModel;
            SOsodePlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:SOsodePlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [SOUIUtilities SOformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.SOclockInSAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.SOclockInSAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (SOsodePlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[SOsodePlanSaveModel alloc] init];
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
        _mainTable.backgroundColor = SOH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[SOClockTableViewCell class] forCellReuseIdentifier:@"SOClockTableViewCell"];
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
- (SOsodePlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[SOsodePlanClockView alloc] init];
        [SOKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(SOKeyWindow);
            make.top.equalTo(SOKeyWindow);
            make.trailing.equalTo(SOKeyWindow);
            make.bottom.equalTo(SOKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.SOsodePlanClockSaveB = ^(SOsodePlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [SOUIUtilities SOformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [SOUIUtilities SOdateFromString:nowDateString formate:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberbottleDrink"];//当天喝苏打水瓶数
           [weakSelf.saveModel.SOclockInSAndNumberB addObject:dic];
            weakSelf.saveModel.SOcumulativeNubDays += 1;
            weakSelf.saveModel.SOaccumulativeBot += (weakSelf.saveModel.SOsodeEveryDay - [view.contentField.text integerValue]);
            weakSelf.saveModel.SOcumulativeAmount = weakSelf.saveModel.SOaccumulativeBot * weakSelf.saveModel.SOsodePrices;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
