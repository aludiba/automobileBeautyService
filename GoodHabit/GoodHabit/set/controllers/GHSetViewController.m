//
//  GHSetViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHSetViewController.h"
#import "GHModifyNicknameViewController.h"
#import "GHPasswordChangeViewController.h"
#import "GHLoginViewController.h"
#import "GHGuideViewController.h"
#import "GHSetTableViewCell.h"
#import "GHSetViewModel.h"

@interface GHSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UITableView *mainTable;
@end

@implementation GHSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"设置", nil);
    [self setContentView];
}
- (void)setContentView{
    self.view.backgroundColor = GHH_Color(244, 245, 246, 1);
    GHSetViewModel *viewModel = [[GHSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.viewDataArray addObject:viewModel];
    
    GHSetViewModel *viewModel1 = [[GHSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.viewDataArray addObject:viewModel1];
    
    GHSetViewModel *viewModel2 = [[GHSetViewModel alloc] init];
       viewModel2.title = NSLocalizedString(@"设置环境", nil);
       [self.viewDataArray addObject:viewModel2];
    
    GHSetViewModel *viewModel5 = [[GHSetViewModel alloc] init];
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
    GHSetViewModel *viewModel = self.viewDataArray[indexPath.row];
    GHSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GHSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    GHSetViewModel *viewModel = self.viewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            GHModifyNicknameViewController *mnnVC = [[GHModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.modifyNicknameB = ^(GHModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.nickname;
                [weakSelf.mainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            GHPasswordChangeViewController *pacVC = [[GHPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
            {
            GHGuideViewController *guideVC = [[GHGuideViewController alloc] init];
            guideVC.selectIndex = 2;
            guideVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:guideVC animated:YES];
        }
            break;
        case 3:
        {
            [BmobUser logout];
            GHLoginViewController *loginVC = [GHLoginViewController shareInstance];
            GHKeyWindow.rootViewController = loginVC;
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
        _mainTable.backgroundColor = GHH_Color(244, 245, 246, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.tableHeaderView = [[UIView alloc] init];
        _mainTable.tableFooterView = [[UIView alloc] init];
        [_mainTable registerClass:[GHSetTableViewCell class] forCellReuseIdentifier:@"GHSetTableViewCell"];
    }
    return _mainTable;
}
@end
