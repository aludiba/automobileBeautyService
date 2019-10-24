//
//  PBScorecardViewController.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardViewController.h"
#import "PBScorecardModel.h"
#import "PBScorecardViewModel.h"
#import "PBScorecardTimeStatisticsTableViewCell.h"
#import "PBScorecardTableViewCell.h"
#import "PBScorecardOperationTableViewCell.h"
@interface PBScorecardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PBviewDataArray;
@property(nonatomic, strong)UITableView *PBmainTable;
@end

@implementation PBScorecardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"比分", nil);
    [self PBsetContentView];
}
- (void)PBsetContentView{
    PBScorecardViewModel *teamAModel = [[PBScorecardViewModel alloc] init];
    teamAModel.teamName = @"TeamA";
    [self.PBviewDataArray addObject:teamAModel];
    
    PBScorecardViewModel *teamBModel = [[PBScorecardViewModel alloc] init];
    teamBModel.teamName = @"TeamB";
    [self.PBviewDataArray addObject:teamBModel];
    
    [self.PBmainTable reloadData];
}
#pragma mark - UITableViewDelegat
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PBScorecardViewModel *teamModel = self.PBviewDataArray[indexPath.row];
    PBScorecardTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBScorecardTableViewCell" forIndexPath:indexPath];
    cell.model = teamModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PBviewDataArray{
    if (!_PBviewDataArray) {
        _PBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PBviewDataArray;
}
- (UITableView *)PBmainTable{
    if (!_PBmainTable) {
        _PBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PBmainTable.delegate = self;
        _PBmainTable.dataSource = self;
        _PBmainTable.rowHeight = UITableViewAutomaticDimension;
        _PBmainTable.estimatedRowHeight = 55.0f;
        _PBmainTable.tableHeaderView = [[UIView alloc] init];
        _PBmainTable.tableFooterView = [[UIView alloc] init];
        [_PBmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [_PBmainTable registerClass:[PBScorecardTableViewCell class] forCellReuseIdentifier:@"PBScorecardTableViewCell"];
        [self.view addSubview:_PBmainTable];
        [_PBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PBHeightTabBar);
        }];
    }
    return _PBmainTable;
}
@end
