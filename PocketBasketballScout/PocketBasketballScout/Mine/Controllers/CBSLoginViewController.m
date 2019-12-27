//
//  CBSLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CBSLoginViewController.h"
#import "CBSLoginTableViewCell.h"
@interface CBSLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *CBSmainTable;
@end

@implementation CBSLoginViewController
+ (CBSLoginViewController *)shareInstance{
    static CBSLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CBSLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CBSsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CBSsetContentView{
    [self.view addSubview:self.CBSmainTable];
    [self.CBSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    CBSLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CBSLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)CBSmainTable{
    if (!_CBSmainTable) {
        _CBSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _CBSmainTable.backgroundColor = CBSH_Color(242, 242, 242, 242);
        _CBSmainTable.showsVerticalScrollIndicator = NO;
        _CBSmainTable.scrollEnabled = NO;
        _CBSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CBSmainTable.delegate = self;
        _CBSmainTable.dataSource = self;
        _CBSmainTable.rowHeight = UITableViewAutomaticDimension;
        _CBSmainTable.estimatedRowHeight = 55.0f;
        _CBSmainTable.tableHeaderView = [[UIView alloc] init];
        _CBSmainTable.tableFooterView = [[UIView alloc] init];
        [_CBSmainTable registerClass:[CBSLoginTableViewCell class] forCellReuseIdentifier:@"CBSLoginTableViewCell"];
    }
    return _CBSmainTable;
}
@end
