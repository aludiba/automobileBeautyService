//
//  PWLoginViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWLoginViewController.h"
#import "PWLoginTableViewCell.h"
@interface PWLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PWmainTable;
@end
@implementation PWLoginViewController
+ (PWLoginViewController *)shareInstance{
    static PWLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PWLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)setContentView{
    self.view.backgroundColor = PWH_Color(242, 242, 242, 1);
    [self.view addSubview:self.PWmainTable];
    [self.PWmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    PWLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PWLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)PWmainTable{
    if (!_PWmainTable) {
        _PWmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _PWmainTable.showsVerticalScrollIndicator = NO;
        _PWmainTable.scrollEnabled = NO;
        _PWmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PWmainTable.delegate = self;
        _PWmainTable.dataSource = self;
        _PWmainTable.backgroundColor = PWH_Color(242, 242, 242, 1);
        _PWmainTable.rowHeight = UITableViewAutomaticDimension;
        _PWmainTable.estimatedRowHeight = 55.0f;
        _PWmainTable.tableHeaderView = [[UIView alloc] init];
        _PWmainTable.tableFooterView = [[UIView alloc] init];
        [_PWmainTable registerClass:[PWLoginTableViewCell class] forCellReuseIdentifier:@"PWLoginTableViewCell"];
    }
    return _PWmainTable;
}
@end
