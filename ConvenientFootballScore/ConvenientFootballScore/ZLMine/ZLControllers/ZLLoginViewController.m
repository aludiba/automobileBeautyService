//
//  ZLLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ZLLoginViewController.h"
#import "ZLLoginTableViewCell.h"
@interface ZLLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ZLmainTable;
@end

@implementation ZLLoginViewController
+ (ZLLoginViewController *)shareInstance{
    static ZLLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ZLLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ZLsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)ZL_setupNavigationItems{
    UIView *navView = [[UIView alloc] init];
    navView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:navView];
    [navView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(-ZLHeightStatusBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(ZLHeightNavBar);
    }];
}
- (void)ZLsetContentView{
    [self.view addSubview:self.ZLmainTable];
    [self.ZLmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    ZLLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)ZLmainTable{
    if (!_ZLmainTable) {
        _ZLmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _ZLmainTable.backgroundColor = ZLH_Color(242, 242, 242, 242);
        _ZLmainTable.showsVerticalScrollIndicator = NO;
        _ZLmainTable.scrollEnabled = NO;
        _ZLmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ZLmainTable.delegate = self;
        _ZLmainTable.dataSource = self;
        _ZLmainTable.rowHeight = UITableViewAutomaticDimension;
        _ZLmainTable.estimatedRowHeight = 55.0f;
        _ZLmainTable.tableHeaderView = [[UIView alloc] init];
        _ZLmainTable.tableFooterView = [[UIView alloc] init];
        [_ZLmainTable registerClass:[ZLLoginTableViewCell class] forCellReuseIdentifier:@"ZLLoginTableViewCell"];
    }
    return _ZLmainTable;
}
@end
