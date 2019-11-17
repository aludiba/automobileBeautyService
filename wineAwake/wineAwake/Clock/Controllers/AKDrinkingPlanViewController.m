//
//  AKDrinkingPlanViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKDrinkingPlanViewController.h"
#import "AKClockViewController.h"
#import "AKDrinkingPlanModel.h"
#import "AKDrinkingPlanSaveModel.h"
#import "AKDrinkingPlanEditTableViewCell.h"
#import "AKDrinkingPlanDateTableViewCell.h"
#import "AKDrinkingPlanSaveTableViewCell.h"

@interface AKDrinkingPlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation AKDrinkingPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"戒酒计划", nil);
    [self setContentView];
}
- (void)setContentView{
    AKDrinkingPlanModel *wineAgesModel = [[AKDrinkingPlanModel alloc] init];
    wineAgesModel.type = 0;
    wineAgesModel.title = NSLocalizedString(@"酒龄", nil);
    wineAgesModel.unit = NSLocalizedString(@"年", nil);
    if (self.objectId.length) {
        wineAgesModel.content = [NSString stringWithFormat:@"%ld",self.saveModel.wineAges];
    }
    wineAgesModel.defaultString = NSLocalizedString(@"请输入酒龄", nil);
    [self.viewDataArray addObject:wineAgesModel];
    
    AKDrinkingPlanModel *timeDrinkModel = [[AKDrinkingPlanModel alloc] init];
    timeDrinkModel.type = 1;
    timeDrinkModel.title = NSLocalizedString(@"戒酒时间", nil);
    if (self.objectId.length) {
        timeDrinkModel.content = [AKUIUtilities AKformattedTimeStringWithDate:self.saveModel.timeDrinkDate format:@"yyyy-MM-dd"];
    }
    timeDrinkModel.defaultString = NSLocalizedString(@"请选择戒酒时间", nil);
    [self.viewDataArray addObject:timeDrinkModel];
    
    AKDrinkingPlanModel *drinkEveryDayModel = [[AKDrinkingPlanModel alloc] init];
    drinkEveryDayModel.type = 0;
    drinkEveryDayModel.title = NSLocalizedString(@"每天酒量", nil);
    if (self.objectId.length) {
        drinkEveryDayModel.content = [NSString stringWithFormat:@"%ld",self.saveModel.drinkEveryDay];
    }
    drinkEveryDayModel.unit = NSLocalizedString(@"瓶", nil);
    drinkEveryDayModel.defaultString = NSLocalizedString(@"请输入每天酒量", nil);
    [self.viewDataArray addObject:drinkEveryDayModel];
    
    AKDrinkingPlanModel *winePricesModel = [[AKDrinkingPlanModel alloc] init];
    winePricesModel.type = 0;
    winePricesModel.title = NSLocalizedString(@"酒价格", nil);
    if (self.objectId.length) {
        winePricesModel.content = [NSString stringWithFormat:@"%ld",self.saveModel.winePrices];
    }
    winePricesModel.unit = NSLocalizedString(@"元/瓶", nil);
    winePricesModel.defaultString = NSLocalizedString(@"请输入酒价格", nil);
    [self.viewDataArray addObject:winePricesModel];
    
    AKDrinkingPlanModel *alcoholContentModel = [[AKDrinkingPlanModel alloc] init];
    alcoholContentModel.type = 0;
    alcoholContentModel.title = NSLocalizedString(@"酒精含量", nil);
    alcoholContentModel.unit = NSLocalizedString(@"毫升/瓶", nil);
    if (self.objectId.length) {
        alcoholContentModel.content = [NSString stringWithFormat:@"%ld",self.saveModel.alcoholContent];
    }
    alcoholContentModel.defaultString = NSLocalizedString(@"请输入酒精含量", nil);
    [self.viewDataArray addObject:alcoholContentModel];
    
    AKDrinkingPlanModel *saveModel = [[AKDrinkingPlanModel alloc] init];
    saveModel.type = 2;
    [self.viewDataArray addObject:saveModel];
    
    [self.mainTable reloadData];
}
- (void)closeEdit{
    [self.view endEditing:YES];
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self closeEdit];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AKDrinkingPlanModel *viewModel = self.viewDataArray[indexPath.row];
    if (viewModel.type == 0) {
        AKDrinkingPlanEditTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKDrinkingPlanEditTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (viewModel.type == 1){
        AKDrinkingPlanDateTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKDrinkingPlanDateTableViewCell" forIndexPath:indexPath];
        cell.model = viewModel;
        __weak typeof(self) weakSelf = self;
        cell.AKDrinkingPlanDateB = ^(AKDrinkingPlanDateTableViewCell * _Nonnull cell) {
            [weakSelf.mainTable reloadData];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        AKDrinkingPlanSaveTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKDrinkingPlanSaveTableViewCell" forIndexPath:indexPath];
        __weak typeof(self) weakSelf = self;
        cell.AKDrinkingPlanSaveB = ^(AKDrinkingPlanSaveTableViewCell * _Nonnull cell) {
            [weakSelf closeEdit];
            [weakSelf save];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)save{
    for (int i = 0; i < self.viewDataArray.count; i++) {
        AKDrinkingPlanModel *model = self.viewDataArray[i];
        if (!model.content.length && model.type != 2) {
            [MBProgressHUD AKshowReminderText:model.defaultString];
            return;
        }else{
            switch (i) {
                case 0:
                    self.saveModel.wineAges = [model.content integerValue];
                    break;
//                case 1:
//                {
//                    NSString *dateString = model.content;
//                    NSDate *date = [AKUIUtilities AKdateFromString:dateString formate:@"yyyy-MM-dd"];
//                    self.saveModel.timeDrinkDate = date;
//                }
//                    break;
                case 2:
                self.saveModel.drinkEveryDay = [model.content integerValue];
                break;
                case 3:
                self.saveModel.winePrices = [model.content integerValue];
                break;
                case 4:
                self.saveModel.alcoholContent = [model.content integerValue];
                break;
                default:
                    break;
            }
        }
    }
    NSMutableDictionary *jsonDictionary = [[NSMutableDictionary alloc] initWithDictionary:(NSDictionary *)[self.saveModel yy_modelToJSONObject]];
    [jsonDictionary setObject:[[NSDate alloc] init] forKey:@"saveDate"];
    if (!self.saveModel.clockInDAndNumberB.count) {
    NSMutableArray *clockInDAndNumberB = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    NSString *clockInDateString = @"2019-01-01";
    [dic setObject:clockInDateString forKey:@"clockInDate"];
    [dic setObject:[NSNumber numberWithInteger:0] forKey:@"numberBottlesDrunk"];
    [clockInDAndNumberB addObject:dic];
    [jsonDictionary setObject:clockInDAndNumberB forKey:@"clockInDAndNumberB"];
    }
    AKDrinkingPlanModel *model = self.viewDataArray[1];
    NSString *dateString = model.content;
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
                [self.superVC loadData];
                [self.navigationController popViewControllerAnimated:YES];
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
            [self.superVC loadData];
            [self.navigationController popViewControllerAnimated:YES];
        } else if (error){
            //发生错误后的动作
            NSLog(@"error:%@",error);
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];

        }
    }];
    }
}
#pragma mark - 属性懒加载
- (AKDrinkingPlanSaveModel *)saveModel{
    if (!_saveModel) {
        _saveModel = [[AKDrinkingPlanSaveModel alloc] init];
        _saveModel.cumulativeNumberDays = 0;//累计天数
        _saveModel.accumulativeBottle = 0;//累计少喝瓶数
        _saveModel.cumulativeAmount = 0;//累计少花钱数
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
        [_mainTable registerClass:[AKDrinkingPlanEditTableViewCell class] forCellReuseIdentifier:@"AKDrinkingPlanEditTableViewCell"];
        [_mainTable registerClass:[AKDrinkingPlanDateTableViewCell class] forCellReuseIdentifier:@"AKDrinkingPlanDateTableViewCell"];
        [_mainTable registerClass:[AKDrinkingPlanSaveTableViewCell class] forCellReuseIdentifier:@"AKDrinkingPlanSaveTableViewCell"];

        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeEdit)];
        [_mainTable addGestureRecognizer:tapGes];
        [self.view addGestureRecognizer:tapGes];
    }
    return _mainTable;
}
@end
