//
//  WBYBKOKLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WBYBKOKLoginViewController.h"
#import "WBYBKOKLoginTableViewCell.h"
@interface WBYBKOKLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *WBYBKOKmainTable;
@end

@implementation WBYBKOKLoginViewController
+ (WBYBKOKLoginViewController *)shareInstance{
    static WBYBKOKLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[WBYBKOKLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self WBYBKOKsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)WBYBKOKsetContentView{
    [self.view addSubview:self.WBYBKOKmainTable];
    [self.WBYBKOKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    WBYBKOKLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WBYBKOKLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)WBYBKOKmainTable{
    if (!_WBYBKOKmainTable) {
        _WBYBKOKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _WBYBKOKmainTable.backgroundColor = WBYBKOKH_Color(242, 242, 242, 242);
        _WBYBKOKmainTable.showsVerticalScrollIndicator = NO;
        _WBYBKOKmainTable.scrollEnabled = NO;
        _WBYBKOKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _WBYBKOKmainTable.delegate = self;
        _WBYBKOKmainTable.dataSource = self;
        _WBYBKOKmainTable.rowHeight = UITableViewAutomaticDimension;
        _WBYBKOKmainTable.estimatedRowHeight = 55.0f;
        _WBYBKOKmainTable.tableHeaderView = [[UIView alloc] init];
        _WBYBKOKmainTable.tableFooterView = [[UIView alloc] init];
        [_WBYBKOKmainTable registerClass:[WBYBKOKLoginTableViewCell class] forCellReuseIdentifier:@"WBYBKOKLoginTableViewCell"];
    }
    return _WBYBKOKmainTable;
}
@end
