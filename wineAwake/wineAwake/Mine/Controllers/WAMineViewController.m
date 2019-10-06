//
//  WAMineViewController.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WAMineViewController.h"
#import "WALoginViewController.h"
#import "WAModifyNicknameViewController.h"
#import "WASetViewModel.h"
#import "WASetTableViewCell.h"
#import "WAPasswordChangeViewController.h"
@interface WAMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation WAMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self setContentView];
}
- (void)setContentView{
    self.view.backgroundColor = WAH_Color(244, 245, 246, 1);
    WASetViewModel *viewModel = [[WASetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.viewDataArray addObject:viewModel];
    
    WASetViewModel *viewModel1 = [[WASetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.viewDataArray addObject:viewModel1];
    
    WASetViewModel *viewModel2 = [[WASetViewModel alloc] init];
    viewModel2.title = NSLocalizedString(@"退出", nil);
    [self.viewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.mainTable];
    [self.mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WASetViewModel *viewModel = self.viewDataArray[indexPath.row];
    WASetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WASetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    WASetViewModel *viewModel = self.viewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            WAModifyNicknameViewController *mnnVC = [[WAModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifyNicknameB = ^(WAModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.nickname;
                [weakSelf.mainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            WAPasswordChangeViewController *pacVC = [[WAPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            WALoginViewController *loginVC = [WALoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            WAKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UITableView *)mainTable{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _mainTable.backgroundColor = WAH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[WASetTableViewCell class] forCellReuseIdentifier:@"WASetTableViewCell"];
    }
    return _mainTable;
}
@end
