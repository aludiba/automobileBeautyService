//
//  KTLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "KTLoginViewController.h"
#import "KTLoginTableViewCell.h"
@interface KTLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *KTmainTable;
@end

@implementation KTLoginViewController
+ (KTLoginViewController *)shareInstance{
    static KTLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[KTLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self KTsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)KTsetContentView{
    [self.view addSubview:self.KTmainTable];
    [self.KTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    KTLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KTLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)KTmainTable{
    if (!_KTmainTable) {
        _KTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _KTmainTable.backgroundColor = KTH_Color(242, 242, 242, 242);
        _KTmainTable.showsVerticalScrollIndicator = NO;
        _KTmainTable.scrollEnabled = NO;
        _KTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _KTmainTable.delegate = self;
        _KTmainTable.dataSource = self;
        _KTmainTable.rowHeight = UITableViewAutomaticDimension;
        _KTmainTable.estimatedRowHeight = 55.0f;
        _KTmainTable.tableHeaderView = [[UIView alloc] init];
        _KTmainTable.tableFooterView = [[UIView alloc] init];
        [_KTmainTable registerClass:[KTLoginTableViewCell class] forCellReuseIdentifier:@"KTLoginTableViewCell"];
    }
    return _KTmainTable;
}
@end
