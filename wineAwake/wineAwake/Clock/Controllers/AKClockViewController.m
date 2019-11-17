//
//  AKClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKClockViewController.h"
#import "AKClockTableViewCell.h"
#import "AKDrinkingPlanViewController.h"
#import "AKDrinkingPlanSaveModel.h"
#import "AKDrinkingPlanClockView.h"
@interface AKClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)AKDrinkingPlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)AKDrinkingPlanClockView *drinkingPlanClockView;
@end

@implementation AKClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"AKDrinkingPlan"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [weakSelf setContentView];
        }else{
            if (array.count) {
                BmobObject *obj = [array lastObject];
                weakSelf.objectId = [obj objectId];
             weakSelf.saveModel.clockInDAndNumberB = [[NSMutableArray alloc] initWithArray:[obj objectForKey:@"clockInDAndNumberB"]];
                weakSelf.saveModel.saveDate = [obj objectForKey:@"saveDate"];
                weakSelf.saveModel.wineAges = [[obj objectForKey:@"wineAges"] integerValue];
                weakSelf.saveModel.timeDrinkDate = [obj objectForKey:@"timeDrinkDate"];
                weakSelf.saveModel.drinkEveryDay = [[obj objectForKey:@"drinkEveryDay"] integerValue];
                weakSelf.saveModel.winePrices = [[obj objectForKey:@"winePrices"] integerValue];
                weakSelf.saveModel.alcoholContent = [[obj objectForKey:@"alcoholContent"] integerValue];
                weakSelf.saveModel.cumulativeNumberDays = [[obj objectForKey:@"cumulativeNumberDays"] integerValue];
                weakSelf.saveModel.accumulativeBottle = [[obj objectForKey:@"accumulativeBottle"] integerValue];
                weakSelf.saveModel.cumulativeAmount = [[obj objectForKey:@"cumulativeAmount"] integerValue];
                [weakSelf setContentView];
                }else{
                [weakSelf setContentView];
                }
        }
    }];
}
- (void)save{
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"saveDate"];
    NSString *dateString = [AKUIUtilities AKformattedTimeStringWithDate:self.saveModel.timeDrinkDate format:@"yyyy-MM-dd"];
    NSDate *date = [AKUIUtilities AKdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"timeDrinkDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"AKDrinkingPlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"AKDrinkingPlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

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
    AKClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.AKClockCellB = ^(AKClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            AKDrinkingPlanViewController *AKDrinkingPlanVC = [[AKDrinkingPlanViewController alloc] init];
            AKDrinkingPlanVC.hidesBottomBarWhenPushed = YES;
            AKDrinkingPlanVC.objectId = weakSelf.objectId;
            AKDrinkingPlanVC.saveModel = weakSelf.saveModel;
            AKDrinkingPlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:AKDrinkingPlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AKUIUtilities AKformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.clockInDAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.clockInDAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
//                    NSString *clockDateString = [AKUIUtilities AKformattedTimeStringWithDate:clockInDate format:@"yyyy-MM-dd"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (AKDrinkingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[AKDrinkingPlanSaveModel alloc] init];
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
        _mainTable.backgroundColor = AKH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[AKClockTableViewCell class] forCellReuseIdentifier:@"AKClockTableViewCell"];
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
- (AKDrinkingPlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[AKDrinkingPlanClockView alloc] init];
        [AKKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(AKKeyWindow);
            make.top.equalTo(AKKeyWindow);
            make.trailing.equalTo(AKKeyWindow);
            make.bottom.equalTo(AKKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.AKDrinkingPlanClockSaveB = ^(AKDrinkingPlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [AKUIUtilities AKformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [AKUIUtilities AKdateFromString:nowDateString formate:@"yyyy-MM-dd"];
            [dic setObject:nowDateString forKey:@"clockInDate"];
            [dic setObject:[NSNumber numberWithInteger:[view.contentField.text integerValue]] forKey:@"numberBottlesDrunk"];
           [weakSelf.saveModel.clockInDAndNumberB addObject:dic];
            weakSelf.saveModel.cumulativeNumberDays += 1;
            weakSelf.saveModel.accumulativeBottle += (weakSelf.saveModel.drinkEveryDay - [view.contentField.text integerValue]);
            weakSelf.saveModel.cumulativeAmount = weakSelf.saveModel.accumulativeBottle * weakSelf.saveModel.winePrices;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
