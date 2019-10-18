//
//  SOLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOLoginViewController.h"
#import "SOLoginTableViewCell.h"
@interface SOLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *SOmainTable;
@end

@implementation SOLoginViewController
+ (SOLoginViewController *)shareInstance{
    static SOLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[SOLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self SOsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)SOsetContentView{
    self.view.backgroundColor = SOH_Color(242, 242, 242, 1);
    [self.view addSubview:self.SOmainTable];
    [self.SOmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    SOLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)SOmainTable{
    if (!_SOmainTable) {
        _SOmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _SOmainTable.showsVerticalScrollIndicator = NO;
        _SOmainTable.scrollEnabled = NO;
        _SOmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _SOmainTable.delegate = self;
        _SOmainTable.dataSource = self;
        _SOmainTable.backgroundColor = SOH_Color(242, 242, 242, 1);
        _SOmainTable.rowHeight = UITableViewAutomaticDimension;
        _SOmainTable.estimatedRowHeight = 55.0f;
        _SOmainTable.tableHeaderView = [[UIView alloc] init];
        _SOmainTable.tableFooterView = [[UIView alloc] init];
        [_SOmainTable registerClass:[SOLoginTableViewCell class] forCellReuseIdentifier:@"SOLoginTableViewCell"];
    }
    return _SOmainTable;
}
@end
