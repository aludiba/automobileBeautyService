//
//  PLNRecordViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNRecordViewController.h"
#import "PLNLoginViewController.h"
#import "PLNRecordTableViewCell.h"
#import "PLNLuckyNumbersModel.h"

@interface PLNRecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PLNDataArray;
@property(nonatomic, strong)UITableView *PLNmainTable;
@end

@implementation PLNRecordViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"记录", nil);
    [self PLNLoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)PLNDeleteData:(PLNLuckyNumbersModel *)model{
    BmobObject *bmobObject = [BmobObject objectWithoutDataWithClassName:@"PLNLuckyNumbers"  objectId:model.PLNObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.PLNDataArray removeObject:model];
        [self.PLNmainTable reloadData];
    } else if (error){
         [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)PLNLoadData{
    BmobQuery *bquery = [BmobQuery queryWithClassName:@"PLNLuckyNumbers"];
    BmobUser *author = [BmobUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.PLNmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.PLNmainTable reloadData];
        }else{
            [self.PLNDataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    BmobObject *obj = array[i];
                    PLNLuckyNumbersModel *model = [[PLNLuckyNumbersModel alloc] init];
                    model.PLNObjectId = [obj objectForKey:@"objectId"];
                    model.PLNMinNumber = [[obj objectForKey:@"PLNMinNumber"] intValue];
                    model.PLNMaxNumber = [[obj objectForKey:@"PLNMaxNumber"] intValue];
                    model.PLNGeneratedNumber = [[obj objectForKey:@"PLNGeneratedNumber"] intValue];
                    model.PLNGenTimeString = [obj objectForKey:@"PLNGenTimeString"];
                    [self.PLNDataArray addObject:model];
                    }
                if (!self.PLNDataArray.count) {
                    [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.PLNmainTable reloadData];
                }else{
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.PLNmainTable reloadData];
                }
        }
    }];
    }else{
        [self.PLNmainTable.mj_header endRefreshing];
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.PLNmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PLNKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PLNDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PLNLuckyNumbersModel *model = self.PLNDataArray[indexPath.row];
    PLNRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PLNRecordTableViewCell" forIndexPath:indexPath];
    cell.PLNModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.PLNRecordDeleteB = ^(PLNRecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf PLNDeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PLNDataArray{
    if (!_PLNDataArray) {
        _PLNDataArray = [[NSMutableArray alloc] init];
    }
    return _PLNDataArray;
}
- (UITableView *)PLNmainTable{
    if (!_PLNmainTable) {
        _PLNmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PLNmainTable.backgroundColor = [UIColor greenColor];
        _PLNmainTable.showsVerticalScrollIndicator = NO;
        _PLNmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PLNmainTable.delegate = self;
        _PLNmainTable.dataSource = self;
        _PLNmainTable.rowHeight = UITableViewAutomaticDimension;
        _PLNmainTable.estimatedRowHeight = 55.0f;
        _PLNmainTable.tableHeaderView = [[UIView alloc] init];
        _PLNmainTable.tableFooterView = [[UIView alloc] init];
        [_PLNmainTable registerClass:[PLNRecordTableViewCell class] forCellReuseIdentifier:@"PLNRecordTableViewCell"];
        _PLNmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(PLNLoadData)];
        [self.view addSubview:_PLNmainTable];
        [_PLNmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-PLNHeightTabBar);
        }];
    }
    return _PLNmainTable;
}
@end
