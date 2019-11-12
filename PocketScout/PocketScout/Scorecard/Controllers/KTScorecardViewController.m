//
//  KTScorecardViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTScorecardViewController.h"
#import "KTLoginViewController.h"
#import "KTBothTeamsTableViewCell.h"
#import "KTScoringPartTableViewCell.h"
#import "KTTimePortionTableViewCell.h"
#import "KTScoringSaveTableViewCell.h"


@interface KTScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *KTviewDataArray;//页面数据数组
@property(nonatomic, strong)UITableView *KTmainTable;//数据列表
@property (nonatomic,strong )NSTimer *KTtimer;//定时器
@end

@implementation KTScorecardViewController
+ (KTScorecardViewController *)shareInstance{
    static KTScorecardViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[KTScorecardViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
#pragma mark - actions
#pragma mark - 保存功能
- (void)KTsaveAction{
    
}
#pragma mark - 保存
- (void)KTsave{
    
}
#pragma mark - UITableViewDelegate

#pragma mark - 属性懒加载
- (NSMutableArray *)KTviewDataArray{
    if (!_KTviewDataArray) {
        _KTviewDataArray = [[NSMutableArray alloc] init];
    }
    return _KTviewDataArray;
}
- (UITableView *)KTmainTable{
    if (!_KTmainTable) {
        _KTmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _KTmainTable.backgroundColor = [UIColor cyanColor];
        _KTmainTable.delegate = self;
        _KTmainTable.dataSource = self;
        _KTmainTable.rowHeight = UITableViewAutomaticDimension;
        _KTmainTable.estimatedRowHeight = 55.0f;
        _KTmainTable.tableHeaderView = [[UIView alloc] init];
        _KTmainTable.tableFooterView = [[UIView alloc] init];
        [_KTmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
       [_KTmainTable registerClass:[KTBothTeamsTableViewCell class] forCellReuseIdentifier:@"KTBothTeamsTableViewCell"];
        [_KTmainTable registerClass:[KTScoringPartTableViewCell class] forCellReuseIdentifier:@"KTScoringPartTableViewCell"];
        [_KTmainTable registerClass:[KTTimePortionTableViewCell class] forCellReuseIdentifier:@"KTTimePortionTableViewCell"];
        [_KTmainTable registerClass:[KTScoringSaveTableViewCell class] forCellReuseIdentifier:@"KTScoringSaveTableViewCell"];
        [self.view addSubview:_KTmainTable];
        [_KTmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-KTHeightTabBar);
        }];
    }
    return _KTmainTable;
}
@end
