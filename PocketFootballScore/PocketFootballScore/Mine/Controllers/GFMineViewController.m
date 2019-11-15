//
//  GFMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFMineViewController.h"
#import "GFLoginViewController.h"
#import "GFModifyNicknameViewController.h"
#import "GFSetViewModel.h"
#import "GFSetTableViewCell.h"
#import "GFPasswordChangeViewController.h"
@interface GFMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GFviewDataArray;
@property(nonatomic, strong)UITableView *GFmainTable;
@end

@implementation GFMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self GFsetContentView];
}
- (void)GFsetContentView{
    self.view.backgroundColor = GFH_Color(242, 242, 242, 1);
    GFSetViewModel *viewModel = [[GFSetViewModel alloc] init];
    viewModel.GFtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.GFcontent = [user objectForKey:@"username"];
    }
    [self.GFviewDataArray addObject:viewModel];
    
    GFSetViewModel *viewModel1 = [[GFSetViewModel alloc] init];
    viewModel1.GFtitle = NSLocalizedString(@"密码修改", nil);
    [self.GFviewDataArray addObject:viewModel1];
    
    GFSetViewModel *viewModel2 = [[GFSetViewModel alloc] init];
    viewModel2.GFtitle = NSLocalizedString(@"登录&退出", nil);
    [self.GFviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.GFmainTable];
    [self.GFmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GFviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GFSetViewModel *viewModel = self.GFviewDataArray[indexPath.row];
    GFSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GFSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    GFSetViewModel *viewModel = self.GFviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            GFModifyNicknameViewController *mnnVC = [[GFModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(GFModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.GFcontent = nicknameVC.GFnickname;
                [weakSelf.GFmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            GFPasswordChangeViewController *pacVC = [[GFPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
            loginVC.type = 0;
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GFKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)GFviewDataArray{
    if (!_GFviewDataArray) {
        _GFviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GFviewDataArray;
}
- (UITableView *)GFmainTable{
    if (!_GFmainTable) {
        _GFmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GFmainTable.delegate = self;
        _GFmainTable.dataSource = self;
        _GFmainTable.rowHeight = UITableViewAutomaticDimension;
        _GFmainTable.estimatedRowHeight = 55.0f;
        _GFmainTable.tableHeaderView = [[UIView alloc] init];
        _GFmainTable.tableFooterView = [[UIView alloc] init];
        [_GFmainTable registerClass:[GFSetTableViewCell class] forCellReuseIdentifier:@"GFSetTableViewCell"];
    }
    return _GFmainTable;
}
@end
