//
//  SOClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOClockRecordViewController.h"
#import "SOsodePlanSaveModel.h"
#import "SOClockRecordModel.h"
#import "SOClockRecordTableViewCell.h"
@interface SOClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *SOviewDataArray;
@property(nonatomic, strong)UITableView *SOmainTable;
@end

@implementation SOClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self SOsetContentView];
}
- (void)SOsetContentView{
    NSString *dateSelectedString = [SOUIUtilities SOformattedTimeStringWithDate:self.dateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.SOclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.SOclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    SOClockRecordModel *clockTimeModel = [[SOClockRecordModel alloc] init];
    clockTimeModel.SOtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.SOcontent = dateSelectedString;
    [self.SOviewDataArray addObject:clockTimeModel];
    
    SOClockRecordModel *sodaLessNumberModel = [[SOClockRecordModel alloc] init];
    sodaLessNumberModel.SOtitle = NSLocalizedString(@"少喝苏打水数", nil);
    NSInteger sodaEveryDay = self.saveModel.SOsodeEveryDay;
    NSInteger numberbottleDrink = [[contentDic objectForKey:@"numberbottleDrink"] integerValue];
    NSString *sodaLessNumberString = [NSString stringWithFormat:@"%ld",numberbottleDrink];
    sodaLessNumberModel.SOcontent = sodaLessNumberString;
    [self.SOviewDataArray addObject:sodaLessNumberModel];
    
    SOClockRecordModel *saveAmountMoneyModel = [[SOClockRecordModel alloc] init];
    saveAmountMoneyModel.SOtitle = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberbottleDrink * self.saveModel.SOsodePrices];
    saveAmountMoneyModel.SOcontent = saveAmountMoneyString;
    [self.SOviewDataArray addObject:saveAmountMoneyModel];
    
    SOClockRecordModel *sodaDrinkNumberModel = [[SOClockRecordModel alloc] init];
    sodaDrinkNumberModel.SOtitle = NSLocalizedString(@"喝苏打水瓶数", nil);
    sodaDrinkNumberModel.SOcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberbottleDrink"]];
    [self.SOviewDataArray addObject:sodaDrinkNumberModel];
    
    [self.SOmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.SOviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SOClockRecordModel *viewModel = self.SOviewDataArray[indexPath.row];
    SOClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)SOviewDataArray{
    if (!_SOviewDataArray) {
        _SOviewDataArray = [[NSMutableArray alloc] init];
    }
    return _SOviewDataArray;
}
- (UITableView *)SOmainTable{
    if (!_SOmainTable) {
        _SOmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _SOmainTable.backgroundColor = SOH_Color(244, 245, 246, 1);
        _SOmainTable.delegate = self;
        _SOmainTable.dataSource = self;
        _SOmainTable.rowHeight = UITableViewAutomaticDimension;
        _SOmainTable.estimatedRowHeight = 55.0f;
        _SOmainTable.tableHeaderView = [[UIView alloc] init];
        _SOmainTable.tableFooterView = [[UIView alloc] init];
        [_SOmainTable registerClass:[SOClockRecordTableViewCell class] forCellReuseIdentifier:@"SOClockRecordTableViewCell"];
        [self.view addSubview:_SOmainTable];
        [_SOmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _SOmainTable;
}
@end
