//
//  YWKGALoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGALoginViewController.h"
#import "YWKGALoginTableViewCell.h"
@interface YWKGALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *YWKGAmainTable;
@end

@implementation YWKGALoginViewController
+ (YWKGALoginViewController *)shareInstance{
    static YWKGALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[YWKGALoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self YWKGAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)YWKGAsetContentView{
    [self.view addSubview:self.YWKGAmainTable];
    [self.YWKGAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    YWKGALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGALoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)YWKGAmainTable{
    if (!_YWKGAmainTable) {
        _YWKGAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _YWKGAmainTable.showsVerticalScrollIndicator = NO;
        _YWKGAmainTable.scrollEnabled = NO;
        _YWKGAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _YWKGAmainTable.delegate = self;
        _YWKGAmainTable.dataSource = self;
        _YWKGAmainTable.rowHeight = UITableViewAutomaticDimension;
        _YWKGAmainTable.estimatedRowHeight = 55.0f;
        _YWKGAmainTable.tableHeaderView = [[UIView alloc] init];
        _YWKGAmainTable.tableFooterView = [[UIView alloc] init];
        [_YWKGAmainTable registerClass:[YWKGALoginTableViewCell class] forCellReuseIdentifier:@"YWKGALoginTableViewCell"];
    }
    return _YWKGAmainTable;
}
@end
