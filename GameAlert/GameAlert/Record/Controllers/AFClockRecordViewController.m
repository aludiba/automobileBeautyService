//
//  AFClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFClockRecordViewController.h"
#import "AFgamePlanSaveModel.h"
#import "AFClockRecordModel.h"
#import "AFClockRecordTableViewCell.h"
@interface AFClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AFviewDataArray;
@property(nonatomic, strong)UITableView *AFmainTable;
@end

@implementation AFClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"详情", nil);
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self AFsetContentView];
}
- (void)AFsetContentView{
    NSString *dateSelectedString = [AFUIUtilities AFformattedTimeStringWithDate:self.AFdateSelected format:@"yyyy/MM/dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.AFsaveModel.AFclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.AFsaveModel.AFclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    AFClockRecordModel *clockTimeModel = [[AFClockRecordModel alloc] init];
    clockTimeModel.AFtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.AFcontent = dateSelectedString;
    [self.AFviewDataArray addObject:clockTimeModel];
    
    AFClockRecordModel *gameLessNumberModel = [[AFClockRecordModel alloc] init];
    gameLessNumberModel.AFtitle = NSLocalizedString(@"少玩游戏次数", nil);
    NSInteger gameEveryDay = self.AFsaveModel.AFgameEveryDay;
    NSInteger numberGamesPlayed = [[contentDic objectForKey:@"numberGamesPlayed"] integerValue];
    NSString *gameLessNumberString = [NSString stringWithFormat:@"%ld",numberGamesPlayed];
    gameLessNumberModel.AFcontent = gameLessNumberString;
    [self.AFviewDataArray addObject:gameLessNumberModel];
    
    AFClockRecordModel *saveAmountMoneyModel = [[AFClockRecordModel alloc] init];
    saveAmountMoneyModel.AFtitle = NSLocalizedString(@"节省时间", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberGamesPlayed * self.AFsaveModel.AFgameLong];
    saveAmountMoneyModel.AFcontent = saveAmountMoneyString;
    [self.AFviewDataArray addObject:saveAmountMoneyModel];
    
    AFClockRecordModel *gameDrinkNumberModel = [[AFClockRecordModel alloc] init];
    gameDrinkNumberModel.AFtitle = NSLocalizedString(@"玩游戏次数", nil);
    gameDrinkNumberModel.AFcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberGamesPlayed"]];
    [self.AFviewDataArray addObject:gameDrinkNumberModel];
    
    [self.AFmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFClockRecordModel *viewModel = self.AFviewDataArray[indexPath.row];
    AFClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AFviewDataArray{
    if (!_AFviewDataArray) {
        _AFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AFviewDataArray;
}
- (UITableView *)AFmainTable{
    if (!_AFmainTable) {
        _AFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFmainTable.backgroundColor = AFH_Color(44, 77, 93, 1);
        _AFmainTable.delegate = self;
        _AFmainTable.dataSource = self;
        _AFmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFmainTable.estimatedRowHeight = 55.0f;
        _AFmainTable.tableHeaderView = [[UIView alloc] init];
        _AFmainTable.tableFooterView = [[UIView alloc] init];
        [_AFmainTable registerClass:[AFClockRecordTableViewCell class] forCellReuseIdentifier:@"AFClockRecordTableViewCell"];
        [self.view addSubview:_AFmainTable];
        [_AFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _AFmainTable;
}
@end
