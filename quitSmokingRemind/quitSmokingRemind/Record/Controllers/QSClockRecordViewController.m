//
//  QSClockRecordViewController.m
//  wineAwake
//
//  Created by 褚红彪 on 2019/10/10.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSClockRecordViewController.h"
#import "QSsmokingPlanSaveModel.h"
#import "QSClockRecordModel.h"
#import "QSClockRecordTableViewCell.h"
@interface QSClockRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *QSviewDataArray;
@property(nonatomic, strong)UITableView *QSmainTable;
@end

@implementation QSClockRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self QSsetContentView];
}
- (void)QSsetContentView{
    NSString *dateSelectedString = [QSUIUtilities QSformattedTimeStringWithDate:self.dateSelected format:@"yyyy-MM-dd"];
    NSDictionary *contentDic;
    for (int i = 0; i < self.saveModel.QSclockInSAndNumberB.count; i++) {
        NSDictionary *dic = self.saveModel.QSclockInSAndNumberB[i];
        NSString *currentDateString = [dic objectForKey:@"clockInDate"];
        if ([dateSelectedString isEqualToString:currentDateString]) {
            contentDic = [dic copy];
            break;
        }
    }
    QSClockRecordModel *clockTimeModel = [[QSClockRecordModel alloc] init];
    clockTimeModel.QStitle = NSLocalizedString(@"打卡时间", nil);
    clockTimeModel.QScontent = dateSelectedString;
    [self.QSviewDataArray addObject:clockTimeModel];
    
    QSClockRecordModel *smokingLessNumberModel = [[QSClockRecordModel alloc] init];
    smokingLessNumberModel.QStitle = NSLocalizedString(@"少抽烟数", nil);
    NSInteger smokingEveryDay = self.saveModel.QSsmokingEveryDay;
    NSInteger numberPackagesSmoke = [[contentDic objectForKey:@"numberPackagesSmoke"] integerValue];
    NSString *smokingLessNumberString = [NSString stringWithFormat:@"%ld",numberPackagesSmoke];
    smokingLessNumberModel.QScontent = smokingLessNumberString;
    [self.QSviewDataArray addObject:smokingLessNumberModel];
    
    QSClockRecordModel *saveAmountMoneyModel = [[QSClockRecordModel alloc] init];
    saveAmountMoneyModel.QStitle = NSLocalizedString(@"节省钱量", nil);
    NSString *saveAmountMoneyString = [NSString stringWithFormat:@"%ld",numberPackagesSmoke * self.saveModel.QSsmokePrices];
    saveAmountMoneyModel.QScontent = saveAmountMoneyString;
    [self.QSviewDataArray addObject:saveAmountMoneyModel];
    
    QSClockRecordModel *smokingPackageNumberModel = [[QSClockRecordModel alloc] init];
    smokingPackageNumberModel.QStitle = NSLocalizedString(@"抽烟包数", nil);
    smokingPackageNumberModel.QScontent = [NSString stringWithFormat:@"%@",[contentDic objectForKey:@"numberPackagesSmoke"]];
    [self.QSviewDataArray addObject:smokingPackageNumberModel];
    
    [self.QSmainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.QSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QSClockRecordModel *viewModel = self.QSviewDataArray[indexPath.row];
    QSClockRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSClockRecordTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)QSviewDataArray{
    if (!_QSviewDataArray) {
        _QSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _QSviewDataArray;
}
- (UITableView *)QSmainTable{
    if (!_QSmainTable) {
        _QSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _QSmainTable.delegate = self;
        _QSmainTable.dataSource = self;
        _QSmainTable.rowHeight = UITableViewAutomaticDimension;
        _QSmainTable.estimatedRowHeight = 55.0f;
        _QSmainTable.tableHeaderView = [[UIView alloc] init];
        _QSmainTable.tableFooterView = [[UIView alloc] init];
        [_QSmainTable registerClass:[QSClockRecordTableViewCell class] forCellReuseIdentifier:@"QSClockRecordTableViewCell"];
        [self.view addSubview:_QSmainTable];
        [_QSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];

    }
    return _QSmainTable;
}
@end
