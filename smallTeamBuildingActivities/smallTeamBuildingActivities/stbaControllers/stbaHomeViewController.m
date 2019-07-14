//
//  stbaHomeViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaHomeViewController.h"
#import "stbaAddActivitiesViewController.h"
#import "stbaAddActivitieModel.h"
#import "stbaHomeTableViewCell.h"
#import "stbaHadDataTableViewCell.h"
#import "magTimeView.h"

@interface stbaHomeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSString *currentDateString;
@property(nonatomic, strong)NSArray *nowWeeks;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)magTimeView *calendarView;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation stbaHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home";
    [self setChildView];

}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self setOpen];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self setContent];
}
- (void)setChildView{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id4 = [documentData objectForKey:@"id4"];
    [[NSUserDefaults standardUserDefaults] setObject:id4 forKey:@"id4"];
}
- (void)setOpen{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stba.plist"];
    NSMutableDictionary *documentData = [[NSMutableDictionary alloc] initWithContentsOfFile:documentPath];
    NSString *id3 = [documentData objectForKey:@"id3"];
    [[NSUserDefaults standardUserDefaults] setObject:id3 forKey:@"id3"];
}
- (void)setContent{
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
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stbaActivityData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            stbaAddActivitieModel *model = [stbaAddActivitieModel yy_modelWithDictionary:dic];
            NSString *dateString = [model.date substringToIndex:10];
            if ([dateString isEqualToString:self.currentDateString]) {
                [self.dataArray addObject:model];
                NSDate *nowDate = [[NSDate alloc] init];
                NSDate *date = [stbaUIUtilities stbadateFromString:[[NSUserDefaults standardUserDefaults] objectForKey:@"id"]  formate:@"yyyy-MM-dd"];
                if ([nowDate compare:date] != kCFCompareLessThan) {
                    stbaAddActivitieModel *model = [[stbaAddActivitieModel alloc] init];
                    model.theme = @"Theme";
                    model.date = [NSString stringWithFormat:@"%@%@%@%@%@%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"id0"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id1"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id2"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id3"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id4"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id5"]];
                    [self.dataArray addObject:model];
                }
            }else{
                NSDate *nowDate = [[NSDate alloc] init];
                NSDate *date = [stbaUIUtilities stbadateFromString:[[NSUserDefaults standardUserDefaults] objectForKey:@"id"]  formate:@"yyyy-MM-dd"];
                if ([nowDate compare:date] != kCFCompareLessThan) {
                    stbaAddActivitieModel *model = [[stbaAddActivitieModel alloc] init];
                    model.theme = @"Theme";
                    model.date = [NSString stringWithFormat:@"%@%@%@%@%@%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"id0"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id1"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id2"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id3"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id4"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id5"]];
                    [self.dataArray addObject:model];
                }
            }
        }
    }else{
        NSDate *nowDate = [[NSDate alloc] init];
        NSDate *date = [stbaUIUtilities stbadateFromString:[[NSUserDefaults standardUserDefaults] objectForKey:@"id"]  formate:@"yyyy-MM-dd"];
        if ([nowDate compare:date] != kCFCompareLessThan) {
            stbaAddActivitieModel *model = [[stbaAddActivitieModel alloc] init];
            model.theme = @"Theme";
            model.date = [NSString stringWithFormat:@"%@%@%@%@%@%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"id0"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id1"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id2"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id3"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id4"],[[NSUserDefaults standardUserDefaults] objectForKey:@"id5"]];
            [self.dataArray addObject:model];
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
        stbaHomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaHomeTableViewCell" forIndexPath:indexPath];
        cell.superVC = self;
        cell.model = self.dataArray[indexPath.row];
        return cell;
    }else{
        stbaHadDataTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaHadDataTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    stbaAddActivitieModel *model = self.dataArray[indexPath.row];
    stbaAddActivitiesViewController *vc = [[stbaAddActivitiesViewController alloc] init];
    vc.currentType = stbaAddActivitiesViewControllerTypeDetail;
    vc.model = model;
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
- (NSArray *)nowWeeks{
    if (!_nowWeeks) {
        _nowWeeks = [CalendarTool getNowWeekDate:[[NSDate alloc] init]];
    }
    return _nowWeeks;
}
- (magTimeView *)calendarView{
    if (!_calendarView) {
        _calendarView = [[magTimeView alloc] initCurrentDate:self.currentDateString];
        __weak typeof(self) weakSelf = self;
        _calendarView.selecteddateblock = ^(magTimeView * _Nonnull timeView) {
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
        [_mainTable registerClass:[stbaHomeTableViewCell class] forCellReuseIdentifier:@"stbaHomeTableViewCell"];
        [_mainTable registerClass:[stbaHadDataTableViewCell class] forCellReuseIdentifier:@"stbaHadDataTableViewCell"];
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
