//
//  ABSetViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABSetViewController.h"
#import "ABSetTableViewCell.h"
#import "ABSetModel.h"
#import "ABLoginViewController.h"
#import "ABModifyNicknameViewController.h"
#import "ABPasswordChangeViewController.h"
@interface ABSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)UITableView *mainTable;
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@end
@implementation ABSetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"设置", nil);
    self.view.backgroundColor = ABH_Color(15, 18, 39, 1);
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
    [self setContent];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)setContent{
    [self.viewDataArray removeAllObjects];
    ABSetModel *line1Model0 = [[ABSetModel alloc] init];
    line1Model0.type = ABSetCellTypeLine;
    [self.viewDataArray addObject:line1Model0];
    ABSetModel *nicknameModel = [[ABSetModel alloc] init];
    nicknameModel.title = NSLocalizedString(@"昵称", nil);
    nicknameModel.type = ABSetCellTypeContent;
    BmobUser *user = [BmobUser currentUser];
    if ([[user objectForKey:@"username"] length]) {
        nicknameModel.content = [user objectForKey:@"username"];
    }
    [self.viewDataArray addObject:nicknameModel];
    ABSetModel *lineModel = [[ABSetModel alloc] init];
    lineModel.type = ABSetCellTypeLine;
    [self.viewDataArray addObject:lineModel];
    
    ABSetModel *passwordModel = [[ABSetModel alloc] init];
    passwordModel.title = NSLocalizedString(@"密码修改", nil);
    passwordModel.type = ABSetCellTypeDefault;
    [self.viewDataArray addObject:passwordModel];
    
    ABSetModel *line1Model = [[ABSetModel alloc] init];
    line1Model.type = ABSetCellTypeLine;
    [self.viewDataArray addObject:line1Model];
    
    ABSetModel *loginOutModel = [[ABSetModel alloc] init];
    loginOutModel.title = NSLocalizedString(@"退出登录", nil);
    loginOutModel.type = ABSetCellTypeLoginOut;
    [self.viewDataArray addObject:loginOutModel];
    [self.mainTable reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.viewDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABSetModel *model = self.viewDataArray[indexPath.row];
    if (model.type == ABSetCellTypeLine) {
        return 10;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ABSetModel *model = self.viewDataArray[indexPath.row];
    if (model.type == ABSetCellTypeLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = ABH_Color(21, 23, 45, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        ABSetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ABSetTableViewCell" forIndexPath:indexPath];
        cell.model = model;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ABSetModel *model = self.viewDataArray[indexPath.row];
    if (model.type == ABSetCellTypeLine) {
        
    }else if(model.type == ABSetCellTypeLoginOut){
        [BmobUser logout];
        ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
        UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
        [[UIApplication sharedApplication].delegate window].rootViewController = loginVCNav;
    }else{
        if ([model.title isEqualToString:NSLocalizedString(@"昵称", nil)]) {
            ABModifyNicknameViewController *mnnVC = [[ABModifyNicknameViewController alloc] init];
            mnnVC.model = model;
            mnnVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mnnVC animated:YES];
        }else if ([model.title isEqualToString:NSLocalizedString(@"密码修改", nil)]) {
            ABPasswordChangeViewController *pacVC = [[ABPasswordChangeViewController alloc] init];
            pacVC.model = model;
            pacVC.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:pacVC animated:YES];
        }
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
        _mainTable = [[UITableView alloc] init];
        _mainTable.backgroundColor = ABH_Color(21, 23, 45, 1);
        _mainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        _mainTable.rowHeight = UITableViewAutomaticDimension;
        _mainTable.estimatedRowHeight = 55.0f;
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
        [_mainTable registerClass:[ABSetTableViewCell class] forCellReuseIdentifier:@"ABSetTableViewCell"];
        [_mainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [self.view addSubview:_mainTable];
        [_mainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
        }];
    }
    return _mainTable;
}
@end
