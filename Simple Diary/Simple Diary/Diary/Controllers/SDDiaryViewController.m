//
//  SDDiaryViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/7/20.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDDiaryViewController.h"
#import "SDCalendarViewController.h"
#import "SDWriteDiaryDetailViewController.h"
#import "SDSearchViewController.h"
#import "SDWriteDiaryViewController.h"
#import "SDShowDiaryTableViewCell.h"
#import "SDWriteDiaryModel.h"
@interface SDDiaryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *calendarButton;
@property(nonatomic, strong)UIButton *searchButton;
@property(nonatomic, strong)UIButton *editorButton;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *dataArray;
@end

@implementation SDDiaryViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = SDH_Color(242, 242, 242, 242);
    self.title = NSLocalizedString(@"日记", nil);
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self loadData];
}
- (void)SD_setupNavigationItems{
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *calendarItem = [[UIBarButtonItem alloc] initWithCustomView:self.calendarButton];
    UIBarButtonItem *fixWidthItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    fixWidthItem.width = 24;
    UIBarButtonItem *searchItem = [[UIBarButtonItem alloc] initWithCustomView:self.searchButton];
    self.navigationItem.leftBarButtonItems = @[calendarItem,fixWidthItem,searchItem];
    UIBarButtonItem *editorItem = [[UIBarButtonItem alloc] initWithCustomView:self.editorButton];
    self.navigationItem.rightBarButtonItem = editorItem;
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        SDCalendarViewController *cdVC = [[SDCalendarViewController alloc] init];
        cdVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:cdVC animated:YES];
    }else if (sender.tag == 101){
        SDSearchViewController *sVC = [[SDSearchViewController alloc] init];
        sVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:sVC animated:YES];
    }else if (sender.tag == 102){
        self.wdVC = [[SDWriteDiaryViewController  alloc] init];
        self.wdVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:self.wdVC animated:YES];
    }
}
- (void)loadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"Diary"];
    AVUser *author = [AVUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD SDshowReminderText:NSLocalizedString(@"请稍后再试", nil)];
        }else{
            [self.dataArray removeAllObjects];
            for (int i = (int)(array.count - 1); i > -1; i--) {
                AVObject *obj = array[i];
                SDWriteDiaryModel *model = [[SDWriteDiaryModel alloc] init];
                model.objectId = [obj objectId];
                model.fontSize = [obj objectForKey:@"fontSize"];
                model.fontRGB = [obj objectForKey:@"fontRGB"];
                model.themeRGB = [obj objectForKey:@"themeRGB"];
                model.location = [obj objectForKey:@"location"];
                model.weather = [obj objectForKey:@"weather"];
                model.content = [obj objectForKey:@"content"];
                model.date = [obj objectForKey:@"date"];
                model.weekDay = [obj objectForKey:@"weekDay"];
                model.imageUrls = [obj objectForKey:@"imageUrls"];
                model.createdAt = [obj createdAt];
                model.updatedAt = [obj updatedAt];
                [self.dataArray addObject:model];
            }
            [self.mainTable.mj_header endRefreshing];
            [self.mainTable reloadData];
        }
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SDWriteDiaryModel *model = self.dataArray[indexPath.row];
    SDShowDiaryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SDShowDiaryTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SDWriteDiaryModel *model = self.dataArray[indexPath.row];
    SDWriteDiaryDetailViewController *detailVC = [[SDWriteDiaryDetailViewController alloc] init];
    detailVC.model = model;
    detailVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:detailVC animated:YES];
}
#pragma mark - getters
- (UIButton *)calendarButton{
    if (!_calendarButton) {
        _calendarButton = [[UIButton alloc] init];
        _calendarButton.tag = 100;
        [_calendarButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_calendarButton setImage:[UIImage imageNamed:@"SD_calendar"] forState:UIControlStateNormal];
    }
    return _calendarButton;
}
- (UIButton *)searchButton{
    if (!_searchButton) {
        _searchButton = [[UIButton alloc] init];
        _searchButton.tag = 101;
        [_searchButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_searchButton setImage:[UIImage imageNamed:@"SD_search"] forState:UIControlStateNormal];
    }
    return _searchButton;
}
- (UIButton *)editorButton{
    if (!_editorButton) {
        _editorButton = [[UIButton alloc] init];
        _editorButton.tag = 102;
        [_editorButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_editorButton setImage:[UIImage imageNamed:@"SD_edit"] forState:UIControlStateNormal];
    }
    return _editorButton;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = SDH_Color(242, 242, 242, 242);
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [_mainTable registerClass:[SDShowDiaryTableViewCell class] forCellReuseIdentifier:@"SDShowDiaryTableViewCell"];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _mainTable;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
@end
