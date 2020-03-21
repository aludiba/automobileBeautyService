//
//  AHLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHLoginViewController.h"
#import "AHLoginTableViewCell.h"
@interface AHLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *AHmainTable;
@end

@implementation AHLoginViewController
+ (AHLoginViewController *)AHshareInstance{
    static AHLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AHLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self AHsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)AHsetContentView{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.AHmainTable];
    [self.AHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.mas_bottomLayoutGuideBottom);
    }];
}
#pragma mark - 属性懒加载
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AHLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)AHmainTable{
    if (!_AHmainTable) {
        _AHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _AHmainTable.showsVerticalScrollIndicator = NO;
        _AHmainTable.scrollEnabled = NO;
        _AHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AHmainTable.delegate = self;
        _AHmainTable.dataSource = self;
        _AHmainTable.backgroundColor = [UIColor whiteColor];
        _AHmainTable.rowHeight = UITableViewAutomaticDimension;
        _AHmainTable.estimatedRowHeight = 55.0f;
        _AHmainTable.tableHeaderView = [[UIView alloc] init];
        _AHmainTable.tableFooterView = [[UIView alloc] init];
        [_AHmainTable registerClass:[AHLoginTableViewCell class] forCellReuseIdentifier:@"AHLoginTableViewCell"];
    }
    return _AHmainTable;
}
@end
