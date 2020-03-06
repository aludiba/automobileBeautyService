//
//  CAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CAPasswordChangeViewController.h"
#import "CAPasswordTableViewCell.h"

@interface CAPasswordChangeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CAmainTable;

@end

@implementation CAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    self.CAmainTable.hidden = NO;
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CAPasswordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CAPasswordTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.CAuserName = self.CAuserName;
    cell.CASuperVC = self;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CAmainTable{
    if (!_CAmainTable) {
        _CAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CAmainTable.backgroundColor = [UIColor systemGreenColor];
        _CAmainTable.showsVerticalScrollIndicator = NO;
        _CAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CAmainTable.delegate = self;
        _CAmainTable.dataSource = self;
        _CAmainTable.rowHeight = UITableViewAutomaticDimension;
        _CAmainTable.estimatedRowHeight = 55.0f;
        _CAmainTable.tableHeaderView = [[UIView alloc] init];
        _CAmainTable.tableFooterView = [[UIView alloc] init];
        [_CAmainTable registerClass:[CAPasswordTableViewCell class] forCellReuseIdentifier:@"CAPasswordTableViewCell"];
        [self.view addSubview:_CAmainTable];
        [_CAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _CAmainTable;
}
@end
