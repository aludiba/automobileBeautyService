//
//  ABMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ABMineViewController.h"
#import "ABMineTableViewCell.h"

@interface ABMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ABmainTable;
@end

@implementation ABMineViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.ABmainTable.hidden = NO;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABMineTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.ABSuperVC = self;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)ABmainTable{
    if (!_ABmainTable) {
        _ABmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ABmainTable.backgroundColor = [UIColor systemGreenColor];
        _ABmainTable.showsVerticalScrollIndicator = NO;
        _ABmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ABmainTable.delegate = self;
        _ABmainTable.dataSource = self;
        _ABmainTable.rowHeight = UITableViewAutomaticDimension;
        _ABmainTable.estimatedRowHeight = 55.0f;
        _ABmainTable.tableHeaderView = [[UIView alloc] init];
        _ABmainTable.tableFooterView = [[UIView alloc] init];
        [_ABmainTable registerClass:[ABMineTableViewCell class] forCellReuseIdentifier:@"ABMineTableViewCell"];
        [self.view addSubview:_ABmainTable];
        [_ABmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view).offset(-ABHeightStatusBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ABHeightTabBar);
        }];
    }
    return _ABmainTable;
}
@end
