//
//  YWKGAClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAClockRecordViewController.h"
#import "YWKGAgamePlanSaveModel.h"
#import "YWKGAClockRecordModel.h"
#import "YWKGAClockRecordTableViewCell.h"
@interface YWKGAClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YWKGAviewDataArray;
@property(nonatomic, strong)UITableView *YWKGAmainTable;
@end

@implementation YWKGAClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"详情", nil);
    [self YWKGAsetContentView];
}
- (void)YWKGAsetContentView{
    NSString *dateSelectedString = [YWKGAUIUtilities YWKGAformattedTimeStringWithDate:self.dateSelected format:@"yyyy/MM/dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.YWKGAclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.YWKGAclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    YWKGAClockRecordModel *clockTimeModel = [[YWKGAClockRecordModel alloc] init];
    clockTimeModel.YWKGAtitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.YWKGAcontent = dateSelectedString;
    [self.YWKGAviewDataArray addObject:clockTimeModel];
    
    YWKGAClockRecordModel *gameLessNumberModel = [[YWKGAClockRecordModel alloc] init];
    gameLessNumberModel.YWKGAtitle = NSLocalizedString(@"少玩游戏次数", nil);
    NSInteger gameEveryDay = self.saveModel.YWKGAgameEveryDay;
    NSInteger numberGamesPlayed = [[contentDic objectForKey:@"numberGamesPlayed"] integerValue];
    NSString *gameLessNumberString = [NSString stringWithFormat:@"%ld",numberGamesPlayed];
    gameLessNumberModel.YWKGAcontent = gameLessNumberString;
    [self.YWKGAviewDataArray addObject:gameLessNumberModel];
    
    YWKGAClockRecordModel *saveAmountMoneyModel = [[YWKGAClockRecordModel alloc] init];
    saveAmountMoneyModel.YWKGAtitle = NSLocalizedString(@"节省时间", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberGamesPlayed * self.saveModel.YWKGAgameLong];
    saveAmountMoneyModel.YWKGAcontent = saveAmountMoneyString;
    [self.YWKGAviewDataArray addObject:saveAmountMoneyModel];
    
    YWKGAClockRecordModel *gameDrinkNumberModel = [[YWKGAClockRecordModel alloc] init];
    gameDrinkNumberModel.YWKGAtitle = NSLocalizedString(@"玩游戏次数", nil);
    gameDrinkNumberModel.YWKGAcontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberGamesPlayed"]];
    [self.YWKGAviewDataArray addObject:gameDrinkNumberModel];
    
    [self.YWKGAmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YWKGAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YWKGAClockRecordModel *viewModel = self.YWKGAviewDataArray[indexPath.row];
    YWKGAClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGAClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)YWKGAviewDataArray{
    if (!_YWKGAviewDataArray) {
        _YWKGAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YWKGAviewDataArray;
}
- (UITableView *)YWKGAmainTable{
    if (!_YWKGAmainTable) {
        _YWKGAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YWKGAmainTable.delegate = self;
        _YWKGAmainTable.dataSource = self;
        _YWKGAmainTable.rowHeight = UITableViewAutomaticDimension;
        _YWKGAmainTable.estimatedRowHeight = 55.0f;
        _YWKGAmainTable.tableHeaderView = [[UIView alloc] init];
        _YWKGAmainTable.tableFooterView = [[UIView alloc] init];
        [_YWKGAmainTable registerClass:[YWKGAClockRecordTableViewCell class] forCellReuseIdentifier:@"YWKGAClockRecordTableViewCell"];
        [self.view addSubview:_YWKGAmainTable];
        [_YWKGAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _YWKGAmainTable;
}
@end
