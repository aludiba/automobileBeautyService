//
//  PBMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBMineViewController.h"
#import "PBLoginViewController.h"
#import "PBModifyNicknameViewController.h"
#import "PBSetViewModel.h"
#import "PBSetTableViewCell.h"
#import "PBPasswordChangeViewController.h"
@interface PBMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PBviewDataArray;
@property(nonatomic, strong)UITableView *PBmainTable;
@end

@implementation PBMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self PBsetContentView];
}
- (void)PBsetContentView{
    self.view.backgroundColor = PBH_Color(242, 242, 242, 1);
    PBSetViewModel *viewModel = [[PBSetViewModel alloc] init];
    viewModel.PBtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.PBcontent = [user objectForKey:@"username"];
    }
    [self.PBviewDataArray addObject:viewModel];
    
    PBSetViewModel *viewModel1 = [[PBSetViewModel alloc] init];
    viewModel1.PBtitle = NSLocalizedString(@"密码修改", nil);
    [self.PBviewDataArray addObject:viewModel1];
    
    PBSetViewModel *viewModel2 = [[PBSetViewModel alloc] init];
    viewModel2.PBtitle = NSLocalizedString(@"退出", nil);
    [self.PBviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.PBmainTable];
    [self.PBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PBviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PBSetViewModel *viewModel = self.PBviewDataArray[indexPath.row];
    PBSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PBSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PBSetViewModel *viewModel = self.PBviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PBModifyNicknameViewController *mnnVC = [[PBModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(PBModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.PBcontent = nicknameVC.PBnickname;
                [weakSelf.PBmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PBPasswordChangeViewController *pacVC = [[PBPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            PBLoginViewController *loginVC = [PBLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PBKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PBviewDataArray{
    if (!_PBviewDataArray) {
        _PBviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PBviewDataArray;
}
- (UITableView *)PBmainTable{
    if (!_PBmainTable) {
        _PBmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PBmainTable.delegate = self;
        _PBmainTable.dataSource = self;
        _PBmainTable.rowHeight = UITableViewAutomaticDimension;
        _PBmainTable.estimatedRowHeight = 55.0f;
        _PBmainTable.tableHeaderView = [[UIView alloc] init];
        _PBmainTable.tableFooterView = [[UIView alloc] init];
        [_PBmainTable registerClass:[PBSetTableViewCell class] forCellReuseIdentifier:@"PBSetTableViewCell"];
    }
    return _PBmainTable;
}
@end
