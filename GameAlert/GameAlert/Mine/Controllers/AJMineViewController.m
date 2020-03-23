//
//  AJMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJMineViewController.h"
#import "AJLoginViewController.h"
#import "AJModifyNicknameViewController.h"
#import "AJSetViewModel.h"
#import "AJSetTableViewCell.h"
#import "AJPasswordChangeViewController.h"
@interface AJMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AJviewDataArray;
@property(nonatomic, strong)UITableView *AJmainTable;
@end

@implementation AJMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self AJsetContentView];
}
- (void)AJsetContentView{
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    AJSetViewModel *viewModel = [[AJSetViewModel alloc] init];
    viewModel.AJtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.AJcontent = [user objectForKey:@"username"];
    }
    [self.AJviewDataArray addObject:viewModel];
    
    AJSetViewModel *viewModel1 = [[AJSetViewModel alloc] init];
    viewModel1.AJtitle = NSLocalizedString(@"密码修改", nil);
    [self.AJviewDataArray addObject:viewModel1];
    
    AJSetViewModel *viewModel2 = [[AJSetViewModel alloc] init];
    viewModel2.AJtitle = NSLocalizedString(@"退出", nil);
    [self.AJviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.AJmainTable];
    [self.AJmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AJviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AJSetViewModel *viewModel = self.AJviewDataArray[indexPath.row];
    AJSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AJSetTableViewCell" forIndexPath:indexPath];
    cell.AJmodel = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AJSetViewModel *viewModel = self.AJviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            AJModifyNicknameViewController *mnnVC = [[AJModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.AJmodifynicknameB = ^(AJModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.AJcontent = nicknameVC.AJnickname;
                [weakSelf.AJmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            AJPasswordChangeViewController *pacVC = [[AJPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AJKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AJviewDataArray{
    if (!_AJviewDataArray) {
        _AJviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AJviewDataArray;
}
- (UITableView *)AJmainTable{
    if (!_AJmainTable) {
        _AJmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AJmainTable.backgroundColor = AJH_Color(44, 77, 93, 1);
        _AJmainTable.delegate = self;
        _AJmainTable.dataSource = self;
        _AJmainTable.rowHeight = UITableViewAutomaticDimension;
        _AJmainTable.estimatedRowHeight = 55.0f;
        _AJmainTable.tableHeaderView = [[UIView alloc] init];
        _AJmainTable.tableFooterView = [[UIView alloc] init];
        [_AJmainTable registerClass:[AJSetTableViewCell class] forCellReuseIdentifier:@"AJSetTableViewCell"];
    }
    return _AJmainTable;
}
@end
