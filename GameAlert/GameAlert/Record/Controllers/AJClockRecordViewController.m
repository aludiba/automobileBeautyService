//
//  AJClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJClockRecordViewController.h"
#import "AJgamePlanSaveModel.h"
#import "AJClockRecordModel.h"
#import "AJClockRecordTableViewCell.h"
@interface AJClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AJviewDataArray;
@property(nonatomic, strong)UITableView *AJmainTable;
@end

@implementation AJClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"详情", nil);
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    [self AJsetContentView];
}
- (void)AJsetContentView{
    NSString *dateSelectedString = [AJUIUtilities AJformattedTimeStringWithDate:self.AJdateSelected format:@"yyyy/MM/dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.AJsaveModel.AJclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.AJsaveModel.AJclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    AJClockRecordModel *clockTimeModel = [[AJClockRecordModel alloc] init];
    clockTimeModel.AJtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.AJcontent = dateSelectedString;
    [self.AJviewDataArray addObject:clockTimeModel];
    
    AJClockRecordModel *gameLessNumberModel = [[AJClockRecordModel alloc] init];
    gameLessNumberModel.AJtitle = NSLocalizedString(@"少玩游戏次数", nil);
    NSInteger gameEveryDay = self.AJsaveModel.AJgameEveryDay;
    NSInteger numberGamesPlayed = [[contentDic objectForKey:@"numberGamesPlayed"] integerValue];
    NSString *gameLessNumberString = [NSString stringWithFormat:@"%ld",numberGamesPlayed];
    gameLessNumberModel.AJcontent = gameLessNumberString;
    [self.AJviewDataArray addObject:gameLessNumberModel];
    
    AJClockRecordModel *saveAmountMoneyModel = [[AJClockRecordModel alloc] init];
    saveAmountMoneyModel.AJtitle = NSLocalizedString(@"节省时间", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberGamesPlayed * self.AJsaveModel.AJgameLong];
    saveAmountMoneyModel.AJcontent = saveAmountMoneyString;
    [self.AJviewDataArray addObject:saveAmountMoneyModel];
    
    AJClockRecordModel *gameDrinkNumberModel = [[AJClockRecordModel alloc] init];
    gameDrinkNumberModel.AJtitle = NSLocalizedString(@"玩游戏次数", nil);
    gameDrinkNumberModel.AJcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberGamesPlayed"]];
    [self.AJviewDataArray addObject:gameDrinkNumberModel];
    
    [self.AJmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AJviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AJClockRecordModel *viewModel = self.AJviewDataArray[indexPath.row];
    AJClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AJviewDataArray{
    if (!_AJviewDataArray) {
        _AJviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AJviewDataArray;
}
- (UITableView *)AJmainTable{
    if (!_AJmainTable) {
        _AJmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AJmainTable.backgroundColor = AJH_Color(44, 77, 93, 1);
        _AJmainTable.delegate = self;
        _AJmainTable.dataSource = self;
        _AJmainTable.rowHeight = UITableViewAutomaticDimension;
        _AJmainTable.estimatedRowHeight = 55.0f;
        _AJmainTable.tableHeaderView = [[UIView alloc] init];
        _AJmainTable.tableFooterView = [[UIView alloc] init];
        [_AJmainTable registerClass:[AJClockRecordTableViewCell class] forCellReuseIdentifier:@"AJClockRecordTableViewCell"];
        [self.view addSubview:_AJmainTable];
        [_AJmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _AJmainTable;
}
@end
