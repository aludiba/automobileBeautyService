//
//  AFLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFLoginViewController.h"
#import "AFLoginTableViewCell.h"
@interface AFLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *AFmainTable;
@end

@implementation AFLoginViewController
+ (AFLoginViewController *)AFshareInstance{
    static AFLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[AFLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self AFsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)AFsetContentView{
    [self.view addSubview:self.AFmainTable];
    [self.AFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    AFLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)AFmainTable{
    if (!_AFmainTable) {
        _AFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _AFmainTable.backgroundColor = AFH_Color(44, 77, 93, 1);
        _AFmainTable.showsVerticalScrollIndicator = NO;
        _AFmainTable.scrollEnabled = NO;
        _AFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AFmainTable.delegate = self;
        _AFmainTable.dataSource = self;
        _AFmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFmainTable.estimatedRowHeight = 55.0f;
        _AFmainTable.tableHeaderView = [[UIView alloc] init];
        _AFmainTable.tableFooterView = [[UIView alloc] init];
        [_AFmainTable registerClass:[AFLoginTableViewCell class] forCellReuseIdentifier:@"AFLoginTableViewCell"];
    }
    return _AFmainTable;
}
@end
