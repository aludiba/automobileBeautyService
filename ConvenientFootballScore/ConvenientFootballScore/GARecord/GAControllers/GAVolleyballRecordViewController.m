//
//  GAVolleyballRecordViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "GAVolleyballRecordViewController.h"
#import "GALoginViewController.h"
#import "GAVolleyballRecordTableViewCell.h"
#import "GAVolleyballScorecardModel.h"
#import "GAVolleyballBureauPointsModel.h"

@interface GAVolleyballRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GADataArray;
@property(nonatomic, strong)UITableView *GAmainTable;
@end

@implementation GAVolleyballRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self GALoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)GADeleteData:(GAVolleyballScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"GAVolleyballScore"  objectId:model.GAObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD GAshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.GADataArray removeObject:model];
        [self.GAmainTable reloadData];
    } else if (error){
         [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)GALoadData{
    [self.GADataArray removeAllObjects];
    AVQuery *bquery = [AVQuery queryWithClassName:@"GAVolleyballScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.GAmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.GAmainTable reloadData];
        }else{
            [self.GADataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    GAVolleyballScorecardModel *model = [[GAVolleyballScorecardModel alloc] init];
                    model.GAObjectId = [obj objectForKey:@"objectId"];
                    model.GANatureCompetition = [obj objectForKey:@"GANatureCompetition"];
                    model.GATeamRightName = [obj objectForKey:@"GATeamRightName"];
                    model.GATeamRightScore = [[obj objectForKey:@"GATeamRightScore"] integerValue];
                    model.GATeamLeftName = [obj objectForKey:@"GATeamLeftName"];
                    model.GATeamLeftScore = [[obj objectForKey:@"GATeamLeftScore"] integerValue];
                    model.GAEndTimeString = [obj objectForKey:@"GAEndTimeString"];
                    model.GATotalTimeString = [obj objectForKey:@"GATotalTimeString"];
                    model.GABureauPointsArray = [[NSMutableArray alloc] init];
                    NSArray *bureauPointsArray = [obj objectForKey:@"CABureauPointsArray"];
                       for (int i = 0; i < bureauPointsArray.count; i++) {
                           NSDictionary *dic = bureauPointsArray[i];
                           GAVolleyballBureauPointsModel *pointModel = [GAVolleyballBureauPointsModel yy_modelWithDictionary:dic];
                           [model.GABureauPointsArray addObject:pointModel];
                       }
                    [self.GADataArray addObject:model];
                    }
                if (!self.GADataArray.count) {
                    [MBProgressHUD GAshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.GAmainTable reloadData];
                }else{
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.GAmainTable reloadData];
                }
        }
    }];
    }else{
        [self.GAmainTable.mj_header endRefreshing];
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.GAmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            GALoginViewController *loginVC = [GALoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GADataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GAVolleyballScorecardModel *model = self.GADataArray[indexPath.row];
    GAVolleyballRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GAVolleyballRecordTableViewCell" forIndexPath:indexPath];
    cell.GAModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.GARecordDeleteB = ^(GAVolleyballRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf GADeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)GADataArray{
    if (!_GADataArray) {
        _GADataArray = [[NSMutableArray alloc] init];
    }
    return _GADataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.backgroundColor = [UIColor greenColor];
        _GAmainTable.showsVerticalScrollIndicator = NO;
        _GAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GAVolleyballRecordTableViewCell class] forCellReuseIdentifier:@"GAVolleyballRecordTableViewCell"];
        _GAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(GALoadData)];
        [self.view addSubview:_GAmainTable];
        [_GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-GAHeightTabBar);
        }];
    }
    return _GAmainTable;
}
@end
