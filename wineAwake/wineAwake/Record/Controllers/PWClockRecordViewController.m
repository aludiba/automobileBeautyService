//
//  PWClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWClockRecordViewController.h"
#import "PWDrinkingPlanSaveModel.h"
#import "PWClockRecordModel.h"
#import "PWClockRecordTableViewCell.h"
@interface PWClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation PWClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setContentView];
}
- (void)setContentView{
    NSString *dateSelectedString = [PWUIUtilities PWformattedTimeStringWithDate:self.dateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.clockInDAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.clockInDAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    PWClockRecordModel *clockTimeModel = [[PWClockRecordModel alloc] init];
    clockTimeModel.title = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.content = dateSelectedString;
    [self.viewDataArray addObject:clockTimeModel];
    
    PWClockRecordModel *drinkLessNumberModel = [[PWClockRecordModel alloc] init];
    drinkLessNumberModel.title = NSLocalizedString(@"少喝酒数", nil);
    NSInteger drinkEveryDay = self.saveModel.drinkEveryDay;
    NSInteger numberBottlesDrunk = [[contentDic objectForKey:@"numberBottlesDrunk"] integerValue];
    NSString *drinkLessNumberString = [NSString stringWithFormat:@"%ld",numberBottlesDrunk];
    drinkLessNumberModel.content = drinkLessNumberString;
    [self.viewDataArray addObject:drinkLessNumberModel];
    
    PWClockRecordModel *saveAmountMoneyModel = [[PWClockRecordModel alloc] init];
    saveAmountMoneyModel.title = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberBottlesDrunk * self.saveModel.winePrices];
    saveAmountMoneyModel.content = saveAmountMoneyString;
    [self.viewDataArray addObject:saveAmountMoneyModel];
    
    PWClockRecordModel *drinkBottleNumberModel = [[PWClockRecordModel alloc] init];
    drinkBottleNumberModel.title = NSLocalizedString(@"喝酒瓶数", nil);
    drinkBottleNumberModel.content = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberBottlesDrunk"]];
    [self.viewDataArray addObject:drinkBottleNumberModel];
    
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PWClockRecordModel *viewModel = self.viewDataArray[indexPath.row];
    PWClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PWClockRecordTableViewCell" forIndexPath:indexPath];
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
        _mainTable.backgroundColor = PWH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PWClockRecordTableViewCell class] forCellReuseIdentifier:@"PWClockRecordTableViewCell"];
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
