//
//  AFMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFMineViewController.h"
#import "AFLoginViewController.h"
#import "AFModifyNicknameViewController.h"
#import "AFSetViewModel.h"
#import "AFSetTableViewCell.h"
#import "AFPasswordChangeViewController.h"
@interface AFMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AFviewDataArray;
@property(nonatomic, strong)UITableView *AFmainTable;
@end

@implementation AFMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self AFsetContentView];
}
- (void)AFsetContentView{
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    AFSetViewModel *viewModel = [[AFSetViewModel alloc] init];
    viewModel.AFtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.AFcontent = [user objectForKey:@"username"];
    }
    [self.AFviewDataArray addObject:viewModel];
    
    AFSetViewModel *viewModel1 = [[AFSetViewModel alloc] init];
    viewModel1.AFtitle = NSLocalizedString(@"密码修改", nil);
    [self.AFviewDataArray addObject:viewModel1];
    
    AFSetViewModel *viewModel2 = [[AFSetViewModel alloc] init];
    viewModel2.AFtitle = NSLocalizedString(@"退出", nil);
    [self.AFviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.AFmainTable];
    [self.AFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AFSetViewModel *viewModel = self.AFviewDataArray[indexPath.row];
    AFSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AFSetTableViewCell" forIndexPath:indexPath];
    cell.AFmodel = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AFSetViewModel *viewModel = self.AFviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            AFModifyNicknameViewController *mnnVC = [[AFModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.AFmodifynicknameB = ^(AFModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.AFcontent = nicknameVC.AFnickname;
                [weakSelf.AFmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            AFPasswordChangeViewController *pacVC = [[AFPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            AFLoginViewController *loginVC = [AFLoginViewController AFshareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AFKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AFviewDataArray{
    if (!_AFviewDataArray) {
        _AFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AFviewDataArray;
}
- (UITableView *)AFmainTable{
    if (!_AFmainTable) {
        _AFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AFmainTable.backgroundColor = AFH_Color(44, 77, 93, 1);
        _AFmainTable.delegate = self;
        _AFmainTable.dataSource = self;
        _AFmainTable.rowHeight = UITableViewAutomaticDimension;
        _AFmainTable.estimatedRowHeight = 55.0f;
        _AFmainTable.tableHeaderView = [[UIView alloc] init];
        _AFmainTable.tableFooterView = [[UIView alloc] init];
        [_AFmainTable registerClass:[AFSetTableViewCell class] forCellReuseIdentifier:@"AFSetTableViewCell"];
    }
    return _AFmainTable;
}
@end
