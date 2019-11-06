//
//  YBLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBLoginViewController.h"
#import "YBLoginTableViewCell.h"
@interface YBLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *YBmainTable;
@end

@implementation YBLoginViewController
+ (YBLoginViewController *)shareInstance{
    static YBLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self YBsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)YBsetContentView{
    [self.view addSubview:self.YBmainTable];
    [self.YBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    YBLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)YBmainTable{
    if (!_YBmainTable) {
        _YBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _YBmainTable.backgroundColor = YBH_Color(242, 242, 242, 242);
        _YBmainTable.showsVerticalScrollIndicator = NO;
        _YBmainTable.scrollEnabled = NO;
        _YBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YBmainTable.delegate = self;
        _YBmainTable.dataSource = self;
        _YBmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBmainTable.estimatedRowHeight = 55.0f;
        _YBmainTable.tableHeaderView = [[UIView alloc] init];
        _YBmainTable.tableFooterView = [[UIView alloc] init];
        [_YBmainTable registerClass:[YBLoginTableViewCell class] forCellReuseIdentifier:@"YBLoginTableViewCell"];
    }
    return _YBmainTable;
}
@end
