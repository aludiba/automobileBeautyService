//
//  AHClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHClockRecordViewController.h"
#import "AHsodePlanSaveModel.h"
#import "AHClockRecordModel.h"
#import "AHClockRecordTableViewCell.h"
@interface AHClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AHviewDataArray;
@property(nonatomic, strong)UITableView *AHmainTable;
@end

@implementation AHClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self AHsetContentView];
}
- (void)AHsetContentView{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    NSString *dateSelectedString = [AHUIUtilities AHformattedTimeStringWithDate:self.AHdateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.AHsaveModel.AHclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.AHsaveModel.AHclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    AHClockRecordModel *clockTimeModel = [[AHClockRecordModel alloc] init];
    clockTimeModel.AHtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.AHcontent = dateSelectedString;
    [self.AHviewDataArray addObject:clockTimeModel];
    
    AHClockRecordModel *sodaLessNumberModel = [[AHClockRecordModel alloc] init];
    sodaLessNumberModel.AHtitle = NSLocalizedString(@"少喝苏打水数", nil);
    NSInteger sodaEveryDay = self.AHsaveModel.AHsodeEveryDay;
    NSInteger numberbottleDrink = [[contentDic objectForKey:@"numberbottleDrink"] integerValue];
    NSString *sodaLessNumberString = [NSString stringWithFormat:@"%ld",numberbottleDrink];
    sodaLessNumberModel.AHcontent = sodaLessNumberString;
    [self.AHviewDataArray addObject:sodaLessNumberModel];
    
    AHClockRecordModel *saveAmountMoneyModel = [[AHClockRecordModel alloc] init];
    saveAmountMoneyModel.AHtitle = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberbottleDrink * self.AHsaveModel.AHsodePrices];
    saveAmountMoneyModel.AHcontent = saveAmountMoneyString;
    [self.AHviewDataArray addObject:saveAmountMoneyModel];
    
    AHClockRecordModel *sodaDrinkNumberModel = [[AHClockRecordModel alloc] init];
    sodaDrinkNumberModel.AHtitle = NSLocalizedString(@"喝苏打水瓶数", nil);
    sodaDrinkNumberModel.AHcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberbottleDrink"]];
    [self.AHviewDataArray addObject:sodaDrinkNumberModel];
    
    [self.AHmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AHviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AHClockRecordModel *viewModel = self.AHviewDataArray[indexPath.row];
    AHClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHClockRecordTableViewCell" forIndexPath:indexPath];
    cell.AHmodel = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AHviewDataArray{
    if (!_AHviewDataArray) {
        _AHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AHviewDataArray;
}
- (UITableView *)AHmainTable{
    if (!_AHmainTable) {
        _AHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AHmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _AHmainTable.delegate = self;
        _AHmainTable.dataSource = self;
        _AHmainTable.rowHeight = UITableViewAutomaticDimension;
        _AHmainTable.estimatedRowHeight = 55.0f;
        _AHmainTable.tableHeaderView = [[UIView alloc] init];
        _AHmainTable.tableFooterView = [[UIView alloc] init];
        [_AHmainTable registerClass:[AHClockRecordTableViewCell class] forCellReuseIdentifier:@"AHClockRecordTableViewCell"];
        [self.view addSubview:_AHmainTable];
        [_AHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _AHmainTable;
}
@end
