//
//  WALoginViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WALoginViewController.h"
#import "WALoginTableViewCell.h"
@interface WALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *WAmainTable;
@end
@implementation WALoginViewController
+ (WALoginViewController *)shareInstance{
    static WALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[WALoginViewController allocWithZone:NULL] init];
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
    self.view.backgroundColor = WAH_Color(242, 242, 242, 1);
    [self.view addSubview:self.WAmainTable];
    [self.WAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    WALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WALoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)WAmainTable{
    if (!_WAmainTable) {
        _WAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _WAmainTable.showsVerticalScrollIndicator = NO;
        _WAmainTable.scrollEnabled = NO;
        _WAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _WAmainTable.delegate = self;
        _WAmainTable.dataSource = self;
        _WAmainTable.backgroundColor = WAH_Color(242, 242, 242, 1);
        _WAmainTable.rowHeight = UITableViewAutomaticDimension;
        _WAmainTable.estimatedRowHeight = 55.0f;
        _WAmainTable.tableHeaderView = [[UIView alloc] init];
        _WAmainTable.tableFooterView = [[UIView alloc] init];
        [_WAmainTable registerClass:[WALoginTableViewCell class] forCellReuseIdentifier:@"WALoginTableViewCell"];
    }
    return _WAmainTable;
}
@end
