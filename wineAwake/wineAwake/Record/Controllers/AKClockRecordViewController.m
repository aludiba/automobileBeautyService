//
//  AKClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKClockRecordViewController.h"
#import "AKDrinkingPlanSaveModel.h"
#import "AKClockRecordModel.h"
#import "AKClockRecordTableViewCell.h"
@interface AKClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation AKClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setContentView];
}
- (void)setContentView{
    NSString *dateSelectedString = [AKUIUtilities AKformattedTimeStringWithDate:self.dateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.clockInDAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.clockInDAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    AKClockRecordModel *clockTimeModel = [[AKClockRecordModel alloc] init];
    clockTimeModel.title = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.content = dateSelectedString;
    [self.viewDataArray addObject:clockTimeModel];
    
    AKClockRecordModel *drinkLessNumberModel = [[AKClockRecordModel alloc] init];
    drinkLessNumberModel.title = NSLocalizedString(@"少喝酒数", nil);
    NSInteger drinkEveryDay = self.saveModel.drinkEveryDay;
    NSInteger numberBottlesDrunk = [[contentDic objectForKey:@"numberBottlesDrunk"] integerValue];
    NSString *drinkLessNumberString = [NSString stringWithFormat:@"%ld",numberBottlesDrunk];
    drinkLessNumberModel.content = drinkLessNumberString;
    [self.viewDataArray addObject:drinkLessNumberModel];
    
    AKClockRecordModel *saveAmountMoneyModel = [[AKClockRecordModel alloc] init];
    saveAmountMoneyModel.title = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberBottlesDrunk * self.saveModel.winePrices];
    saveAmountMoneyModel.content = saveAmountMoneyString;
    [self.viewDataArray addObject:saveAmountMoneyModel];
    
    AKClockRecordModel *drinkBottleNumberModel = [[AKClockRecordModel alloc] init];
    drinkBottleNumberModel.title = NSLocalizedString(@"喝酒瓶数", nil);
    drinkBottleNumberModel.content = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberBottlesDrunk"]];
    [self.viewDataArray addObject:drinkBottleNumberModel];
    
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AKClockRecordModel *viewModel = self.viewDataArray[indexPath.row];
    AKClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
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
        [_mainTable registerClass:[AKClockRecordTableViewCell class] forCellReuseIdentifier:@"AKClockRecordTableViewCell"];
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
@end
