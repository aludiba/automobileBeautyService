//
//  PVYWKMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKMineViewController.h"
#import "PVYWKLoginViewController.h"
#import "PVYWKModifyNicknameViewController.h"
#import "PVYWKSetViewModel.h"
#import "PVYWKSetTableViewCell.h"
#import "PVYWKPasswordChangeViewController.h"
@interface PVYWKMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PVYWKviewDataArray;
@property(nonatomic, strong)UITableView *PVYWKmainTable;
@end

@implementation PVYWKMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self PVYWKsetContentView];
}
- (void)PVYWKsetContentView{
    if (@available(iOS 13.0, *)) {
        self.view.backgroundColor = [UIColor systemGray3Color];
    } else {
        self.view.backgroundColor = [UIColor systemGrayColor];
    }
    PVYWKSetViewModel *viewModel = [[PVYWKSetViewModel alloc] init];
    viewModel.PVYWKtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.PVYWKcontent = [user objectForKey:@"username"];
    }
    [self.PVYWKviewDataArray addObject:viewModel];
    
    PVYWKSetViewModel *viewModel1 = [[PVYWKSetViewModel alloc] init];
    viewModel1.PVYWKtitle = NSLocalizedString(@"密码修改", nil);
    [self.PVYWKviewDataArray addObject:viewModel1];
    
    PVYWKSetViewModel *viewModel2 = [[PVYWKSetViewModel alloc] init];
    viewModel2.PVYWKtitle = NSLocalizedString(@"登录&退出", nil);
    [self.PVYWKviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.PVYWKmainTable];
    [self.PVYWKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVYWKviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVYWKSetViewModel *viewModel = self.PVYWKviewDataArray[indexPath.row];
    PVYWKSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVYWKSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PVYWKSetViewModel *viewModel = self.PVYWKviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PVYWKModifyNicknameViewController *mnnVC = [[PVYWKModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(PVYWKModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.PVYWKcontent = nicknameVC.PVYWKnickname;
                [weakSelf.PVYWKmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PVYWKPasswordChangeViewController *pacVC = [[PVYWKPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
            loginVC.type = 0;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVYWKKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PVYWKviewDataArray{
    if (!_PVYWKviewDataArray) {
        _PVYWKviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PVYWKviewDataArray;
}
- (UITableView *)PVYWKmainTable{
    if (!_PVYWKmainTable) {
        _PVYWKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVYWKmainTable.delegate = self;
        _PVYWKmainTable.dataSource = self;
        _PVYWKmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVYWKmainTable.estimatedRowHeight = 66.0f;
        _PVYWKmainTable.tableHeaderView = [[UIView alloc] init];
        _PVYWKmainTable.tableFooterView = [[UIView alloc] init];
        [_PVYWKmainTable registerClass:[PVYWKSetTableViewCell class] forCellReuseIdentifier:@"PVYWKSetTableViewCell"];
    }
    return _PVYWKmainTable;
}
@end
