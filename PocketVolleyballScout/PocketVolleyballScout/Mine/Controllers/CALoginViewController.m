//
//  CALoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CALoginViewController.h"
#import "CALoginTableViewCell.h"
@interface CALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CAmainTable;
@end

@implementation CALoginViewController
+ (CALoginViewController *)shareInstance{
    static CALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CALoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CAsetContentView{
    [self.view addSubview:self.CAmainTable];
    [self.CAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    CALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CALoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CAmainTable{
    if (!_CAmainTable) {
        _CAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _CAmainTable.backgroundColor = [UIColor whiteColor];
        _CAmainTable.showsVerticalScrollIndicator = NO;
        _CAmainTable.scrollEnabled = NO;
        _CAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CAmainTable.delegate = self;
        _CAmainTable.dataSource = self;
        _CAmainTable.rowHeight = UITableViewAutomaticDimension;
        _CAmainTable.estimatedRowHeight = 55.0f;
        _CAmainTable.tableHeaderView = [[UIView alloc] init];
        _CAmainTable.tableFooterView = [[UIView alloc] init];
        [_CAmainTable registerClass:[CALoginTableViewCell class] forCellReuseIdentifier:@"CALoginTableViewCell"];
    }
    return _CAmainTable;
}
@end
