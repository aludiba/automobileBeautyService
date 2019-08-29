//
//  PKSetViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKSetViewController.h"
#import "PKLoginViewController.h"
#import "PKModifyNicknameViewController.h"
#import "PKSetViewModel.h"
#import "PKSetTableViewCell.h"
#import "PKPasswordChangeViewController.h"
@interface PKSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation PKSetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self setContentView];
}
- (void)setContentView{
    self.view.backgroundColor = PKH_Color(244, 245, 246, 1);
    PKSetViewModel *viewModel = [[PKSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.viewDataArray addObject:viewModel];
    
    PKSetViewModel *viewModel1 = [[PKSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.viewDataArray addObject:viewModel1];
    
    PKSetViewModel *viewModel2 = [[PKSetViewModel alloc] init];
    viewModel2.title = NSLocalizedString(@"类别管理", nil);
    [self.viewDataArray addObject:viewModel2];
    
    PKSetViewModel *viewModel3 = [[PKSetViewModel alloc] init];
    viewModel3.title = NSLocalizedString(@"每月限额", nil);
    [self.viewDataArray addObject:viewModel3];
    
    PKSetViewModel *viewModel5 = [[PKSetViewModel alloc] init];
    viewModel5.title = NSLocalizedString(@"退出", nil);
    [self.viewDataArray addObject:viewModel5];
    
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
    PKSetViewModel *viewModel = self.viewDataArray[indexPath.row];
    PKSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PKSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PKSetViewModel *viewModel = self.viewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PKModifyNicknameViewController *mnnVC = [[PKModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifyNicknameB = ^(PKModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.nickname;
                [weakSelf.mainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PKPasswordChangeViewController *pacVC = [[PKPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
        {
            [BmobUser logout];
            PKLoginViewController *loginVC = [PKLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PKKeyWindow.rootViewController = loginVCNav;
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
        _mainTable.backgroundColor = PKH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[PKSetTableViewCell class] forCellReuseIdentifier:@"PKSetTableViewCell"];
    }
    return _mainTable;
}
@end
