//
//  PWClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWClockViewController.h"
#import "PWClockTableViewCell.h"
#import "PWDrinkingPlanViewController.h"
#import "PWDrinkingPlanSaveModel.h"
#import "PWDrinkingPlanClockView.h"
@interface PWClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)PWDrinkingPlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)PWDrinkingPlanClockView *drinkingPlanClockView;
@end

@implementation PWClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PWDrinkingPlan"];
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
    NSString *dateString = [PWUIUtilities PWformattedTimeStringWithDate:self.saveModel.timeDrinkDate format:@"yyyy-MM-dd"];
    NSDate *date = [PWUIUtilities PWdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"timeDrinkDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"PWDrinkingPlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"PWDrinkingPlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD PWshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

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
    PWClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PWClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.PWClockCellB = ^(PWClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            PWDrinkingPlanViewController *PWDrinkingPlanVC = [[PWDrinkingPlanViewController alloc] init];
            PWDrinkingPlanVC.hidesBottomBarWhenPushed = YES;
            PWDrinkingPlanVC.objectId = weakSelf.objectId;
            PWDrinkingPlanVC.saveModel = weakSelf.saveModel;
            PWDrinkingPlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:PWDrinkingPlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [PWUIUtilities PWformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
                for (int i = 0; i < weakSelf.saveModel.clockInDAndNumberB.count; i++) {
                    NSMutableDictionary *dic = [[NSMutableDictionary alloc] initWithDictionary:weakSelf.saveModel.clockInDAndNumberB[i]];
                    NSString *clockDateString = [dic objectForKey:@"clockInDate"];
//                    NSString *clockDateString = [PWUIUtilities PWformattedTimeStringWithDate:clockInDate format:@"yyyy-MM-dd"];
                    if ([nowDateString isEqualToString:clockDateString]) {
                        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
                        return;
                    }
                }
                weakSelf.drinkingPlanClockView.hidden = NO;
            }else{
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
                 return;
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (PWDrinkingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[PWDrinkingPlanSaveModel alloc] init];
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
        _mainTable.backgroundColor = PWH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PWClockTableViewCell class] forCellReuseIdentifier:@"PWClockTableViewCell"];
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
- (PWDrinkingPlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[PWDrinkingPlanClockView alloc] init];
        [PWKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(PWKeyWindow);
            make.top.equalTo(PWKeyWindow);
            make.trailing.equalTo(PWKeyWindow);
            make.bottom.equalTo(PWKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.PWDrinkingPlanClockSaveB = ^(PWDrinkingPlanClockView * _Nonnull view) {
            NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [PWUIUtilities PWformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
//            NSDate *clockInDate = [PWUIUtilities PWdateFromString:nowDateString formate:@"yyyy-MM-dd"];
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
