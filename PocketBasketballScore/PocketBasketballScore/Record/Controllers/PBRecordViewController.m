//
//  PBRecordViewController.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/23.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBRecordViewController.h"
#import "PBRecordTableViewCell.h"
#import "PBScorecardModel.h"
#import "PBLoginViewController.h"
@interface PBRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PBDataArray;
@property(nonatomic, strong)UITableView *PBmainTable;
@end

@implementation PBRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self PBLoadData];
}
- (void)PBLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PBScore"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.PBmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.PBmainTable reloadData];
        }else{
            [self.PBDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    PBScorecardModel *model = [[PBScorecardModel alloc] init];
                    model.natureCompetition = [obj objectForKey:@"natureCompetition"];
                    model.teamAName = [obj objectForKey:@"teamAName"];
                    model.teamANameScore = [[obj objectForKey:@"teamANameScore"] integerValue];
                    model.teamBName = [obj objectForKey:@"teamBName"];
                    model.teamBNameScore = [[obj objectForKey:@"teamBNameScore"] integerValue];
                    model.totalTimeString = [obj objectForKey:@"totalTimeString"];
                    model.endTimeString = [obj objectForKey:@"endTimeString"];
                    [self.PBDataArray addObject:model];
                }
                [weakSelf.PBmainTable reloadData];
                }else{
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.PBmainTable reloadData];
                }
        }
    }];
    }else{
        [self.PBmainTable.mj_header endRefreshing];
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.PBmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:nil message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PBLoginViewController *loginVC = [PBLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PBKeyWindow.rootViewController = loginVCNav;
            
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PBScorecardModel *model = self.PBDataArray[indexPath.row];
    PBRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBRecordTableViewCell" forIndexPath:indexPath];
    cell.model = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PBDataArray{
    if (!_PBDataArray) {
        _PBDataArray = [[NSMutableArray alloc] init];
    }
    return _PBDataArray;
}
- (UITableView *)PBmainTable{
    if (!_PBmainTable) {
        _PBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PBmainTable.delegate = self;
        _PBmainTable.dataSource = self;
        _PBmainTable.rowHeight = UITableViewAutomaticDimension;
        _PBmainTable.estimatedRowHeight = 55.0f;
        _PBmainTable.tableHeaderView = [[UIView alloc] init];
        _PBmainTable.tableFooterView = [[UIView alloc] init];
        [_PBmainTable registerClass:[PBRecordTableViewCell class] forCellReuseIdentifier:@"PBRecordTableViewCell"];
        _PBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PBLoadData)];
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
