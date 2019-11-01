//
//  PHSetViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHSetViewController.h"
#import "PHModifyNicknameViewController.h"
#import "PHPasswordChangeViewController.h"
#import "PHLoginViewController.h"
#import "PHGuideViewController.h"
#import "PHSetTableViewCell.h"
#import "PHSetViewModel.h"

@interface PHSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *PHviewDataArray;
@property(nonatomic, strong)UITableView *PHmainTable;
@end

@implementation PHSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"设置", nil);
    [self PHsetContentView];
}
- (void)PHsetContentView{
    self.view.backgroundColor = PHH_Color(244, 245, 246, 1);
    PHSetViewModel *viewModel = [[PHSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.PHviewDataArray addObject:viewModel];
    
    PHSetViewModel *viewModel1 = [[PHSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.PHviewDataArray addObject:viewModel1];
    
    PHSetViewModel *viewModel2 = [[PHSetViewModel alloc] init];
       viewModel2.title = NSLocalizedString(@"设置习惯", nil);
       [self.PHviewDataArray addObject:viewModel2];
    
    PHSetViewModel *viewModel5 = [[PHSetViewModel alloc] init];
    viewModel5.title = NSLocalizedString(@"退出", nil);
    [self.PHviewDataArray addObject:viewModel5];
    
    [self.view addSubview:self.PHmainTable];
    [self.PHmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.PHviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    PHSetViewModel *viewModel = self.PHviewDataArray[indexPath.row];
    PHSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PHSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    PHSetViewModel *viewModel = self.PHviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            PHModifyNicknameViewController *mnnVC = [[PHModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.PHmodifyNicknameB = ^(PHModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.nickname;
                [weakSelf.PHmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            PHPasswordChangeViewController *pacVC = [[PHPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
            {
            PHGuideViewController *guideVC = [[PHGuideViewController alloc] init];
            guideVC.PHselectIndex = 2;
            guideVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:guideVC animated:YES];
        }
            break;
        case 3:
        {
            [BmobUser logout];
            PHLoginViewController *loginVC = [PHLoginViewController PHshareInstance];
            PHKeyWindow.rootViewController = loginVC;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHviewDataArray{
    if (!_PHviewDataArray) {
        _PHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PHviewDataArray;
}
- (UITableView *)PHmainTable{
    if (!_PHmainTable) {
        _PHmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _PHmainTable.backgroundColor = PHH_Color(244, 245, 246, 1);
        _PHmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _PHmainTable.delegate = self;
        _PHmainTable.dataSource = self;
        _PHmainTable.rowHeight = UITableViewAutomaticDimension;
        _PHmainTable.estimatedRowHeight = 55.0f;
        _PHmainTable.tableHeaderView = [[UIView alloc] init];
        _PHmainTable.tableFooterView = [[UIView alloc] init];
        [_PHmainTable registerClass:[PHSetTableViewCell class] forCellReuseIdentifier:@"PHSetTableViewCell"];
    }
    return _PHmainTable;
}
@end
