//
//  PFLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFLoginViewController.h"
#import "PFLoginTableViewCell.h"
@interface PFLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *PFmainTable;
@end

@implementation PFLoginViewController
+ (PFLoginViewController *)shareInstance{
    static PFLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PFLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self PFsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)PFsetContentView{
    [self.view addSubview:self.PFmainTable];
    [self.PFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    PFLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)PFmainTable{
    if (!_PFmainTable) {
        _PFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _PFmainTable.showsVerticalScrollIndicator = NO;
        _PFmainTable.scrollEnabled = NO;
        _PFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PFmainTable.delegate = self;
        _PFmainTable.dataSource = self;
        _PFmainTable.rowHeight = UITableViewAutomaticDimension;
        _PFmainTable.estimatedRowHeight = 55.0f;
        _PFmainTable.tableHeaderView = [[UIView alloc] init];
        _PFmainTable.tableFooterView = [[UIView alloc] init];
        [_PFmainTable registerClass:[PFLoginTableViewCell class] forCellReuseIdentifier:@"PFLoginTableViewCell"];
    }
    return _PFmainTable;
}
@end
