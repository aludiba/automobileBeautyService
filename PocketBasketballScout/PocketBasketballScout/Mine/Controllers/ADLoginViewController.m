//
//  ADLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ADLoginViewController.h"
#import "ADLoginTableViewCell.h"
@interface ADLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *ADmainTable;
@end

@implementation ADLoginViewController
+ (ADLoginViewController *)shareInstance{
    static ADLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[ADLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ADsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)ADsetContentView{
    [self.view addSubview:self.ADmainTable];
    [self.ADmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    ADLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)ADmainTable{
    if (!_ADmainTable) {
        _ADmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _ADmainTable.backgroundColor = ADH_Color(242, 242, 242, 242);
        _ADmainTable.showsVerticalScrollIndicator = NO;
        _ADmainTable.scrollEnabled = NO;
        _ADmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ADmainTable.delegate = self;
        _ADmainTable.dataSource = self;
        _ADmainTable.rowHeight = UITableViewAutomaticDimension;
        _ADmainTable.estimatedRowHeight = 55.0f;
        _ADmainTable.tableHeaderView = [[UIView alloc] init];
        _ADmainTable.tableFooterView = [[UIView alloc] init];
        [_ADmainTable registerClass:[ADLoginTableViewCell class] forCellReuseIdentifier:@"ADLoginTableViewCell"];
    }
    return _ADmainTable;
}
@end
