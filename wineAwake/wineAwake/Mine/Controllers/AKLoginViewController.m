//
//  AKLoginViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKLoginViewController.h"
#import "AKLoginTableViewCell.h"
@interface AKLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *AKmainTable;
@end
@implementation AKLoginViewController
+ (AKLoginViewController *)shareInstance{
    static AKLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AKLoginViewController allocWithZone:NULL] init];
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
    self.view.backgroundColor = AKH_Color(242, 242, 242, 1);
    [self.view addSubview:self.AKmainTable];
    [self.AKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    AKLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)AKmainTable{
    if (!_AKmainTable) {
        _AKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _AKmainTable.showsVerticalScrollIndicator = NO;
        _AKmainTable.scrollEnabled = NO;
        _AKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AKmainTable.delegate = self;
        _AKmainTable.dataSource = self;
        _AKmainTable.backgroundColor = AKH_Color(242, 242, 242, 1);
        _AKmainTable.rowHeight = UITableViewAutomaticDimension;
        _AKmainTable.estimatedRowHeight = 55.0f;
        _AKmainTable.tableHeaderView = [[UIView alloc] init];
        _AKmainTable.tableFooterView = [[UIView alloc] init];
        [_AKmainTable registerClass:[AKLoginTableViewCell class] forCellReuseIdentifier:@"AKLoginTableViewCell"];
    }
    return _AKmainTable;
}
@end
