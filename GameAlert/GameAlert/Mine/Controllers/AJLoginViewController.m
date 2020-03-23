//
//  AJLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJLoginViewController.h"
#import "AJLoginTableViewCell.h"
@interface AJLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *AJmainTable;
@end

@implementation AJLoginViewController
+ (AJLoginViewController *)AJshareInstance{
    static AJLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AJLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self AJsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)AJsetContentView{
    [self.view addSubview:self.AJmainTable];
    [self.AJmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
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
    AJLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJLoginTableViewCell" forIndexPath:indexPath];
    cell.AJtype = self.AJtype;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)AJmainTable{
    if (!_AJmainTable) {
        _AJmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _AJmainTable.backgroundColor = AJH_Color(44, 77, 93, 0.5);
        _AJmainTable.showsVerticalScrollIndicator = NO;
        _AJmainTable.scrollEnabled = NO;
        _AJmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AJmainTable.delegate = self;
        _AJmainTable.dataSource = self;
        _AJmainTable.rowHeight = UITableViewAutomaticDimension;
        _AJmainTable.estimatedRowHeight = 55.0f;
        _AJmainTable.tableHeaderView = [[UIView alloc] init];
        _AJmainTable.tableFooterView = [[UIView alloc] init];
        [_AJmainTable registerClass:[AJLoginTableViewCell class] forCellReuseIdentifier:@"AJLoginTableViewCell"];
    }
    return _AJmainTable;
}
@end
