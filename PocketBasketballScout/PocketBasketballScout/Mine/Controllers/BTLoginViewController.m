//
//  BTLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "BTLoginViewController.h"
#import "BTLoginTableViewCell.h"
@interface BTLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *BTmainTable;
@end

@implementation BTLoginViewController
+ (BTLoginViewController *)shareInstance{
    static BTLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[BTLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BTsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)BTsetContentView{
    [self.view addSubview:self.BTmainTable];
    [self.BTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    BTLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BTLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)BTmainTable{
    if (!_BTmainTable) {
        _BTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _BTmainTable.backgroundColor = BTH_Color(242, 242, 242, 242);
        _BTmainTable.showsVerticalScrollIndicator = NO;
        _BTmainTable.scrollEnabled = NO;
        _BTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BTmainTable.delegate = self;
        _BTmainTable.dataSource = self;
        _BTmainTable.rowHeight = UITableViewAutomaticDimension;
        _BTmainTable.estimatedRowHeight = 55.0f;
        _BTmainTable.tableHeaderView = [[UIView alloc] init];
        _BTmainTable.tableFooterView = [[UIView alloc] init];
        [_BTmainTable registerClass:[BTLoginTableViewCell class] forCellReuseIdentifier:@"BTLoginTableViewCell"];
    }
    return _BTmainTable;
}
@end
