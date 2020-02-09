//
//  YWKGAMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAMineViewController.h"
#import "YWKGALoginViewController.h"
#import "YWKGAModifyNicknameViewController.h"
#import "YWKGASetViewModel.h"
#import "YWKGASetTableViewCell.h"
#import "YWKGAPasswordChangeViewController.h"
@interface YWKGAMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *YWKGAviewDataArray;
@property(nonatomic, strong)UITableView *YWKGAmainTable;
@end

@implementation YWKGAMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self YWKGAsetContentView];
}
- (void)YWKGAsetContentView{
    YWKGASetViewModel *viewModel = [[YWKGASetViewModel alloc] init];
    viewModel.YWKGAtitle = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.YWKGAcontent = [user objectForKey:@"username"];
    }
    [self.YWKGAviewDataArray addObject:viewModel];
    
    YWKGASetViewModel *viewModel1 = [[YWKGASetViewModel alloc] init];
    viewModel1.YWKGAtitle = NSLocalizedString(@"密码修改", nil);
    [self.YWKGAviewDataArray addObject:viewModel1];
    
    YWKGASetViewModel *viewModel2 = [[YWKGASetViewModel alloc] init];
    viewModel2.YWKGAtitle = NSLocalizedString(@"退出", nil);
    [self.YWKGAviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.YWKGAmainTable];
    [self.YWKGAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.YWKGAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    YWKGASetViewModel *viewModel = self.YWKGAviewDataArray[indexPath.row];
    YWKGASetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"YWKGASetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    YWKGASetViewModel *viewModel = self.YWKGAviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            YWKGAModifyNicknameViewController *mnnVC = [[YWKGAModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(YWKGAModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.YWKGAcontent = nicknameVC.YWKGAnickname;
                [weakSelf.YWKGAmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            YWKGAPasswordChangeViewController *pacVC = [[YWKGAPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [AVUser logOut];
            YWKGALoginViewController *loginVC = [YWKGALoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            YWKGAKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)YWKGAviewDataArray{
    if (!_YWKGAviewDataArray) {
        _YWKGAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _YWKGAviewDataArray;
}
- (UITableView *)YWKGAmainTable{
    if (!_YWKGAmainTable) {
        _YWKGAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _YWKGAmainTable.delegate = self;
        _YWKGAmainTable.dataSource = self;
        _YWKGAmainTable.rowHeight = UITableViewAutomaticDimension;
        _YWKGAmainTable.estimatedRowHeight = 55.0f;
        _YWKGAmainTable.tableHeaderView = [[UIView alloc] init];
        _YWKGAmainTable.tableFooterView = [[UIView alloc] init];
        [_YWKGAmainTable registerClass:[YWKGASetTableViewCell class] forCellReuseIdentifier:@"YWKGASetTableViewCell"];
    }
    return _YWKGAmainTable;
}
@end
