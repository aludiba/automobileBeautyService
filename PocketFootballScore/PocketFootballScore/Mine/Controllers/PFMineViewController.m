//
//  PFMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFMineViewController.h"
#import "PFLoginViewController.h"
#import "PFModifyNicknameViewController.h"
#import "PFSetViewModel.h"
#import "PFSetTableViewCell.h"
#import "PFPasswordChangeViewController.h"
@interface PFMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PFviewDataArray;
@property(nonatomic, strong)UITableView *PFmainTable;
@end

@implementation PFMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self PFsetContentView];
}
- (void)PFsetContentView{
    self.view.backgroundColor = PFH_Color(242, 242, 242, 1);
    PFSetViewModel *viewModel = [[PFSetViewModel alloc] init];
    viewModel.PFtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.PFcontent = [user objectForKey:@"username"];
    }
    [self.PFviewDataArray addObject:viewModel];
    
    PFSetViewModel *viewModel1 = [[PFSetViewModel alloc] init];
    viewModel1.PFtitle = NSLocalizedString(@"密码修改", nil);
    [self.PFviewDataArray addObject:viewModel1];
    
    PFSetViewModel *viewModel2 = [[PFSetViewModel alloc] init];
    viewModel2.PFtitle = NSLocalizedString(@"退出", nil);
    [self.PFviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.PFmainTable];
    [self.PFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PFSetViewModel *viewModel = self.PFviewDataArray[indexPath.row];
    PFSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PFSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PFSetViewModel *viewModel = self.PFviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PFModifyNicknameViewController *mnnVC = [[PFModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(PFModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.PFcontent = nicknameVC.PFnickname;
                [weakSelf.PFmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PFPasswordChangeViewController *pacVC = [[PFPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            PFKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PFviewDataArray{
    if (!_PFviewDataArray) {
        _PFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PFviewDataArray;
}
- (UITableView *)PFmainTable{
    if (!_PFmainTable) {
        _PFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PFmainTable.delegate = self;
        _PFmainTable.dataSource = self;
        _PFmainTable.rowHeight = UITableViewAutomaticDimension;
        _PFmainTable.estimatedRowHeight = 55.0f;
        _PFmainTable.tableHeaderView = [[UIView alloc] init];
        _PFmainTable.tableFooterView = [[UIView alloc] init];
        [_PFmainTable registerClass:[PFSetTableViewCell class] forCellReuseIdentifier:@"PFSetTableViewCell"];
    }
    return _PFmainTable;
}
@end
