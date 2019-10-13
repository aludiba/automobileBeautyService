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
@property(nonatomic, strong)NSMutableArray *WAviewDataArray;
@property(nonatomic, strong)UITableView *WAmainTable;
@end

@implementation WAMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self WAsetContentView];
}
- (void)WAsetContentView{
    self.view.backgroundColor = WAH_Color(242, 242, 242, 1);
    WASetViewModel *viewModel = [[WASetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.WAviewDataArray addObject:viewModel];
    
    WASetViewModel *viewModel1 = [[WASetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.WAviewDataArray addObject:viewModel1];
    
    WASetViewModel *viewModel2 = [[WASetViewModel alloc] init];
    viewModel2.title = NSLocalizedString(@"退出", nil);
    [self.WAviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.WAmainTable];
    [self.WAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.WAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    WASetViewModel *viewModel = self.WAviewDataArray[indexPath.row];
    WASetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WASetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    WASetViewModel *viewModel = self.WAviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            WAModifyNicknameViewController *mnnVC = [[WAModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(WAModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.WAnickname;
                [weakSelf.WAmainTable reloadData];
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
- (NSMutableArray *)WAviewDataArray{
    if (!_WAviewDataArray) {
        _WAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _WAviewDataArray;
}
- (UITableView *)WAmainTable{
    if (!_WAmainTable) {
        _WAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _WAmainTable.backgroundColor = WAH_Color(244, 245, 246, 1);
        _WAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _WAmainTable.delegate = self;
        _WAmainTable.dataSource = self;
        _WAmainTable.rowHeight = UITableViewAutomaticDimension;
        _WAmainTable.estimatedRowHeight = 55.0f;
        _WAmainTable.tableHeaderView = [[UIView alloc] init];
        _WAmainTable.tableFooterView = [[UIView alloc] init];
        [_WAmainTable registerClass:[WASetTableViewCell class] forCellReuseIdentifier:@"WASetTableViewCell"];
    }
    return _WAmainTable;
}
@end
