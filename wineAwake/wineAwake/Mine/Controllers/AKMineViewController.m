//
//  AKMineViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKMineViewController.h"
#import "AKLoginViewController.h"
#import "AKModifyNicknameViewController.h"
#import "AKSetViewModel.h"
#import "AKSetTableViewCell.h"
#import "AKPasswordChangeViewController.h"
@interface AKMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AKviewDataArray;
@property(nonatomic, strong)UITableView *AKmainTable;
@end

@implementation AKMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self AKsetContentView];
}
- (void)AKsetContentView{
    self.view.backgroundColor = AKH_Color(242, 242, 242, 1);
    AKSetViewModel *viewModel = [[AKSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.AKviewDataArray addObject:viewModel];
    
    AKSetViewModel *viewModel1 = [[AKSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.AKviewDataArray addObject:viewModel1];
    
    AKSetViewModel *viewModel2 = [[AKSetViewModel alloc] init];
    viewModel2.title = NSLocalizedString(@"退出", nil);
    [self.AKviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.AKmainTable];
    [self.AKmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AKviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AKSetViewModel *viewModel = self.AKviewDataArray[indexPath.row];
    AKSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AKSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AKSetViewModel *viewModel = self.AKviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            AKModifyNicknameViewController *mnnVC = [[AKModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(AKModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.AKnickname;
                [weakSelf.AKmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            AKPasswordChangeViewController *pacVC = [[AKPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            AKLoginViewController *loginVC = [AKLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AKKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AKviewDataArray{
    if (!_AKviewDataArray) {
        _AKviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AKviewDataArray;
}
- (UITableView *)AKmainTable{
    if (!_AKmainTable) {
        _AKmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AKmainTable.backgroundColor = AKH_Color(244, 245, 246, 1);
        _AKmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _AKmainTable.delegate = self;
        _AKmainTable.dataSource = self;
        _AKmainTable.rowHeight = UITableViewAutomaticDimension;
        _AKmainTable.estimatedRowHeight = 55.0f;
        _AKmainTable.tableHeaderView = [[UIView alloc] init];
        _AKmainTable.tableFooterView = [[UIView alloc] init];
        [_AKmainTable registerClass:[AKSetTableViewCell class] forCellReuseIdentifier:@"AKSetTableViewCell"];
    }
    return _AKmainTable;
}
@end
