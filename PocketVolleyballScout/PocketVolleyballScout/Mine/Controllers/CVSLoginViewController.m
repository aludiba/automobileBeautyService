//
//  CVSLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CVSLoginViewController.h"
#import "CVSLoginTableViewCell.h"
@interface CVSLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CVSmainTable;
@end

@implementation CVSLoginViewController
+ (CVSLoginViewController *)shareInstance{
    static CVSLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CVSLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CVSsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CVSsetContentView{
    [self.view addSubview:self.CVSmainTable];
    [self.CVSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    CVSLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CVSLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CVSmainTable{
    if (!_CVSmainTable) {
        _CVSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _CVSmainTable.backgroundColor = [UIColor whiteColor];
        _CVSmainTable.showsVerticalScrollIndicator = NO;
        _CVSmainTable.scrollEnabled = NO;
        _CVSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CVSmainTable.delegate = self;
        _CVSmainTable.dataSource = self;
        _CVSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CVSmainTable.estimatedRowHeight = 55.0f;
        _CVSmainTable.tableHeaderView = [[UIView alloc] init];
        _CVSmainTable.tableFooterView = [[UIView alloc] init];
        [_CVSmainTable registerClass:[CVSLoginTableViewCell class] forCellReuseIdentifier:@"CVSLoginTableViewCell"];
    }
    return _CVSmainTable;
}
@end
