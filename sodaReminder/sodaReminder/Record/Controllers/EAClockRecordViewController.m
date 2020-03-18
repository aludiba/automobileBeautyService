//
//  EAClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAClockRecordViewController.h"
#import "EAsodePlanSaveModel.h"
#import "EAClockRecordModel.h"
#import "EAClockRecordTableViewCell.h"
@interface EAClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *EAviewDataArray;
@property(nonatomic, strong)UITableView *EAmainTable;
@end

@implementation EAClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self EAsetContentView];
}
- (void)EAsetContentView{
    NSString *dateSelectedString = [EAUIUtilities EAformattedTimeStringWithDate:self.dateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.EAclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.EAclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    EAClockRecordModel *clockTimeModel = [[EAClockRecordModel alloc] init];
    clockTimeModel.EAtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.EAcontent = dateSelectedString;
    [self.EAviewDataArray addObject:clockTimeModel];
    
    EAClockRecordModel *sodaLessNumberModel = [[EAClockRecordModel alloc] init];
    sodaLessNumberModel.EAtitle = NSLocalizedString(@"少喝苏打水数", nil);
    NSInteger sodaEveryDay = self.saveModel.EAsodeEveryDay;
    NSInteger numberbottleDrink = [[contentDic objectForKey:@"numberbottleDrink"] integerValue];
    NSString *sodaLessNumberString = [NSString stringWithFormat:@"%ld",numberbottleDrink];
    sodaLessNumberModel.EAcontent = sodaLessNumberString;
    [self.EAviewDataArray addObject:sodaLessNumberModel];
    
    EAClockRecordModel *saveAmountMoneyModel = [[EAClockRecordModel alloc] init];
    saveAmountMoneyModel.EAtitle = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberbottleDrink * self.saveModel.EAsodePrices];
    saveAmountMoneyModel.EAcontent = saveAmountMoneyString;
    [self.EAviewDataArray addObject:saveAmountMoneyModel];
    
    EAClockRecordModel *sodaDrinkNumberModel = [[EAClockRecordModel alloc] init];
    sodaDrinkNumberModel.EAtitle = NSLocalizedString(@"喝苏打水瓶数", nil);
    sodaDrinkNumberModel.EAcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberbottleDrink"]];
    [self.EAviewDataArray addObject:sodaDrinkNumberModel];
    
    [self.EAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.EAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EAClockRecordModel *viewModel = self.EAviewDataArray[indexPath.row];
    EAClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EAClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)EAviewDataArray{
    if (!_EAviewDataArray) {
        _EAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _EAviewDataArray;
}
- (UITableView *)EAmainTable{
    if (!_EAmainTable) {
        _EAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _EAmainTable.backgroundColor = EAH_Color(244, 245, 246, 1);
        _EAmainTable.delegate = self;
        _EAmainTable.dataSource = self;
        _EAmainTable.rowHeight = UITableViewAutomaticDimension;
        _EAmainTable.estimatedRowHeight = 55.0f;
        _EAmainTable.tableHeaderView = [[UIView alloc] init];
        _EAmainTable.tableFooterView = [[UIView alloc] init];
        [_EAmainTable registerClass:[EAClockRecordTableViewCell class] forCellReuseIdentifier:@"EAClockRecordTableViewCell"];
        [self.view addSubview:_EAmainTable];
        [_EAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _EAmainTable;
}
@end
