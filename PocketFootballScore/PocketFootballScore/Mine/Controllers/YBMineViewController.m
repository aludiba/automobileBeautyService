//
//  YBMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBMineViewController.h"
#import "YBLoginViewController.h"
#import "YBModifyNicknameViewController.h"
#import "YBSetViewModel.h"
#import "YBSetTableViewCell.h"
#import "YBPasswordChangeViewController.h"
@interface YBMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YBviewDataArray;
@property(nonatomic, strong)UITableView *YBmainTable;
@end

@implementation YBMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self YBsetContentView];
}
- (void)YBsetContentView{
    self.view.backgroundColor = YBH_Color(242, 242, 242, 1);
    YBSetViewModel *viewModel = [[YBSetViewModel alloc] init];
    viewModel.YBtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.YBcontent = [user objectForKey:@"username"];
    }
    [self.YBviewDataArray addObject:viewModel];
    
    YBSetViewModel *viewModel1 = [[YBSetViewModel alloc] init];
    viewModel1.YBtitle = NSLocalizedString(@"密码修改", nil);
    [self.YBviewDataArray addObject:viewModel1];
    
    YBSetViewModel *viewModel2 = [[YBSetViewModel alloc] init];
    viewModel2.YBtitle = NSLocalizedString(@"登录&退出", nil);
    [self.YBviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.YBmainTable];
    [self.YBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YBSetViewModel *viewModel = self.YBviewDataArray[indexPath.row];
    YBSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YBSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    YBSetViewModel *viewModel = self.YBviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            YBModifyNicknameViewController *mnnVC = [[YBModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(YBModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.YBcontent = nicknameVC.YBnickname;
                [weakSelf.YBmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            YBPasswordChangeViewController *pacVC = [[YBPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
            loginVC.type = 0;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YBKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)YBviewDataArray{
    if (!_YBviewDataArray) {
        _YBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YBviewDataArray;
}
- (UITableView *)YBmainTable{
    if (!_YBmainTable) {
        _YBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YBmainTable.delegate = self;
        _YBmainTable.dataSource = self;
        _YBmainTable.rowHeight = UITableViewAutomaticDimension;
        _YBmainTable.estimatedRowHeight = 55.0f;
        _YBmainTable.tableHeaderView = [[UIView alloc] init];
        _YBmainTable.tableFooterView = [[UIView alloc] init];
        [_YBmainTable registerClass:[YBSetTableViewCell class] forCellReuseIdentifier:@"YBSetTableViewCell"];
    }
    return _YBmainTable;
}
@end
