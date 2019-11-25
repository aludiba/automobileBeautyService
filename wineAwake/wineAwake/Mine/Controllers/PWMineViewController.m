//
//  PWMineViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWMineViewController.h"
#import "PWLoginViewController.h"
#import "PWModifyNicknameViewController.h"
#import "PWSetViewModel.h"
#import "PWSetTableViewCell.h"
#import "PWPasswordChangeViewController.h"
@interface PWMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PWviewDataArray;
@property(nonatomic, strong)UITableView *PWmainTable;
@end

@implementation PWMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self PWsetContentView];
}
- (void)PWsetContentView{
    self.view.backgroundColor = PWH_Color(242, 242, 242, 1);
    PWSetViewModel *viewModel = [[PWSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.PWviewDataArray addObject:viewModel];
    
    PWSetViewModel *viewModel1 = [[PWSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.PWviewDataArray addObject:viewModel1];
    
    PWSetViewModel *viewModel2 = [[PWSetViewModel alloc] init];
    viewModel2.title = NSLocalizedString(@"退出", nil);
    [self.PWviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.PWmainTable];
    [self.PWmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PWviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PWSetViewModel *viewModel = self.PWviewDataArray[indexPath.row];
    PWSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PWSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PWSetViewModel *viewModel = self.PWviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PWModifyNicknameViewController *mnnVC = [[PWModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(PWModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.PWnickname;
                [weakSelf.PWmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PWPasswordChangeViewController *pacVC = [[PWPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            PWLoginViewController *loginVC = [PWLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PWKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PWviewDataArray{
    if (!_PWviewDataArray) {
        _PWviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PWviewDataArray;
}
- (UITableView *)PWmainTable{
    if (!_PWmainTable) {
        _PWmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PWmainTable.backgroundColor = PWH_Color(244, 245, 246, 1);
        _PWmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PWmainTable.delegate = self;
        _PWmainTable.dataSource = self;
        _PWmainTable.rowHeight = UITableViewAutomaticDimension;
        _PWmainTable.estimatedRowHeight = 55.0f;
        _PWmainTable.tableHeaderView = [[UIView alloc] init];
        _PWmainTable.tableFooterView = [[UIView alloc] init];
        [_PWmainTable registerClass:[PWSetTableViewCell class] forCellReuseIdentifier:@"PWSetTableViewCell"];
    }
    return _PWmainTable;
}
@end
