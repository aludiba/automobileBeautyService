//
//  IARecordViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "IARecordViewController.h"
#import "IALoginViewController.h"
#import "IARecordTableViewCell.h"
#import "IALuckyNumbersModel.h"

@interface IARecordViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *IADataArray;
@property(nonatomic, strong)UITableView *IAmainTable;
@end

@implementation IARecordViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"记录", nil);
    [self IALoadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
#pragma mark - actions
- (void)IADeleteData:(IALuckyNumbersModel *)model{
    AVObject *bmobObject = [AVObject objectWithClassName:@"IALuckyNumbers" objectId:model.IAObjectId];
    [bmobObject deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
         [MBProgressHUD IAshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [self.IADataArray removeObject:model];
        [self.IAmainTable reloadData];
    } else if (error){
         [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    } else {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)IALoadData{
    AVQuery *bquery = [AVQuery queryWithClassName:@"IALuckyNumbers"];
    AVUser *author = [AVUser currentUser];
    if (author) {
    [bquery whereKey:@"author" equalTo:author];
    //查找GameScore表的数据
    __weak typeof(self) weakSelf = self;
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
        [weakSelf.IAmainTable.mj_header endRefreshing];
        if (error) {
            [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            [weakSelf.IAmainTable reloadData];
        }else{
            [self.IADataArray removeAllObjects];
            if (array.count) {
                for (int i = (int)(array.count - 1); i > -1; i--) {
                    AVObject *obj = array[i];
                    IALuckyNumbersModel *model = [[IALuckyNumbersModel alloc] init];
                    model.IAObjectId = [obj objectForKey:@"objectId"];
                    model.IAMinNumber = [[obj objectForKey:@"IAMinNumber"] intValue];
                    model.IAMaxNumber = [[obj objectForKey:@"IAMaxNumber"] intValue];
                    model.IAGeneratedNumber = [[obj objectForKey:@"IAGeneratedNumber"] intValue];
                    model.IAGenTimeString = [obj objectForKey:@"IAGenTimeString"];
                    [self.IADataArray addObject:model];
                    }
                if (!self.IADataArray.count) {
                    [MBProgressHUD IAshowReminderText:NSLocalizedString(@"无数据", nil)];
                }
                [weakSelf.IAmainTable reloadData];
                }else{
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                [weakSelf.IAmainTable reloadData];
                }
        }
    }];
    }else{
        [self.IAmainTable.mj_header endRefreshing];
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"暂无数据", nil)];
        [self.IAmainTable reloadData];
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            IALoginViewController *loginVC = [IALoginViewController shareInstance];
            loginVC.type = 2;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            IAKeyWindow.rootViewController = loginVCNav;
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.IADataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    IALuckyNumbersModel *model = self.IADataArray[indexPath.row];
    IARecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IARecordTableViewCell" forIndexPath:indexPath];
    cell.IAModel = model;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    __weak typeof(self) weakSelf = self;
    cell.IARecordDeleteB = ^(IARecordTableViewCell * _Nonnull cell) {
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"温馨提示", nil) message:NSLocalizedString(@"是否删除?", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            [weakSelf IADeleteData:model];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    };
    return cell;
}
#pragma mark - 属性懒加载
- (NSMutableArray *)IADataArray{
    if (!_IADataArray) {
        _IADataArray = [[NSMutableArray alloc] init];
    }
    return _IADataArray;
}
- (UITableView *)IAmainTable{
    if (!_IAmainTable) {
        _IAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _IAmainTable.backgroundColor = [UIColor redColor];
        _IAmainTable.showsVerticalScrollIndicator = NO;
        _IAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _IAmainTable.delegate = self;
        _IAmainTable.dataSource = self;
        _IAmainTable.rowHeight = UITableViewAutomaticDimension;
        _IAmainTable.estimatedRowHeight = 55.0f;
        _IAmainTable.tableHeaderView = [[UIView alloc] init];
        _IAmainTable.tableFooterView = [[UIView alloc] init];
        [_IAmainTable registerClass:[IARecordTableViewCell class] forCellReuseIdentifier:@"IARecordTableViewCell"];
        _IAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(IALoadData)];
        [self.view addSubview:_IAmainTable];
        [_IAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view).offset(-IAHeightTabBar);
        }];
    }
    return _IAmainTable;
}
@end
