//
//  mag5sHomeViewController.m
//  workshopManagement5s
//
//  Created by bykj on 2019/6/28.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sHomeViewController.h"
#import "mag5sTimeView.h"
#import "mag5sRecordTableViewCell.h"
#import "mag5sHadDataTableViewCell.h"
#import "mag5sAddViewController.h"
#import "mag5sDataModel.h"
@interface mag5sHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSString *currentDateString;
@property(nonatomic, strong)NSArray *nowWeeks;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)mag5sTimeView *calendarView;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation mag5sHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    if (!self.currentDateString.length) {
        NSDate *nowDate = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        NSString *nowDateStr = [formatter stringFromDate:nowDate];
        self.currentDateString = nowDateStr;
    }
    NSUInteger nowIndex;
    for (int i = 0; i < self.nowWeeks.count; i++) {
        NSString *dateString = self.nowWeeks[i];
        if ([self.currentDateString isEqualToString:dateString]) {
            nowIndex = i;
            break;
        }
    }
    [self loadData:self.currentDateString];
}
- (void)loadData:(NSString *)dateString{
    [self.dataArray removeAllObjects];
    NSString *documentPath = [mag5sHBTool getDocumentPath:@"mag5sData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            mag5sDataModel *model = [mag5sDataModel yy_modelWithDictionary:dic];
            NSString *dateString = [model.date substringToIndex:10];
            NSLog(@"dateString:%@",dateString);
            if ([dateString isEqualToString:self.currentDateString]) {
                [self.dataArray addObject:model];
            }
        }
    }
    [self.mainTable.mj_header endRefreshing];
    [self.mainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.dataArray.count) {
        return self.dataArray.count;
    }else{
        return 1;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.dataArray.count) {
        mag5sRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mag5sRecordTableViewCell" forIndexPath:indexPath];
        cell.superVC = self;
        cell.model = self.dataArray[indexPath.row];
        return cell;
    }else{
        mag5sHadDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mag5sHadDataTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (self.dataArray.count) {
        mag5sDataModel *model = self.dataArray[indexPath.row];
        mag5sAddViewController *vc = [[mag5sAddViewController alloc] init];
        vc.hidesBottomBarWhenPushed = YES;
        vc.currentType = mag5sAddViewControllerTypeDetail;
        vc.mag5sdatamodel = model;
        [self.navigationController pushViewController:vc animated:YES];
    }
}
#pragma mark - 属性懒加载
- (NSArray *)nowWeeks{
    if (!_nowWeeks) {
        _nowWeeks = [CalendarTool getNowWeekDate:[[NSDate alloc] init]];
    }
    return _nowWeeks;
}
- (mag5sTimeView *)calendarView{
    if (!_calendarView) {
        _calendarView = [[mag5sTimeView alloc] initCurrentDate:self.currentDateString];
        __weak typeof(self) weakSelf = self;
        _calendarView.selecteddateblock = ^(mag5sTimeView * _Nonnull timeView) {
            weakSelf.currentDateString = timeView.currentDateString;
            [weakSelf loadData:timeView.currentDateString];
        };
    }
    return _calendarView;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.dataSource = self;
        _mainTable.delegate = self;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_mainTable registerClass:[mag5sRecordTableViewCell class] forCellReuseIdentifier:@"mag5sRecordTableViewCell"];
        [_mainTable registerClass:[mag5sHadDataTableViewCell class] forCellReuseIdentifier:@"mag5sHadDataTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData:)];
        [self.view addSubview:self.calendarView];
        [self.calendarView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.height.mas_equalTo(108.5);
        }];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.calendarView.mas_bottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
    }
    return _mainTable;
}
@end
