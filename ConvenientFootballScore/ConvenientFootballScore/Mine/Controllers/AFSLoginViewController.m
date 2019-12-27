//
//  AFSLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFSLoginViewController.h"
#import "AFSLoginTableViewCell.h"
@interface AFSLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *AFSmainTable;
@end

@implementation AFSLoginViewController
+ (AFSLoginViewController *)shareInstance{
    static AFSLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AFSLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self AFSsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)AFSsetContentView{
    [self.view addSubview:self.AFSmainTable];
    [self.AFSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    AFSLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)AFSmainTable{
    if (!_AFSmainTable) {
        _AFSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _AFSmainTable.backgroundColor = AFSH_Color(242, 242, 242, 242);
        _AFSmainTable.showsVerticalScrollIndicator = NO;
        _AFSmainTable.scrollEnabled = NO;
        _AFSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AFSmainTable.delegate = self;
        _AFSmainTable.dataSource = self;
        _AFSmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFSmainTable.estimatedRowHeight = 55.0f;
        _AFSmainTable.tableHeaderView = [[UIView alloc] init];
        _AFSmainTable.tableFooterView = [[UIView alloc] init];
        [_AFSmainTable registerClass:[AFSLoginTableViewCell class] forCellReuseIdentifier:@"AFSLoginTableViewCell"];
    }
    return _AFSmainTable;
}
@end
