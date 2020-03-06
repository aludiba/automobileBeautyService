//
//  CAMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CAMineViewController.h"
#import "CAMineTableViewCell.h"

@interface CAMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CAmainTable;
@end

@implementation CAMineViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.CAmainTable.hidden = NO;
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
    CAMineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAMineTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.CASuperVC = self;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CAmainTable{
    if (!_CAmainTable) {
        _CAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CAmainTable.backgroundColor = [UIColor greenColor];
        _CAmainTable.showsVerticalScrollIndicator = NO;
        _CAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CAmainTable.delegate = self;
        _CAmainTable.dataSource = self;
        _CAmainTable.rowHeight = UITableViewAutomaticDimension;
        _CAmainTable.estimatedRowHeight = 55.0f;
        _CAmainTable.tableHeaderView = [[UIView alloc] init];
        _CAmainTable.tableFooterView = [[UIView alloc] init];
        [_CAmainTable registerClass:[CAMineTableViewCell class] forCellReuseIdentifier:@"CAMineTableViewCell"];
        [self.view addSubview:_CAmainTable];
        [_CAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view).offset(-CAHeightStatusBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-CAHeightTabBar);
        }];
    }
    return _CAmainTable;
}
@end
