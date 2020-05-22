//
//  EBColleaguesViewController.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/9.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBColleaguesViewController.h"
#import "EBLoginViewController.h"
#import "EBColleaguesAddViewController.h"
#import "EBColleaguesTableViewCell.h"
#import "EBColleaguesModel.h"
@interface EBColleaguesViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *EBDataArray;
@property(nonatomic, strong)UIView *EBBackView;
@property(nonatomic, strong)UIImageView *EBColleaguesImgView;//产品信息
@property(nonatomic, strong)UIButton *EBaddButton;
@end

@implementation EBColleaguesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"同事们", nil);
    [self EBsetcontentView];
}
- (void)EB_setupNavigationItems{
    [super EB_setupNavigationItems];
    UIBarButtonItem *EBaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.EBaddButton];
    self.navigationItem.rightBarButtonItem = EBaddItem;
}
- (void)EBsetcontentView{
    [self.view addSubview:self.EBBackView];
    [self.EBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(EBHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(200);
    }];
    [self.EBBackView addSubview:self.EBColleaguesImgView];
    [self.EBColleaguesImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBBackView).offset(12.5);
        make.centerX.equalTo(self.EBBackView);
        make.width.mas_equalTo(275);
        make.height.mas_equalTo(175);
    }];
    [self.EBmainTable.mj_header beginRefreshing];
}
#pragma mark - actions
- (void)EBaddAction:(UIButton *)EBsender{
    AVUser *EBUser = [AVUser currentUser];
    if (EBUser) {
        EBColleaguesAddViewController *EBaddVC = [[EBColleaguesAddViewController alloc] init];
        EBaddVC.EBsuperVC = self;
        EBaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:EBaddVC animated:YES];
    }else{
        UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            EBLoginViewController *EBLoginVC = [[EBLoginViewController alloc] init];
            EBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:EBLoginVC animated:YES completion:^{
                
            }];
        }];
        [EBalertVC addAction:EEBancelAction];
        [EBalertVC addAction:EBsureAction];
        [self presentViewController:EBalertVC animated:YES completion:nil];
    }
}
- (void)EBLoadData{
    AVUser *EBauthor = [AVUser currentUser];
    AVQuery *EBbquery = [AVQuery queryWithClassName:@"EBColleagues"];
    [EBbquery whereKey:@"author" equalTo:EBauthor];
    __weak typeof(self) weakSelf = self;
    [self.EBDataArray removeAllObjects];
    [EBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.EBmainTable.mj_header endRefreshing];
                   [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *EBobj = array[i];
                       EBColleaguesModel *EBmodel = [[EBColleaguesModel alloc] init];
                       EBmodel.EBobjectId = [EBobj objectId];
                       EBmodel.EBname = [EBobj objectForKey:@"EBname"];
                       EBmodel.EBposition = [EBobj objectForKey:@"EBposition"];
                       EBmodel.EBwage = [EBobj objectForKey:@"EBwage"];
                       EBmodel.EBentrytime = [EBobj objectForKey:@"EBentrytime"];
                       [self.EBDataArray addObject:EBmodel];
                   }
                    [weakSelf.EBmainTable.mj_header endRefreshing];
                    [weakSelf.EBmainTable reloadData];
                   }else{
                       [weakSelf.EBmainTable.mj_header endRefreshing];
                       [MBProgressHUD EBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                   }
              }
           }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.EBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    EBColleaguesModel *EBmodel = self.EBDataArray[indexPath.row];
    EBColleaguesTableViewCell *EBcell = [tableView dequeueReusableCellWithIdentifier:@"EBColleaguesTableViewCell" forIndexPath:indexPath];
    EBcell.EBsuperVC = self;
    __weak typeof(self) weakSelf = self;
    EBcell.EBeditBlock = ^(EBColleaguesTableViewCell * _Nonnull cell) {
        __weak typeof(self) strongSelf = weakSelf;
        [strongSelf.EBDataArray removeObject:EBmodel];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    };
    EBcell.EBColleaguesmodel = EBmodel;
    EBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return EBcell;
}
#pragma mark - 属性懒加载
- (UIButton *)EBaddButton{
    if (!_EBaddButton) {
        _EBaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_EBaddButton setImage:[UIImage imageNamed:@"EB_add"] forState:UIControlStateNormal];
        [_EBaddButton addTarget:self action:@selector(EBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBaddButton;
}
- (UIView *)EBBackView{
    if (!_EBBackView) {
        _EBBackView = [[UIView alloc] init];
    }
    return _EBBackView;
}
- (UIImageView *)EBColleaguesImgView{
    if (!_EBColleaguesImgView) {
        _EBColleaguesImgView = [[UIImageView alloc] init];
        _EBColleaguesImgView.image = [UIImage imageNamed:@"EBColleagues"];
    }
    return _EBColleaguesImgView;
}
- (NSMutableArray *)EBDataArray{
    if (!_EBDataArray) {
        _EBDataArray = [[NSMutableArray alloc] init];
    }
    return _EBDataArray;
}
- (UITableView *)EBmainTable{
    if (!_EBmainTable) {
        _EBmainTable = [[UITableView alloc] init];
        _EBmainTable.rowHeight = UITableViewAutomaticDimension;
        _EBmainTable.estimatedRowHeight = 48.0f;
        _EBmainTable.dataSource = self;
        _EBmainTable.delegate = self;
        _EBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_EBmainTable registerClass:[EBColleaguesTableViewCell class] forCellReuseIdentifier:@"EBColleaguesTableViewCell"];
        [self.view addSubview:_EBmainTable];
        [_EBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBBackView.mas_bottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-EBHeightTabBar);
        }];
        _EBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(EBLoadData)];
    }
    return _EBmainTable;
}
@end
