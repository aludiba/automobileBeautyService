//
//  stbaAddressBookDetailsViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddressBookDetailsViewController.h"
#import "stbaAddressBookDetailsTableViewCell.h"
#import "stbaAddressBookModel.h"

@interface stbaAddressBookDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation stbaAddressBookDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    stbaAddressBookDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"stbaAddressBookDetailsTableViewCell" forIndexPath:indexPath];
    cell.model = self.model;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = [UIColor groupTableViewBackgroundColor];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 200.0f;
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
        }];
        [_mainTable registerClass:[stbaAddressBookDetailsTableViewCell class] forCellReuseIdentifier:@"stbaAddressBookDetailsTableViewCell"];
    }
    return _mainTable;
}
@end
