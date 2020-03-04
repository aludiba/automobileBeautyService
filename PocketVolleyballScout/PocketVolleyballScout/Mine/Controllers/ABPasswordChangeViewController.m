//
//  ABPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ABPasswordChangeViewController.h"
#import "ABPasswordTableViewCell.h"

@interface ABPasswordChangeViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ABmainTable;

@end

@implementation ABPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    self.ABmainTable.hidden = NO;
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABPasswordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABPasswordTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.ABuserName = self.ABuserName;
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
        [_ABmainTable registerClass:[ABPasswordTableViewCell class] forCellReuseIdentifier:@"ABPasswordTableViewCell"];
        [self.view addSubview:_ABmainTable];
        [_ABmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _ABmainTable;
}
@end
