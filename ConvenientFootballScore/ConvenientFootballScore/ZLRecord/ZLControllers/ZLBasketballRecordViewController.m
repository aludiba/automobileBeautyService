//
//  ZLBasketballRecordViewController.m
//  ConvenientFootballScore
//
//  Created by bykj on 2020/2/18.
//  Copyright © 2020 com. All rights reserved.
//

#import "ZLBasketballRecordViewController.h"
#import "ZLLoginViewController.h"
#import "ZLBasketballRecordTableViewCell.h"
#import "ZLBasketballScorecardModel.h"
@interface ZLBasketballRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *ZLDataArray;
@property(nonatomic, strong)UITableView *ZLmainTable;
@end

@implementation ZLBasketballRecordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ZLLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)ZLDeleteData:(ZLBasketballScorecardModel *)model{
    AVObject *bmobObject = [AVObject objectWithoutDataWithClassName:@"ZLBasketballScore"  objectId:model.ZLObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.ZLDataArray removeObject:model];
        [self.ZLmainTable reloadData];
    } else if (error){
         [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)ZLLoadData{
    [self.ZLDataArray removeAllObjects];
    AVQuery *bquery = [AVQuery queryWithClassName:@"ZLBasketballScore"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.ZLmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.ZLmainTable reloadData];
        }else{
            [self.ZLDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    ZLBasketballScorecardModel *model = [[ZLBasketballScorecardModel alloc] init];
                    model.ZLObjectId = [obj objectForKey:@"objectId"];
                    model.ZLNatureCompetition = [obj objectForKey:@"ZLNatureCompetition"];
                    model.ZLTeamRightName = [obj objectForKey:@"ZLTeamRightName"];
                    model.ZLTeamRightScore = [[obj objectForKey:@"ZLTeamRightScore"] integerValue];
                    model.ZLTeamLeftName = [obj objectForKey:@"ZLTeamLeftName"];
                    model.ZLTeamLeftScore = [[obj objectForKey:@"ZLTeamLeftScore"] integerValue];
                    model.ZLEndTimeString = [obj objectForKey:@"ZLEndTimeString"];
                    model.ZLTotalTimeString = [obj objectForKey:@"ZLTotalTimeString"];
                    [self.ZLDataArray addObject:model];
                    }
                if (!self.ZLDataArray.count) {
                    [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.ZLmainTable reloadData];
                }else{
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.ZLmainTable reloadData];
                }
        }
    }];
    }else{
        [self.ZLmainTable.mj_header endRefreshing];
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.ZLmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            ZLKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ZLDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ZLBasketballScorecardModel *model = self.ZLDataArray[indexPath.row];
    ZLBasketballRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZLBasketballRecordTableViewCell" forIndexPath:indexPath];
    cell.ZLModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.ZLRecordDeleteB = ^(ZLBasketballRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf ZLDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ZLDataArray{
    if (!_ZLDataArray) {
        _ZLDataArray = [[NSMutableArray alloc] init];
    }
    return _ZLDataArray;
}
- (UITableView *)ZLmainTable{
    if (!_ZLmainTable) {
        _ZLmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _ZLmainTable.backgroundColor = [UIColor systemGreenColor];
        _ZLmainTable.showsVerticalScrollIndicator = NO;
        _ZLmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _ZLmainTable.delegate = self;
        _ZLmainTable.dataSource = self;
        _ZLmainTable.rowHeight = UITableViewAutomaticDimension;
        _ZLmainTable.estimatedRowHeight = 55.0f;
        _ZLmainTable.tableHeaderView = [[UIView alloc] init];
        _ZLmainTable.tableFooterView = [[UIView alloc] init];
        [_ZLmainTable registerClass:[ZLBasketballRecordTableViewCell class] forCellReuseIdentifier:@"ZLBasketballRecordTableViewCell"];
        _ZLmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(ZLLoadData)];
        [self.view addSubview:_ZLmainTable];
        [_ZLmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-ZLHeightTabBar);
        }];
    }
    return _ZLmainTable;
}
@end
