//
//  PVMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVMineViewController.h"
#import "PVLoginViewController.h"
#import "PVModifyNicknameViewController.h"
#import "PVSetViewModel.h"
#import "PVSetTableViewCell.h"
#import "PVPasswordChangeViewController.h"
@interface PVMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PVviewDataArray;
@property(nonatomic, strong)UITableView *PVmainTable;
@end

@implementation PVMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self PVsetContentView];
}
- (void)PVsetContentView{
    self.view.backgroundColor = PVH_Color(242, 242, 242, 1);
    PVSetViewModel *viewModel = [[PVSetViewModel alloc] init];
    viewModel.PVtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.PVcontent = [user objectForKey:@"username"];
    }
    [self.PVviewDataArray addObject:viewModel];
    
    PVSetViewModel *viewModel1 = [[PVSetViewModel alloc] init];
    viewModel1.PVtitle = NSLocalizedString(@"密码修改", nil);
    [self.PVviewDataArray addObject:viewModel1];
    
    PVSetViewModel *viewModel2 = [[PVSetViewModel alloc] init];
    viewModel2.PVtitle = NSLocalizedString(@"登录&退出", nil);
    [self.PVviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.PVmainTable];
    [self.PVmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PVviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PVSetViewModel *viewModel = self.PVviewDataArray[indexPath.row];
    PVSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PVSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PVSetViewModel *viewModel = self.PVviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PVModifyNicknameViewController *mnnVC = [[PVModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(PVModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.PVcontent = nicknameVC.PVnickname;
                [weakSelf.PVmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PVPasswordChangeViewController *pacVC = [[PVPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
            loginVC.type = 0;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PVKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PVviewDataArray{
    if (!_PVviewDataArray) {
        _PVviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PVviewDataArray;
}
- (UITableView *)PVmainTable{
    if (!_PVmainTable) {
        _PVmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PVmainTable.delegate = self;
        _PVmainTable.dataSource = self;
        _PVmainTable.rowHeight = UITableViewAutomaticDimension;
        _PVmainTable.estimatedRowHeight = 55.0f;
        _PVmainTable.tableHeaderView = [[UIView alloc] init];
        _PVmainTable.tableFooterView = [[UIView alloc] init];
        [_PVmainTable registerClass:[PVSetTableViewCell class] forCellReuseIdentifier:@"PVSetTableViewCell"];
    }
    return _PVmainTable;
}
@end
