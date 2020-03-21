//
//  AHMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHMineViewController.h"
#import "AHLoginViewController.h"
#import "AHModifyNicknameViewController.h"
#import "AHSetViewModel.h"
#import "AHSetTableViewCell.h"
#import "AHPasswordChangeViewController.h"
@interface AHMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *AHviewDataArray;
@property(nonatomic, strong)UITableView *AHmainTable;
@end

@implementation AHMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self AHsetContentView];
}
- (void)AHsetContentView{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    AHSetViewModel *viewModel = [[AHSetViewModel alloc] init];
    viewModel.AHtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.AHcontent = [user objectForKey:@"username"];
    }
    [self.AHviewDataArray addObject:viewModel];
    
    AHSetViewModel *viewModel1 = [[AHSetViewModel alloc] init];
    viewModel1.AHtitle = NSLocalizedString(@"密码修改", nil);
    [self.AHviewDataArray addObject:viewModel1];
    
    AHSetViewModel *viewModel2 = [[AHSetViewModel alloc] init];
    viewModel2.AHtitle = NSLocalizedString(@"退出", nil);
    [self.AHviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.AHmainTable];
    [self.AHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.AHviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    AHSetViewModel *viewModel = self.AHviewDataArray[indexPath.row];
    AHSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"AHSetTableViewCell" forIndexPath:indexPath];
    cell.AHmodel = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    AHSetViewModel *viewModel = self.AHviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            AHModifyNicknameViewController *mnnVC = [[AHModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.AHmodifynicknameB = ^(AHModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.AHcontent = nicknameVC.AHnickname;
                [weakSelf.AHmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            AHPasswordChangeViewController *pacVC = [[AHPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            AHLoginViewController *loginVC = [AHLoginViewController AHshareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            AHKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)AHviewDataArray{
    if (!_AHviewDataArray) {
        _AHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _AHviewDataArray;
}
- (UITableView *)AHmainTable{
    if (!_AHmainTable) {
        _AHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _AHmainTable.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        _AHmainTable.delegate = self;
        _AHmainTable.dataSource = self;
        _AHmainTable.rowHeight = UITableViewAutomaticDimension;
        _AHmainTable.estimatedRowHeight = 55.0f;
        _AHmainTable.tableHeaderView = [[UIView alloc] init];
        _AHmainTable.tableFooterView = [[UIView alloc] init];
        [_AHmainTable registerClass:[AHSetTableViewCell class] forCellReuseIdentifier:@"AHSetTableViewCell"];
    }
    return _AHmainTable;
}
@end
