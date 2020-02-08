//
//  YBPBSLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPBSLoginViewController.h"
#import "YBPBSLoginTableViewCell.h"
@interface YBPBSLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *YBPBSmainTable;
@end

@implementation YBPBSLoginViewController
+ (YBPBSLoginViewController *)shareInstance{
    static YBPBSLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YBPBSLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self YBPBSsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)YBPBSsetContentView{
    [self.view addSubview:self.YBPBSmainTable];
    [self.YBPBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    YBPBSLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBPBSLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)YBPBSmainTable{
    if (!_YBPBSmainTable) {
        _YBPBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _YBPBSmainTable.backgroundColor = YBPBSH_Color(242, 242, 242, 242);
        _YBPBSmainTable.showsVerticalScrollIndicator = NO;
        _YBPBSmainTable.scrollEnabled = NO;
        _YBPBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YBPBSmainTable.delegate = self;
        _YBPBSmainTable.dataSource = self;
        _YBPBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBPBSmainTable.estimatedRowHeight = 55.0f;
        _YBPBSmainTable.tableHeaderView = [[UIView alloc] init];
        _YBPBSmainTable.tableFooterView = [[UIView alloc] init];
        [_YBPBSmainTable registerClass:[YBPBSLoginTableViewCell class] forCellReuseIdentifier:@"YBPBSLoginTableViewCell"];
    }
    return _YBPBSmainTable;
}
@end
