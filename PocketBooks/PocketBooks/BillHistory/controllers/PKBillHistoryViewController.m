//
//  PKBillHistoryViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKBillHistoryViewController.h"
#import "PKBillHistoryHeaderView.h"
#import "PKBillHistoryTableViewCell.h"

@interface PKBillHistoryViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)UITableView *mainTable;

@end

@implementation PKBillHistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    self.title = NSLocalizedString(@"历史", nil);
}
- (void)loadData{
    
}
#pragma mark - 属性懒加载
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.backgroundColor = PKH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PKBillHistoryHeaderView class] forHeaderFooterViewReuseIdentifier:@"PKBillHistoryHeaderView"];
        [_mainTable registerClass:[PKBillHistoryTableViewCell class] forCellReuseIdentifier:@"PKBillHistoryTableViewCell"];
        _mainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadData)];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PKHeightTPKBar);
        }];
    }
    return _mainTable;
}
@end
