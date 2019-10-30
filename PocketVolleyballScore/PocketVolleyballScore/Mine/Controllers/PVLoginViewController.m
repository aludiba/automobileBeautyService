//
//  PVLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVLoginViewController.h"
#import "PVLoginTableViewCell.h"
@interface PVLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PVmainTable;
@end

@implementation PVLoginViewController
+ (PVLoginViewController *)shareInstance{
    static PVLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PVLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self PVsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)PVsetContentView{
    [self.view addSubview:self.PVmainTable];
    [self.PVmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    PVLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)PVmainTable{
    if (!_PVmainTable) {
        _PVmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _PVmainTable.backgroundColor = PVH_Color(242, 242, 242, 242);
        _PVmainTable.showsVerticalScrollIndicator = NO;
        _PVmainTable.scrollEnabled = NO;
        _PVmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PVmainTable.delegate = self;
        _PVmainTable.dataSource = self;
        _PVmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVmainTable.estimatedRowHeight = 55.0f;
        _PVmainTable.tableHeaderView = [[UIView alloc] init];
        _PVmainTable.tableFooterView = [[UIView alloc] init];
        [_PVmainTable registerClass:[PVLoginTableViewCell class] forCellReuseIdentifier:@"PVLoginTableViewCell"];
    }
    return _PVmainTable;
}
@end
