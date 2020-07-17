//
//  CDSetViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDSetViewController.h"
#import "CDModifyNicknameViewController.h"
#import "CDPasswordChangeViewController.h"
#import "CDLoginViewController.h"
#import "CDGuideViewController.h"
#import "CDSetTableViewCell.h"
#import "CDSetViewModel.h"

@interface CDSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *CDviewDataArray;
@property(nonatomic, strong)UITableView *CDmainTable;
@end

@implementation CDSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"设置", nil);
    [self CDsetContentView];
}
- (void)CDsetContentView{
    self.view.backgroundColor = CDH_Color(244, 245, 246, 1);
    CDSetViewModel *viewModel = [[CDSetViewModel alloc] init];
    viewModel.title = NSLocalizedString(@"昵称", nil);
    AVUser *user = [AVUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        viewModel.content = [user objectForKey:@"username"];
    }
    [self.CDviewDataArray addObject:viewModel];
    
    CDSetViewModel *viewModel1 = [[CDSetViewModel alloc] init];
    viewModel1.title = NSLocalizedString(@"密码修改", nil);
    [self.CDviewDataArray addObject:viewModel1];
    
    CDSetViewModel *viewModel2 = [[CDSetViewModel alloc] init];
       viewModel2.title = NSLocalizedString(@"设置习惯", nil);
       [self.CDviewDataArray addObject:viewModel2];
    
    CDSetViewModel *viewModel5 = [[CDSetViewModel alloc] init];
    viewModel5.title = NSLocalizedString(@"退出", nil);
    [self.CDviewDataArray addObject:viewModel5];
    
    [self.view addSubview:self.CDmainTable];
    [self.CDmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.CDviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CDSetViewModel *viewModel = self.CDviewDataArray[indexPath.row];
    CDSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CDSetTableViewCell" forIndexPath:indexPath];
    cell.model = viewModel;
    cell.selectionStyle = UITableViewCellSelectionStyleDefault;
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CDSetViewModel *viewModel = self.CDviewDataArray[indexPath.row];
    switch (indexPath.row) {
        case 0:
        {
            CDModifyNicknameViewController *mnnVC = [[CDModifyNicknameViewController alloc] init];
            __weak __typeof(self)weakSelf = self;
            mnnVC.CDmodifyNicknameB = ^(CDModifyNicknameViewController * _Nonnull nicknameVC) {
                viewModel.content = nicknameVC.CDnickname;
                [weakSelf.CDmainTable reloadData];
            };
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }
            break;
        case 1:
        {
            CDPasswordChangeViewController *pacVC = [[CDPasswordChangeViewController alloc] init];
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
            break;
        case 2:
            {
            CDGuideViewController *guideVC = [[CDGuideViewController alloc] init];
            guideVC.CDselectIndex = 2;
            guideVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:guideVC animated:YES];
        }
            break;
        case 3:
        {
            [AVUser logOut];
            CDLoginViewController *loginVC = [CDLoginViewController CDshareInstance];
            CDKeyWindow.rootViewController = loginVC;
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDviewDataArray{
    if (!_CDviewDataArray) {
        _CDviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CDviewDataArray;
}
- (UITableView *)CDmainTable{
    if (!_CDmainTable) {
        _CDmainTable = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _CDmainTable.backgroundColor = [UIColor cyanColor];
        _CDmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _CDmainTable.delegate = self;
        _CDmainTable.dataSource = self;
        _CDmainTable.rowHeight = UITableViewAutomaticDimension;
        _CDmainTable.estimatedRowHeight = 55.0f;
        _CDmainTable.tableHeaderView = [[UIView alloc] init];
        _CDmainTable.tableFooterView = [[UIView alloc] init];
        [_CDmainTable registerClass:[CDSetTableViewCell class] forCellReuseIdentifier:@"CDSetTableViewCell"];
    }
    return _CDmainTable;
}
@end
