//
//  ABHistoryViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABHistoryViewController.h"
#import "ABHistoryTableViewCell.h"
#import "ABMeasurementModel.h"
@interface ABHistoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UIButton *editorForEmptyButton;
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *dataArray;
@end
@implementation ABHistoryViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
    self.title = @"历史";
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = ABH_Color(32, 37, 54, 1);
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    [self loadData];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
- (void)AB_setupNavigationItems{
    [self setNavigationBarItems];
}
- (void)setNavigationBarItems{
    UIBarButtonItem *editorItem = [[UIBarButtonItem alloc] initWithCustomView:self.editorForEmptyButton];
    self.navigationItem.rightBarButtonItem = editorItem;
}
#pragma mark - actions
- (void)loadData{
    [self.dataArray removeAllObjects];
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"DB"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        if (error) {
            [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }else{
            [self.dataArray removeAllObjects];
            for (int i = 0; i < array.count; i++) {
                BmobObject *obj = array[i];
                ABMeasurementModel *model = [[ABMeasurementModel alloc] init];
                model.objectId = [obj objectId];
                model.date = [obj objectForKey:@"date"];
                model.maxDB = [obj objectForKey:@"maxDB"];
                model.position = [obj objectForKey:@"position"];
                model.realDB = [obj objectForKey:@"realDB"];
                model.title = [obj objectForKey:@"title"];
                model.averageDB = [obj objectForKey:@"averageDB"];
                [self.dataArray addObject:model];
            }
            [self.mainTable.mj_header endRefreshing];
            [self.mainTable reloadData];
        }
    }];
}
- (void)btnClick:(UIButton *)sender{
    BmobObjectsBatch *batch = [[BmobObjectsBatch alloc] init] ;
    for (int i = 0; i < self.dataArray.count; i++) {
        BmobObject *obj = self.dataArray[i];
        NSString *objectId = [obj objectId];
        [batch deleteBmobObjectWithClassName:@"DB" objectId:objectId];
    }
    [batch batchObjectsInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD ABshowReminderText:@"数据清空成功"];
        }else{
            [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }
    }];
    [self.dataArray removeAllObjects];
    [self.mainTable reloadData];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABMeasurementModel *model = self.dataArray[indexPath.row];
    ABHistoryTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABHistoryTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UIButton *)editorForEmptyButton{
    if (!_editorForEmptyButton) {
        _editorForEmptyButton = [[UIButton alloc] init];
        [_editorForEmptyButton setTitleColor:ABH_Color(1, 214, 155, 1) forState:UIControlStateNormal];
        [_editorForEmptyButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_editorForEmptyButton setTitle:@"清空" forState:UIControlStateNormal];
        _editorForEmptyButton.tag = 100;
        [_editorForEmptyButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _editorForEmptyButton;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = ABH_Color(21, 24, 46, 1);
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [_mainTable registerClass:[ABHistoryTableViewCell class] forCellReuseIdentifier:@"ABHistoryTableViewCell"];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ABHeightTabBar);
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
