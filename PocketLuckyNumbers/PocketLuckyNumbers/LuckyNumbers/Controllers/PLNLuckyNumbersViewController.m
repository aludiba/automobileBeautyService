//
//  PLNLuckyNumbersViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNLuckyNumbersViewController.h"
#import "PLNLuckyNumbersTableViewCell.h"
#import "PLNLuckyNumbersModel.h"
@interface PLNLuckyNumbersViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PLNMainTable;//列表
@property(nonatomic, strong)PLNLuckyNumbersModel *PLNModel;
@end

@implementation PLNLuckyNumbersViewController
+ (PLNLuckyNumbersViewController *)shareInstance{
    static PLNLuckyNumbersViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PLNLuckyNumbersViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"幸运数字", nil);
    self.view.backgroundColor = [UIColor systemRedColor];
    [self.PLNMainTable reloadData];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}
#pragma mark - actions
- (void)PLNsaveAction{
    
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PLNLuckyNumbersTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PLNLuckyNumbersTableViewCell" forIndexPath:indexPath];
    __weak typeof(self) weakSelf = self;
    cell.PLNLuckyNumbersB = ^(PLNLuckyNumbersTableViewCell * _Nonnull cell) {
        weakSelf.PLNModel.PLNGeneratedNumber = cell.PLNLuckyNumber;
    };
    return cell;
}
#pragma mark - 属性懒加载
- (PLNLuckyNumbersModel *)PLNModel{
    if (!_PLNModel) {
        _PLNModel = [[PLNLuckyNumbersModel alloc] init];
        _PLNModel.PLNMinNumber = 1;
        _PLNModel.PLNMaxNumber = 100;//最大数
    }
    return _PLNModel;
}
- (UITableView *)PLNMainTable{
    if (!_PLNMainTable) {
        _PLNMainTable = [[UITableView alloc] init];
        _PLNMainTable.backgroundColor = [UIColor systemRedColor];
         _PLNMainTable.showsVerticalScrollIndicator = NO;
         _PLNMainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
         _PLNMainTable.delegate = self;
         _PLNMainTable.dataSource = self;
         _PLNMainTable.rowHeight = UITableViewAutomaticDimension;
         _PLNMainTable.estimatedRowHeight = 55.0f;
         _PLNMainTable.tableHeaderView = [[UIView alloc] init];
         _PLNMainTable.tableFooterView = [[UIView alloc] init];
        [_PLNMainTable registerClass:[PLNLuckyNumbersTableViewCell class] forCellReuseIdentifier:@"PLNLuckyNumbersTableViewCell"];
         [self.view addSubview:_PLNMainTable];
         [_PLNMainTable mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.mas_topLayoutGuideBottom);
             make.leading.equalTo(self.view);
             make.trailing.equalTo(self.view);
             make.bottom.equalTo(self.view).offset(-PLNHeightTabBar);
         }];
    }
    return _PLNMainTable;
}
@end
