//
//  CFLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CFLoginViewController.h"
#import "CFLoginTableViewCell.h"
@interface CFLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CFmainTable;
@end

@implementation CFLoginViewController
+ (CFLoginViewController *)shareInstance{
    static CFLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CFLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CFsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CFsetContentView{
    [self.view addSubview:self.CFmainTable];
    [self.CFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    CFLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CFLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CFmainTable{
    if (!_CFmainTable) {
        _CFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _CFmainTable.backgroundColor = CFH_Color(242, 242, 242, 242);
        _CFmainTable.showsVerticalScrollIndicator = NO;
        _CFmainTable.scrollEnabled = NO;
        _CFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CFmainTable.delegate = self;
        _CFmainTable.dataSource = self;
        _CFmainTable.rowHeight = UITableViewAutomaticDimension;
        _CFmainTable.estimatedRowHeight = 55.0f;
        _CFmainTable.tableHeaderView = [[UIView alloc] init];
        _CFmainTable.tableFooterView = [[UIView alloc] init];
        [_CFmainTable registerClass:[CFLoginTableViewCell class] forCellReuseIdentifier:@"CFLoginTableViewCell"];
    }
    return _CFmainTable;
}
@end
