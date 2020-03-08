//
//  ADRecordViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADRecordViewController.h"
#import "ADLoginViewController.h"
#import "ADRecordTableViewCell.h"
#import "ADScorecardModel.h"

@interface ADRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *ADDataArray;
@property(nonatomic, strong)UITableView *ADmainTable;
@end

@implementation ADRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"Record";
    [self ADLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)ADDeleteData:(ADScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"ADScore"  objectId:model.ADObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD ADshowReminderText:@"Deleted successfully"];
        [self.ADDataArray removeObject:model];
        [self.ADmainTable reloadData];
    } else if (error){
         [MBProgressHUD ADshowReminderText:@"Please try again later"];
    } else {
        [MBProgressHUD ADshowReminderText:@"Please try again later"];
    }
    }];
}
- (void)ADLoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"ADScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.ADmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD ADshowReminderText:@"Please try again later"];
            [weakSelf.ADmainTable reloadData];
        }else{
            [self.ADDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    ADScorecardModel *model = [[ADScorecardModel alloc] init];
                    model.ADObjectId = [obj objectForKey:@"objectId"];
                    model.ADNatureCompetition = [obj objectForKey:@"ADNatureCompetition"];
                    model.ADTeamRightName = [obj objectForKey:@"ADTeamRightName"];
                    model.ADTeamRightScore = [[obj objectForKey:@"ADTeamRightScore"] integerValue];
                    model.ADTeamLeftName = [obj objectForKey:@"ADTeamLeftName"];
                    model.ADTeamLeftScore = [[obj objectForKey:@"ADTeamLeftScore"] integerValue];
                    model.ADEndTimeString = [obj objectForKey:@"ADEndTimeString"];
                    model.ADTotalTimeString = [obj objectForKey:@"ADTotalTimeString"];
                    [self.ADDataArray addObject:model];
                    }
                if (!self.ADDataArray.count) {
                    [MBProgressHUD ADshowReminderText:@"No data"];
                }
                [weakSelf.ADmainTable reloadData];
                }else{
                [MBProgressHUD ADshowReminderText:@"Temporary no data"];
                [weakSelf.ADmainTable reloadData];
                }
        }
    }];
    }else{
        [self.ADmainTable.mj_header endRefreshing];
        [MBProgressHUD ADshowReminderText:@"Temporary no data"];
        [self.ADmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Please login first" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ADKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ADDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ADScorecardModel *model = self.ADDataArray[indexPath.row];
    ADRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ADRecordTableViewCell" forIndexPath:indexPath];
    cell.ADModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.ADRecordDeleteB = ^(ADRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"Warm tip" message:@"Delete or not?" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"Confirm" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf ADDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ADDataArray{
    if (!_ADDataArray) {
        _ADDataArray = [[NSMutableArray alloc] init];
    }
    return _ADDataArray;
}
- (UITableView *)ADmainTable{
    if (!_ADmainTable) {
        _ADmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ADmainTable.backgroundColor = [UIColor cyanColor];
        _ADmainTable.showsVerticalScrollIndicator = NO;
        _ADmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ADmainTable.delegate = self;
        _ADmainTable.dataSource = self;
        _ADmainTable.rowHeight = UITableViewAutomaticDimension;
        _ADmainTable.estimatedRowHeight = 55.0f;
        _ADmainTable.tableHeaderView = [[UIView alloc] init];
        _ADmainTable.tableFooterView = [[UIView alloc] init];
        [_ADmainTable registerClass:[ADRecordTableViewCell class] forCellReuseIdentifier:@"ADRecordTableViewCell"];
        _ADmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(ADLoadData)];
        [self.view addSubview:_ADmainTable];
        [_ADmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ADHeightTabBar);
        }];
    }
    return _ADmainTable;
}
@end
