//
//  EAMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAMineViewController.h"
#import "EALoginViewController.h"
#import "EAModifyNicknameViewController.h"
#import "EASetViewModel.h"
#import "EASetTableViewCell.h"
#import "EAPasswordChangeViewController.h"
@interface EAMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *EAviewDataArray;
@property(nonatomic, strong)UITableView *EAmainTable;
@end

@implementation EAMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self EAsetContentView];
}
- (void)EAsetContentView{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    EASetViewModel *viewModel = [[EASetViewModel alloc] init];
    viewModel.EAtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.EAcontent = [user objectForKey:@"username"];
    }
    [self.EAviewDataArray addObject:viewModel];
    
    EASetViewModel *viewModel1 = [[EASetViewModel alloc] init];
    viewModel1.EAtitle = NSLocalizedString(@"密码修改", nil);
    [self.EAviewDataArray addObject:viewModel1];
    
    EASetViewModel *viewModel2 = [[EASetViewModel alloc] init];
    viewModel2.EAtitle = NSLocalizedString(@"退出", nil);
    [self.EAviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.EAmainTable];
    [self.EAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.EAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EASetViewModel *viewModel = self.EAviewDataArray[indexPath.row];
    EASetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"EASetTableViewCell" forIndexPath:indexPath];
    cell.EAmodel = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    EASetViewModel *viewModel = self.EAviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            EAModifyNicknameViewController *mnnVC = [[EAModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.EAmodifynicknameB = ^(EAModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.EAcontent = nicknameVC.EAnickname;
                [weakSelf.EAmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            EAPasswordChangeViewController *pacVC = [[EAPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            EALoginViewController *loginVC = [EALoginViewController EAshareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            EAKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)EAviewDataArray{
    if (!_EAviewDataArray) {
        _EAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _EAviewDataArray;
}
- (UITableView *)EAmainTable{
    if (!_EAmainTable) {
        _EAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _EAmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _EAmainTable.delegate = self;
        _EAmainTable.dataSource = self;
        _EAmainTable.rowHeight = UITableViewAutomaticDimension;
        _EAmainTable.estimatedRowHeight = 55.0f;
        _EAmainTable.tableHeaderView = [[UIView alloc] init];
        _EAmainTable.tableFooterView = [[UIView alloc] init];
        [_EAmainTable registerClass:[EASetTableViewCell class] forCellReuseIdentifier:@"EASetTableViewCell"];
    }
    return _EAmainTable;
}
@end
