//
//  GAMineViewController.m
//  quitSmokingRemind
//
//  Created by bykj on 2019/10/15.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAMineViewController.h"
#import "GALoginViewController.h"
#import "GAModifyNicknameViewController.h"
#import "GASetViewModel.h"
#import "GASetTableViewCell.h"
#import "GAPasswordChangeViewController.h"
@interface GAMineViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *GAviewDataArray;
@property(nonatomic, strong)UITableView *GAmainTable;
@end

@implementation GAMineViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"我的", nil);
    [self GAsetContentView];
}
- (void)GAsetContentView{
    GASetViewModel *viewModel = [[GASetViewModel alloc] init];
    viewModel.GAtitle = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.GAcontent = [user objectForKey:@"username"];
    }
    [self.GAviewDataArray addObject:viewModel];
    
    GASetViewModel *viewModel1 = [[GASetViewModel alloc] init];
    viewModel1.GAtitle = NSLocalizedString(@"密码修改", nil);
    [self.GAviewDataArray addObject:viewModel1];
    
    GASetViewModel *viewModel2 = [[GASetViewModel alloc] init];
    viewModel2.GAtitle = NSLocalizedString(@"退出", nil);
    [self.GAviewDataArray addObject:viewModel2];
    
    [self.view addSubview:self.GAmainTable];
    [self.GAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.GAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    GASetViewModel *viewModel = self.GAviewDataArray[indexPath.row];
    GASetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GASetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    GASetViewModel *viewModel = self.GAviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            GAModifyNicknameViewController *mnnVC = [[GAModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifynicknameB = ^(GAModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.GAcontent = nicknameVC.GAnickname;
                [weakSelf.GAmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            GAPasswordChangeViewController *pacVC = [[GAPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
        {
            [BmobUser logout];
            GALoginViewController *loginVC = [GALoginViewController shareInstance];
            UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
            GAKeyWindow.rootViewController = loginVCNav;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)GAviewDataArray{
    if (!_GAviewDataArray) {
        _GAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _GAviewDataArray;
}
- (UITableView *)GAmainTable{
    if (!_GAmainTable) {
        _GAmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _GAmainTable.delegate = self;
        _GAmainTable.dataSource = self;
        _GAmainTable.rowHeight = UITableViewAutomaticDimension;
        _GAmainTable.estimatedRowHeight = 55.0f;
        _GAmainTable.tableHeaderView = [[UIView alloc] init];
        _GAmainTable.tableFooterView = [[UIView alloc] init];
        [_GAmainTable registerClass:[GASetTableViewCell class] forCellReuseIdentifier:@"GASetTableViewCell"];
    }
    return _GAmainTable;
}
@end
