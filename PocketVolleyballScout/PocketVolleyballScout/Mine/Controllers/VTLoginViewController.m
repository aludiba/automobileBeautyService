//
//  VTLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "VTLoginViewController.h"
#import "VTLoginTableViewCell.h"
@interface VTLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *VTmainTable;
@end

@implementation VTLoginViewController
+ (VTLoginViewController *)shareInstance{
    static VTLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[VTLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self VTsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)VTsetContentView{
    [self.view addSubview:self.VTmainTable];
    [self.VTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    VTLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"VTLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)VTmainTable{
    if (!_VTmainTable) {
        _VTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _VTmainTable.backgroundColor = VTH_Color(242, 242, 242, 242);
        _VTmainTable.showsVerticalScrollIndicator = NO;
        _VTmainTable.scrollEnabled = NO;
        _VTmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _VTmainTable.delegate = self;
        _VTmainTable.dataSource = self;
        _VTmainTable.rowHeight = UITableViewAutomaticDimension;
        _VTmainTable.estimatedRowHeight = 55.0f;
        _VTmainTable.tableHeaderView = [[UIView alloc] init];
        _VTmainTable.tableFooterView = [[UIView alloc] init];
        [_VTmainTable registerClass:[VTLoginTableViewCell class] forCellReuseIdentifier:@"VTLoginTableViewCell"];
    }
    return _VTmainTable;
}
@end
