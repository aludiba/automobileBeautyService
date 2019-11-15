//
//  GFLoginViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFLoginViewController.h"
#import "GFLoginTableViewCell.h"
@interface GFLoginViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *GFmainTable;
@end

@implementation GFLoginViewController
+ (GFLoginViewController *)shareInstance{
    static GFLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[GFLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self GFsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)GFsetContentView{
    [self.view addSubview:self.GFmainTable];
    [self.GFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
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
    GFLoginTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFLoginTableViewCell" forIndexPath:indexPath];
    cell.type = self.type;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (UITableView *)GFmainTable{
    if (!_GFmainTable) {
        _GFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _GFmainTable.backgroundColor = GFH_Color(242, 242, 242, 242);
        _GFmainTable.showsVerticalScrollIndicator = NO;
        _GFmainTable.scrollEnabled = NO;
        _GFmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GFmainTable.delegate = self;
        _GFmainTable.dataSource = self;
        _GFmainTable.rowHeight = UITableViewAutomaticDimension;
        _GFmainTable.estimatedRowHeight = 55.0f;
        _GFmainTable.tableHeaderView = [[UIView alloc] init];
        _GFmainTable.tableFooterView = [[UIView alloc] init];
        [_GFmainTable registerClass:[GFLoginTableViewCell class] forCellReuseIdentifier:@"GFLoginTableViewCell"];
    }
    return _GFmainTable;
}
@end
