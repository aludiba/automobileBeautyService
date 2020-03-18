//
//  EALoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EALoginViewController.h"
#import "EALoginTableViewCell.h"
@interface EALoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *EAmainTable;
@end

@implementation EALoginViewController
+ (EALoginViewController *)shareInstance{
    static EALoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[EALoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self EAsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)EAsetContentView{
    self.view.backgroundColor = EAH_Color(242, 242, 242, 1);
    [self.view addSubview:self.EAmainTable];
    [self.EAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    EALoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EALoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)EAmainTable{
    if (!_EAmainTable) {
        _EAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _EAmainTable.showsVerticalScrollIndicator = NO;
        _EAmainTable.scrollEnabled = NO;
        _EAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _EAmainTable.delegate = self;
        _EAmainTable.dataSource = self;
        _EAmainTable.backgroundColor = EAH_Color(242, 242, 242, 1);
        _EAmainTable.rowHeight = UITableViewAutomaticDimension;
        _EAmainTable.estimatedRowHeight = 55.0f;
        _EAmainTable.tableHeaderView = [[UIView alloc] init];
        _EAmainTable.tableFooterView = [[UIView alloc] init];
        [_EAmainTable registerClass:[EALoginTableViewCell class] forCellReuseIdentifier:@"EALoginTableViewCell"];
    }
    return _EAmainTable;
}
@end
