//
//  GAClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAClockRecordViewController.h"
#import "GAgamePlanSaveModel.h"
#import "GAClockRecordModel.h"
#import "GAClockRecordTableViewCell.h"
@interface GAClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;
@property(nonatomic, strong)UITableView *GAmainTable;
@end

@implementation GAClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"详情", nil);
    [self GAsetContentView];
}
- (void)GAsetContentView{
    NSString *dateSelectedString = [GAUIUtilities GAformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.GAclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.GAclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    GAClockRecordModel *clockTimeModel = [[GAClockRecordModel alloc] init];
    clockTimeModel.GAtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.GAcontent = dateSelectedString;
    [self.GAviewDataArray addObject:clockTimeModel];
    
    GAClockRecordModel *gameLessNumberModel = [[GAClockRecordModel alloc] init];
    gameLessNumberModel.GAtitle = NSLocalizedString(@"少玩游戏次数", nil);
    NSInteger gameEveryDay = self.saveModel.GAgameEveryDay;
    NSInteger numberGamesPlayed = [[contentDic objectForKey:@"numberGamesPlayed"] integerValue];
    NSString *gameLessNumberString = [NSString stringWithFormat:@"%ld",numberGamesPlayed];
    gameLessNumberModel.GAcontent = gameLessNumberString;
    [self.GAviewDataArray addObject:gameLessNumberModel];
    
    GAClockRecordModel *saveAmountMoneyModel = [[GAClockRecordModel alloc] init];
    saveAmountMoneyModel.GAtitle = NSLocalizedString(@"节省时间", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberGamesPlayed * self.saveModel.GAgameAges];
    saveAmountMoneyModel.GAcontent = saveAmountMoneyString;
    [self.GAviewDataArray addObject:saveAmountMoneyModel];
    
    GAClockRecordModel *gameDrinkNumberModel = [[GAClockRecordModel alloc] init];
    gameDrinkNumberModel.GAtitle = NSLocalizedString(@"玩游戏次数", nil);
    gameDrinkNumberModel.GAcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberGamesPlayed"]];
    [self.GAviewDataArray addObject:gameDrinkNumberModel];
    
    [self.GAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GAClockRecordModel *viewModel = self.GAviewDataArray[indexPath.row];
    GAClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)GAviewDataArray{
    if (!_GAviewDataArray) {
        _GAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GAviewDataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GAClockRecordTableViewCell class] forCellReuseIdentifier:@"GAClockRecordTableViewCell"];
        [self.view addSubview:_GAmainTable];
        [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _GAmainTable;
}
@end
