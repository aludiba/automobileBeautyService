//
//  SOMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOMineViewController.h"
#import "SOLoginViewController.h"
#import "SOModifyNicknameViewController.h"
#import "SOSetViewModel.h"
#import "SOSetTableViewCell.h"
#import "SOPasswordChangeViewController.h"
@interface SOMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *SOviewDataArray;
@property(nonatomic, strong)UITableView *SOmainTable;
@end

@implementation SOMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self SOsetContentView];
}
- (void)SOsetContentView{
    self.view.backgroundColor = SOH_Color(242, 242, 242, 1);
    SOSetViewModel *viewModel = [[SOSetViewModel alloc] init];
    viewModel.SOtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.SOcontent = [user objectForKey:@"username"];
    }
    [self.SOviewDataArray addObject:viewModel];
    
    SOSetViewModel *viewModel1 = [[SOSetViewModel alloc] init];
    viewModel1.SOtitle = NSLocalizedString(@"密码修改", nil);
    [self.SOviewDataArray addObject:viewModel1];
    
    SOSetViewModel *viewModel2 = [[SOSetViewModel alloc] init];
    viewModel2.SOtitle = NSLocalizedString(@"退出", nil);
    [self.SOviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.SOmainTable];
    [self.SOmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.SOviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SOSetViewModel *viewModel = self.SOviewDataArray[indexPath.row];
    SOSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SOSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    SOSetViewModel *viewModel = self.SOviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            SOModifyNicknameViewController *mnnVC = [[SOModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(SOModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.SOcontent = nicknameVC.SOnickname;
                [weakSelf.SOmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            SOPasswordChangeViewController *pacVC = [[SOPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            SOLoginViewController *loginVC = [SOLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            SOKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)SOviewDataArray{
    if (!_SOviewDataArray) {
        _SOviewDataArray = [[NSMutableArray alloc] init];
    }
    return _SOviewDataArray;
}
- (UITableView *)SOmainTable{
    if (!_SOmainTable) {
        _SOmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _SOmainTable.backgroundColor = SOH_Color(244, 245, 246, 1);
        _SOmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _SOmainTable.delegate = self;
        _SOmainTable.dataSource = self;
        _SOmainTable.rowHeight = UITableViewAutomaticDimension;
        _SOmainTable.estimatedRowHeight = 55.0f;
        _SOmainTable.tableHeaderView = [[UIView alloc] init];
        _SOmainTable.tableFooterView = [[UIView alloc] init];
        [_SOmainTable registerClass:[SOSetTableViewCell class] forCellReuseIdentifier:@"SOSetTableViewCell"];
    }
    return _SOmainTable;
}
@end
