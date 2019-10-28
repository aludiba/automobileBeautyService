//
//  PFRecordViewController.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFRecordViewController.h"
#import "PFRecordTableViewCell.h"
#import "PFScorecardModel.h"
@interface PFRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PFDataArray;
@property(nonatomic, strong)UITableView *PFmainTable;
@end

@implementation PFRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self PFLoadData];
    
}
- (void)PFLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PFScore"];
    BmobUser *author = [BmobUser currentUser];
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.PFmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.PFmainTable reloadData];
        }else{
            [self.PFDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    PFScorecardModel *model = [[PFScorecardModel alloc] init];
                    model.PFnatureCompetition = [obj objectForKey:@"PFnatureCompetition"];
                    model.PFteamAName = [obj objectForKey:@"PFteamAName"];
                    model.PFteamANameScore = [[obj objectForKey:@"PFteamANameScore"] integerValue];
                    model.PFteamBName = [obj objectForKey:@"PFteamBName"];
                    model.PFteamBNameScore = [[obj objectForKey:@"PFteamBNameScore"] integerValue];
                    model.PFtotalTimeString = [obj objectForKey:@"PFtotalTimeString"];
                    model.PFendTimeString = [obj objectForKey:@"PFendTimeString"];
                    [self.PFDataArray addObject:model];
                }
                [weakSelf.PFmainTable reloadData];
                }else{
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.PFmainTable reloadData];
                }
        }
    }];

}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PFDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PFScorecardModel *model = self.PFDataArray[indexPath.row];
    PFRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PFDataArray{
    if (!_PFDataArray) {
        _PFDataArray = [[NSMutableArray alloc] init];
    }
    return _PFDataArray;
}
- (UITableView *)PFmainTable{
    if (!_PFmainTable) {
        _PFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PFmainTable.delegate = self;
        _PFmainTable.dataSource = self;
        _PFmainTable.rowHeight = UITableViewAutomaticDimension;
        _PFmainTable.estimatedRowHeight = 55.0f;
        _PFmainTable.tableHeaderView = [[UIView alloc] init];
        _PFmainTable.tableFooterView = [[UIView alloc] init];
        [_PFmainTable registerClass:[PFRecordTableViewCell class] forCellReuseIdentifier:@"PFRecordTableViewCell"];
        _PFmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PFLoadData)];
        [self.view addSubview:_PFmainTable];
        [_PFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PFHeightTabBar);
        }];
    }
    return _PFmainTable;
}
@end
