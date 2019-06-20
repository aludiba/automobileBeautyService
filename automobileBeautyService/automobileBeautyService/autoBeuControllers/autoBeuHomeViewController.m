//
//  auto4sHomeViewController.m
//  carMaintenanceCustomerServiceRecord
//
//  Created by bykj on 2019/6/12.
//  Copyright © 2019年 ppb. All rights reserved.
//

#import "autoBeuHomeViewController.h"
#import "autoBeuHeadImgTableViewCell.h"
#import "autoBeuRecordTableViewCell.h"
#import "autoBeuAddViewController.h"
@interface autoBeuHomeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *autoBeumainTable;
@property(nonatomic, strong)NSMutableArray *autoBeudataArray;
@end
@implementation autoBeuHomeViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    self.title = @"Home";
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.autoBeumainTable.mj_header beginRefreshing];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
- (void)loadData{
    NSString *documentPath = [autoBeuHBTool getDocumentPath:@"autoBeuData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        [self.autoBeudataArray removeAllObjects];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            autoBeuDataModel *model = [autoBeuDataModel yy_modelWithDictionary:dic];
            [self.autoBeudataArray addObject:model];
        }
    }
    [self.autoBeumainTable.mj_header endRefreshing];
    [self.autoBeumainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.autoBeudataArray.count + 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0) {
        autoBeuHeadImgTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"autoBeuHeadImgTableViewCell" forIndexPath:indexPath];
        return cell;
    }else{
        autoBeuRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"autoBeuRecordTableViewCell" forIndexPath:indexPath];
        cell.superVC = self;
        cell.model = self.autoBeudataArray[indexPath.row - 1];
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    autoBeuDataModel *model = self.autoBeudataArray[indexPath.row - 1];
    autoBeuAddViewController *vc = [[autoBeuAddViewController alloc] init];
    vc.currentType = autoBeuAddViewControllerTypeDetail;
    vc.model = model;
    [self.navigationController pushViewController:vc animated:YES];
}
#pragma mark - 属性懒加载
- (UITableView *)autoBeumainTable{
    if (!_autoBeumainTable) {
        _autoBeumainTable = [[UITableView alloc] init];
        CGFloat aRedValue = arc4random() % 255;
        CGFloat aGreenValue = arc4random() % 255;
        CGFloat aBlueValue = arc4random() % 255;
        _autoBeumainTable.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
        _autoBeumainTable.rowHeight = UITableViewAutomaticDimension;
        _autoBeumainTable.estimatedRowHeight = 55.0f;
        _autoBeumainTable.dataSource = self;
        _autoBeumainTable.delegate = self;
        _autoBeumainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_autoBeumainTable registerClass:[autoBeuHeadImgTableViewCell class] forCellReuseIdentifier:@"autoBeuHeadImgTableViewCell"];
        [_autoBeumainTable registerClass:[autoBeuRecordTableViewCell class] forCellReuseIdentifier:@"autoBeuRecordTableViewCell"];
        _autoBeumainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_autoBeumainTable];
        [_autoBeumainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
    }
    return _autoBeumainTable;
}
- (NSMutableArray *)autoBeudataArray{
    if (!_autoBeudataArray) {
        _autoBeudataArray = [[NSMutableArray alloc] init];
    }
    return _autoBeudataArray;
}
@end
