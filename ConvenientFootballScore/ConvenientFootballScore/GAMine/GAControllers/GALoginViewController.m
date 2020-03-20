//
//  GALoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GALoginViewController.h"
#import "GALoginTableViewCell.h"
@interface GALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *GAmainTable;
@end

@implementation GALoginViewController
+ (GALoginViewController *)shareInstance{
    static GALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GALoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self GAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)GA_setupNavigationItems{
    UIView *navView = [[UIView alloc] init];
    navView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:navView];
    [navView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
- (void)GAsetContentView{
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.GAmainTable];
    [self.GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    GALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GALoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _GAmainTable.backgroundColor = [UIColor greenColor];
        _GAmainTable.showsVerticalScrollIndicator = NO;
        _GAmainTable.scrollEnabled = NO;
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GALoginTableViewCell class] forCellReuseIdentifier:@"GALoginTableViewCell"];
    }
    return _GAmainTable;
}
@end
