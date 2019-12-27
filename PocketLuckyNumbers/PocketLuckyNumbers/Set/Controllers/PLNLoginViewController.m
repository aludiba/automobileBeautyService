//
//  PLNLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PLNLoginViewController.h"
#import "PLNLoginTableViewCell.h"
@interface PLNLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PLNmainTable;
@end

@implementation PLNLoginViewController
+ (PLNLoginViewController *)shareInstance{
    static PLNLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PLNLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self PLNsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)PLN_setupNavigationItems{
    UIView *navView = [[UIView alloc] init];
    navView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:navView];
    [navView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(-PLNHeightStatusBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(PLNHeightNavBar);
    }];
}
- (void)PLNsetContentView{
    [self.view addSubview:self.PLNmainTable];
    [self.PLNmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    PLNLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PLNLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)PLNmainTable{
    if (!_PLNmainTable) {
        _PLNmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _PLNmainTable.backgroundColor = PLNH_Color(242, 242, 242, 242);
        _PLNmainTable.showsVerticalScrollIndicator = NO;
        _PLNmainTable.scrollEnabled = NO;
        _PLNmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PLNmainTable.delegate = self;
        _PLNmainTable.dataSource = self;
        _PLNmainTable.rowHeight = UITableViewAutomaticDimension;
        _PLNmainTable.estimatedRowHeight = 55.0f;
        _PLNmainTable.tableHeaderView = [[UIView alloc] init];
        _PLNmainTable.tableFooterView = [[UIView alloc] init];
        [_PLNmainTable registerClass:[PLNLoginTableViewCell class] forCellReuseIdentifier:@"PLNLoginTableViewCell"];
    }
    return _PLNmainTable;
}
@end
