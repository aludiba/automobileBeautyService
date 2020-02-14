//
//  PVYWKLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKLoginViewController.h"
#import "PVYWKLoginTableViewCell.h"
@interface PVYWKLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PVYWKmainTable;
@end

@implementation PVYWKLoginViewController
+ (PVYWKLoginViewController *)shareInstance{
    static PVYWKLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVYWKLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self PVYWKsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)PVYWKsetContentView{
    [self.view addSubview:self.PVYWKmainTable];
    [self.PVYWKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVYWKLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)PVYWKmainTable{
    if (!_PVYWKmainTable) {
        _PVYWKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _PVYWKmainTable.backgroundColor = PVYWKH_Color(242, 242, 242, 242);
        _PVYWKmainTable.showsVerticalScrollIndicator = NO;
        _PVYWKmainTable.scrollEnabled = NO;
        _PVYWKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PVYWKmainTable.delegate = self;
        _PVYWKmainTable.dataSource = self;
        _PVYWKmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVYWKmainTable.estimatedRowHeight = 55.0f;
        _PVYWKmainTable.tableHeaderView = [[UIView alloc] init];
        _PVYWKmainTable.tableFooterView = [[UIView alloc] init];
        [_PVYWKmainTable registerClass:[PVYWKLoginTableViewCell class] forCellReuseIdentifier:@"PVYWKLoginTableViewCell"];
    }
    return _PVYWKmainTable;
}
@end
