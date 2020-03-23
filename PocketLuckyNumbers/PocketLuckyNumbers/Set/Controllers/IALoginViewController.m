//
//  IALoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "IALoginViewController.h"
#import "IALoginTableViewCell.h"
@interface IALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *IAmainTable;
@end

@implementation IALoginViewController
+ (IALoginViewController *)shareInstance{
    static IALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[IALoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self IAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)IA_setupNavigationItems{
    UIView *navView = [[UIView alloc] init];
    navView.backgroundColor = [UIColor redColor];
    [self.view addSubview:navView];
    [navView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(-IAHeightStatusBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(IAHeightNavBar);
    }];
}
- (void)IAsetContentView{
    [self.view addSubview:self.IAmainTable];
    [self.IAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    IALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IALoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)IAmainTable{
    if (!_IAmainTable) {
        _IAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _IAmainTable.backgroundColor = [UIColor cyanColor];
        _IAmainTable.showsVerticalScrollIndicator = NO;
        _IAmainTable.scrollEnabled = NO;
        _IAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _IAmainTable.delegate = self;
        _IAmainTable.dataSource = self;
        _IAmainTable.rowHeight = UITableViewAutomaticDimension;
        _IAmainTable.estimatedRowHeight = 55.0f;
        _IAmainTable.tableHeaderView = [[UIView alloc] init];
        _IAmainTable.tableFooterView = [[UIView alloc] init];
        [_IAmainTable registerClass:[IALoginTableViewCell class] forCellReuseIdentifier:@"IALoginTableViewCell"];
    }
    return _IAmainTable;
}
@end
