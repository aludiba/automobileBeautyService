//
//  WAClockViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WAClockViewController.h"
#import "WAClockTableViewCell.h"
#import "WADrinkingPlanViewController.h"
#import "WADrinkingPlanSaveModel.h"
#import "WADrinkingPlanClockView.h"
@interface WAClockViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, copy)NSString *objectId;
@property(nonatomic, strong)WADrinkingPlanSaveModel *saveModel;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)WADrinkingPlanClockView *drinkingPlanClockView;
@end

@implementation WAClockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"打卡", nil);
    [self loadData];
}
- (void)loadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"WADrinkingPlan"];
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
                weakSelf.saveModel.clockInDate = [obj objectForKey:@"clockInDate"];
                weakSelf.saveModel.saveDate = [obj objectForKey:@"saveDate"];
                weakSelf.saveModel.wineAges = [[obj objectForKey:@"wineAges"] integerValue];
                weakSelf.saveModel.timeDrinkDate = [obj objectForKey:@"timeDrinkDate"];
                weakSelf.saveModel.drinkEveryDay = [[obj objectForKey:@"drinkEveryDay"] integerValue];
                weakSelf.saveModel.winePrices = [[obj objectForKey:@"winePrices"] integerValue];
                weakSelf.saveModel.alcoholContent = [[obj objectForKey:@"alcoholContent"] integerValue];
                weakSelf.saveModel.numberBottlesDrunk = [[obj objectForKey:@"numberBottlesDrunk"] integerValue];
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
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"clockInDate"];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"saveDate"];
    NSString *dateString = [WAUIUtilities WAformattedTimeStringWithDate:self.saveModel.timeDrinkDate format:@"yyyy-MM-dd"];
    NSDate *date = [WAUIUtilities WAdateFromString:dateString formate:@"yyyy-MM-dd"];
    [jsonDictionary setObject:date forKey:@"timeDrinkDate"];
    NSLog(@"jsonDictionary:%@",jsonDictionary);
    if (self.objectId.length) {
        BmobObject *diary = [BmobObject objectWithoutDataWithClassName:@"WADrinkingPlan" objectId:self.objectId];
        [diary saveAllWithDictionary:jsonDictionary];
        BmobUser *author = [BmobUser currentUser];
        [diary setObject:author forKey:@"author"];
        [diary updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //创建成功后的动作
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            } else if (error){
                //发生错误后的动作
                NSLog(@"error:%@",error);
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            } else {
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

            }
        }];
    }else{
    BmobObject *diary = [BmobObject objectWithClassName:@"WADrinkingPlan"];
    [diary saveAllWithDictionary:jsonDictionary];
    BmobUser *author = [BmobUser currentUser];
    [diary setObject:author forKey:@"author"];
    [diary saveInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            //创建成功后的动作
            [MBProgressHUD WAshowReminderText:NSLocalizedString(@"保存成功", nil)];
        } else if (error){
            //发生错误后的动作
            [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

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
    WAClockTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WAClockTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.model = self.saveModel;
    __weak typeof(self) weakSelf = self;
    cell.WAClockCellB = ^(WAClockTableViewCell * _Nonnull cell) {
        if (cell.selectIndex == 0) {
            WADrinkingPlanViewController *WADrinkingPlanVC = [[WADrinkingPlanViewController alloc] init];
            WADrinkingPlanVC.hidesBottomBarWhenPushed = YES;
            WADrinkingPlanVC.objectId = weakSelf.objectId;
            WADrinkingPlanVC.saveModel = weakSelf.saveModel;
            WADrinkingPlanVC.superVC = weakSelf;
            [weakSelf.navigationController pushViewController:WADrinkingPlanVC animated:YES];
        }else if (cell.selectIndex == 1){
            if (weakSelf.objectId.length) {
            NSDate *nowDate = [[NSDate alloc] init];
            NSString *nowDateString = [WAUIUtilities WAformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd"];
            NSString *clockDateString = [WAUIUtilities WAformattedTimeStringWithDate:weakSelf.saveModel.clockInDate format:@"yyyy-MM-dd"];
            if ([nowDateString isEqualToString:clockDateString]) {
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"今天已经打卡", nil)];
            }else{
            weakSelf.drinkingPlanClockView.hidden = NO;
            }
            }else{
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请先创建目标", nil)];
            }
        }
    };
    return cell;
}
#pragma mark - 属性懒加载
- (WADrinkingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[WADrinkingPlanSaveModel alloc] init];
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
        _mainTable.backgroundColor = WAH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[WAClockTableViewCell class] forCellReuseIdentifier:@"WAClockTableViewCell"];
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
- (WADrinkingPlanClockView *)drinkingPlanClockView{
    if (!_drinkingPlanClockView) {
        _drinkingPlanClockView = [[WADrinkingPlanClockView alloc] init];
        [WAKeyWindow addSubview:_drinkingPlanClockView];
        [_drinkingPlanClockView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(WAKeyWindow);
            make.top.equalTo(WAKeyWindow);
            make.trailing.equalTo(WAKeyWindow);
            make.bottom.equalTo(WAKeyWindow);
        }];
        __weak typeof(self) weakSelf = self;
        _drinkingPlanClockView.WADrinkingPlanClockSaveB = ^(WADrinkingPlanClockView * _Nonnull view) {
            weakSelf.saveModel.numberBottlesDrunk = [view.contentField.text integerValue];
            weakSelf.saveModel.cumulativeNumberDays += 1;
            weakSelf.saveModel.accumulativeBottle += (weakSelf.saveModel.drinkEveryDay - weakSelf.saveModel.numberBottlesDrunk);
            weakSelf.saveModel.cumulativeAmount = weakSelf.saveModel.accumulativeBottle * weakSelf.saveModel.winePrices;
            [weakSelf.mainTable reloadData];
            
            [weakSelf save];
        };
    }
    return _drinkingPlanClockView;
}
@end
