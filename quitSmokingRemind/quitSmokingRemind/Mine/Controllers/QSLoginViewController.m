//
//  QSLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSLoginViewController.h"
#import "QSLoginTableViewCell.h"
@interface QSLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *QSmainTable;
@end

@implementation QSLoginViewController
+ (QSLoginViewController *)shareInstance{
    static QSLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[QSLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self QSsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)QSsetContentView{
    [self.view addSubview:self.QSmainTable];
    [self.QSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    QSLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSLoginTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)QSmainTable{
    if (!_QSmainTable) {
        _QSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _QSmainTable.showsVerticalScrollIndicator = NO;
        _QSmainTable.scrollEnabled = NO;
        _QSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _QSmainTable.delegate = self;
        _QSmainTable.dataSource = self;
        _QSmainTable.backgroundColor = QSH_Color(242, 242, 242, 1);
        _QSmainTable.rowHeight = UITableViewAutomaticDimension;
        _QSmainTable.estimatedRowHeight = 55.0f;
        _QSmainTable.tableHeaderView = [[UIView alloc] init];
        _QSmainTable.tableFooterView = [[UIView alloc] init];
        [_QSmainTable registerClass:[QSLoginTableViewCell class] forCellReuseIdentifier:@"QSLoginTableViewCell"];
    }
    return _QSmainTable;
}
@end
