//
//  stbaSearchAddressBookViewController.m
//  smallTeamBuildingActivities
//
//  Created by 褚红彪 on 2019/7/10.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaChooseAddressBookViewController.h"
#import "stbaSearchBox.h"
#import "stbaChooseAddressBookTableViewCell.h"
#import "stbaAddressBookModel.h"
@interface stbaChooseAddressBookViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)stbaSearchBox *searchbox;//搜索框
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)UIButton *completebtn;//完成键
@property(nonatomic, strong)NSMutableArray *dataArray;//数据数组
@end

@implementation stbaChooseAddressBookViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setContentView];
    [self loadData];
}
- (void)setContentView{
    self.title = @"Select contacts";
    [self.view addSubview:self.searchbox];
    [self.searchbox mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view);
        make.top.equalTo(self.mas_topLayoutGuideBottom);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(47);
    }];
}
- (void)stba_setupNavigationItems{
    [super stba_setupNavigationItems];
    self.completebtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithCustomView:self.completebtn];
    self.navigationItem.rightBarButtonItem = rightItem;
    [self.completebtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(49.5);
        make.height.mas_equalTo(30);
    }];
}
- (void)loadData{
    NSString *documentPath = [stbaHBTool getDocumentPath:@"stbaData.plist"];
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    if (documentData.count) {
        [self.dataArray removeAllObjects];
        for (int i = 0; i < documentData.count; i++) {
            NSDictionary *dict = documentData[i];
            NSDictionary *dic = dict[@"data"];
            stbaAddressBookModel *model = [stbaAddressBookModel yy_modelWithDictionary:dic];
            [self.dataArray addObject:model];
        }
    }
    [self.mainTable.mj_header endRefreshing];
    [self.mainTable reloadData];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.row];
    stbaChooseAddressBookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaChooseAddressBookTableViewCell" forIndexPath:indexPath];
    for (stbaAddressBookModel *selectResearcherModel in self.selectArray) {
        if ([selectResearcherModel.name isEqualToString:model.name]) {
            model.isSlect = YES;
            break;
        }
    }
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookModel *model = self.dataArray[indexPath.section];
    for (int i = 0; i < self.selectArray.count; i++) {
        stbaAddressBookModel *selectResearcherModel = self.selectArray[i];
        if ([selectResearcherModel.name isEqualToString:model.name]) {
            model.isSlect = NO;
            [self.selectArray removeObject:selectResearcherModel];
            [self.mainTable reloadData];
            return;
        }
    }
    [self.selectArray addObject:model];
    [self.mainTable reloadData];
}
#pragma mark - 进入搜索
- (void)researcher:(stbaSearchBox *)searchbox{
    
}
#pragma mark - 完成
- (void)complete{
    self.finishSelectBlock(self);
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)selectArray{
    if (!_selectArray) {
        _selectArray = [[NSMutableArray alloc] init];
    }
    return _selectArray;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (stbaSearchBox *)searchbox{
    if (!_searchbox) {
        _searchbox = [[stbaSearchBox alloc] init];
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(researcher:)];
        [_searchbox addGestureRecognizer:tap];
    }
    return _searchbox;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.backgroundColor = stbaH_Color(242, 242, 242, 1);
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.sectionHeaderHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedSectionHeaderHeight = 40.5f;
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [_mainTable registerClass:[stbaChooseAddressBookTableViewCell class] forCellReuseIdentifier:@"stbaChooseAddressBookTableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.searchbox.mas_bottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
    }
    return _mainTable;
}
- (UIButton *)completebtn{
    if (!_completebtn) {
        _completebtn = [[UIButton alloc] init];
        _completebtn.backgroundColor = [UIColor colorWithRed:223/255.0 green:231/255.0 blue:250/255.0 alpha:1/1.0];
        _completebtn.layer.cornerRadius = 4;
        _completebtn.layer.masksToBounds = YES;
        [_completebtn setTitle:@"complete" forState:UIControlStateNormal];
        [_completebtn.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:14]];
        [_completebtn.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [_completebtn setTitleColor: [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_completebtn addTarget:self action:@selector(complete) forControlEvents:UIControlEventTouchUpInside];
    }
    return _completebtn;
}
@end
