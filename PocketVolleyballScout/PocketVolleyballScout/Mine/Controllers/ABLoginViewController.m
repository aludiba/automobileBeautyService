//
//  ABLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ABLoginViewController.h"
#import "ABLoginTableViewCell.h"
@interface ABLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ABmainTable;
@end

@implementation ABLoginViewController
+ (ABLoginViewController *)shareInstance{
    static ABLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ABLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ABsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)ABsetContentView{
    [self.view addSubview:self.ABmainTable];
    [self.ABmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    ABLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)ABmainTable{
    if (!_ABmainTable) {
        _ABmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _ABmainTable.backgroundColor = [UIColor whiteColor];
        _ABmainTable.showsVerticalScrollIndicator = NO;
        _ABmainTable.scrollEnabled = NO;
        _ABmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ABmainTable.delegate = self;
        _ABmainTable.dataSource = self;
        _ABmainTable.rowHeight = UITableViewAutomaticDimension;
        _ABmainTable.estimatedRowHeight = 55.0f;
        _ABmainTable.tableHeaderView = [[UIView alloc] init];
        _ABmainTable.tableFooterView = [[UIView alloc] init];
        [_ABmainTable registerClass:[ABLoginTableViewCell class] forCellReuseIdentifier:@"ABLoginTableViewCell"];
    }
    return _ABmainTable;
}
@end
