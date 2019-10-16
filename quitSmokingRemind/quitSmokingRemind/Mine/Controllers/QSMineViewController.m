//
//  QSMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSMineViewController.h"
#import "QSLoginViewController.h"
#import "QSModifyNicknameViewController.h"
#import "QSSetViewModel.h"
#import "QSSetTableViewCell.h"
#import "QSPasswordChangeViewController.h"
@interface QSMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *QSviewDataArray;
@property(nonatomic, strong)UITableView *QSmainTable;
@end

@implementation QSMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self QSsetContentView];
}
- (void)QSsetContentView{
    self.view.backgroundColor = QSH_Color(242, 242, 242, 1);
    QSSetViewModel *viewModel = [[QSSetViewModel alloc] init];
    viewModel.QStitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.QScontent = [user objectForKey:@"username"];
    }
    [self.QSviewDataArray addObject:viewModel];
    
    QSSetViewModel *viewModel1 = [[QSSetViewModel alloc] init];
    viewModel1.QStitle = NSLocalizedString(@"密码修改", nil);
    [self.QSviewDataArray addObject:viewModel1];
    
    QSSetViewModel *viewModel2 = [[QSSetViewModel alloc] init];
    viewModel2.QStitle = NSLocalizedString(@"退出", nil);
    [self.QSviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.QSmainTable];
    [self.QSmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.QSviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    QSSetViewModel *viewModel = self.QSviewDataArray[indexPath.row];
    QSSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QSSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    QSSetViewModel *viewModel = self.QSviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            QSModifyNicknameViewController *mnnVC = [[QSModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(QSModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.QScontent = nicknameVC.QSnickname;
                [weakSelf.QSmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            QSPasswordChangeViewController *pacVC = [[QSPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            QSLoginViewController *loginVC = [QSLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            QSKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)QSviewDataArray{
    if (!_QSviewDataArray) {
        _QSviewDataArray = [[NSMutableArray alloc] init];
    }
    return _QSviewDataArray;
}
- (UITableView *)QSmainTable{
    if (!_QSmainTable) {
        _QSmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _QSmainTable.backgroundColor = QSH_Color(244, 245, 246, 1);
        _QSmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _QSmainTable.delegate = self;
        _QSmainTable.dataSource = self;
        _QSmainTable.rowHeight = UITableViewAutomaticDimension;
        _QSmainTable.estimatedRowHeight = 55.0f;
        _QSmainTable.tableHeaderView = [[UIView alloc] init];
        _QSmainTable.tableFooterView = [[UIView alloc] init];
        [_QSmainTable registerClass:[QSSetTableViewCell class] forCellReuseIdentifier:@"QSSetTableViewCell"];
    }
    return _QSmainTable;
}
@end
