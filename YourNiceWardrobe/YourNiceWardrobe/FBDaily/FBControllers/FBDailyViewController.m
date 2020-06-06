//
//  FBDailyViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDailyViewController.h"
#import "FBLoginViewController.h"
#import "FBDailyAddViewController.h"
#import "FBDailyTableViewCell.h"
#import "FBDailyModel.h"

@interface FBDailyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *FBDataArray;
@property(nonatomic, strong)UIView *FBBackView;
@property(nonatomic, strong)UIImageView *FBdailyImgView;//日常
@property(nonatomic, strong)UIButton *FBaddButton;
@end

@implementation FBDailyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"日常", nil);
    self.view.backgroundColor = [UIColor cyanColor];
    [self.FBmainTable.mj_header beginRefreshing];
}
- (void)FB_setupNavigationItems{
    [super FB_setupNavigationItems];
    UIBarButtonItem *FBaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.FBaddButton];
    self.navigationItem.rightBarButtonItem = FBaddItem;
}
#pragma mark - actions
- (void)FBLoadData{
    AVUser *FBauthor = [AVUser currentUser];
    AVQuery *FBbquery = [AVQuery queryWithClassName:@"FBDaily"];
    [FBbquery whereKey:@"author" equalTo:FBauthor];
    __weak typeof(self) weakSelf = self;
    [self.FBDataArray removeAllObjects];
    [FBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.FBmainTable.mj_header endRefreshing];
                   [MBProgressHUD FBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *FBobj = array[i];
                       FBDailyModel *FBmodel = [[FBDailyModel alloc] init];
                       FBmodel.FBobjectId = [FBobj objectId];
                       FBmodel.FBDate = [FBobj objectForKey:@"FBDate"];
                       FBmodel.FBContent = [FBobj objectForKey:@"FBContent"];
                       [self.FBDataArray addObject:FBmodel];
                   }
                    [weakSelf.FBmainTable.mj_header endRefreshing];
                    [weakSelf.FBmainTable reloadData];
                   }else{
                       [weakSelf.FBmainTable.mj_header endRefreshing];
                       [MBProgressHUD FBshowReminderText:NSLocalizedString(@"暂无数据", nil)];
                   }
              }
           }];
}
- (void)FBDeleteData:(FBDailyModel *)FBmodel{
    AVObject *FBdiary = [AVObject objectWithClassName:@"FBDaily" objectId:FBmodel.FBobjectId];
    __weak typeof(self) weakSelf = self;
    [FBdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD FBshowReminderText:NSLocalizedString(@"删除成功", nil)];
        [weakSelf.FBDataArray removeObject:FBmodel];
    }else {
        [MBProgressHUD FBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
    }
    }];
}
- (void)FBaddAction:(UIButton *)FBsender{
    AVUser *FBUser = [AVUser currentUser];
    if (FBUser) {
        FBDailyAddViewController *FBaddVC = [[FBDailyAddViewController alloc] init];
        FBaddVC.FBsuperVC = self;
        FBaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:FBaddVC animated:YES];
    }else{
        UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *FBcancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            FBLoginViewController *FBLoginVC = [[FBLoginViewController alloc] init];
            FBLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:FBLoginVC animated:YES completion:^{
                
            }];
        }];
        [FBalertVC addAction:FBcancelAction];
        [FBalertVC addAction:FBsureAction];
        [self presentViewController:FBalertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.FBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FBDailyModel *FBmodel = self.FBDataArray[indexPath.row];
    FBDailyTableViewCell *FBcell = [tableView dequeueReusableCellWithIdentifier:@"FBDailyTableViewCell" forIndexPath:indexPath];
    FBcell.FBModel = FBmodel;
    FBcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return FBcell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
   return NSLocalizedString(@"删除", nil);
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    FBDailyModel *FBmodel = self.FBDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.FBDataArray removeObjectAtIndex:indexPath.row];
        [self FBDeleteData:FBmodel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (UIView *)FBBackView{
    if (!_FBBackView) {
        _FBBackView = [[UIView alloc] init];
        _FBBackView.backgroundColor = [UIColor cyanColor];
    }
    return _FBBackView;
}
- (UIImageView *)FBdailyImgView{
    if (!_FBdailyImgView) {
        _FBdailyImgView = [[UIImageView alloc] init];
        _FBdailyImgView.image = [UIImage imageNamed:@"FBdaily"];
    }
    return _FBdailyImgView;
}
- (UIButton *)FBaddButton{
    if (!_FBaddButton) {
        _FBaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_FBaddButton setImage:[UIImage imageNamed:@"FB_add"] forState:UIControlStateNormal];
        [_FBaddButton addTarget:self action:@selector(FBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBaddButton;
}
- (NSMutableArray *)FBDataArray{
    if (!_FBDataArray) {
        _FBDataArray = [[NSMutableArray alloc] init];
    }
    return _FBDataArray;
}
- (UITableView *)FBmainTable{
    if (!_FBmainTable) {
        _FBmainTable = [[UITableView alloc] init];
        _FBmainTable.backgroundColor = [UIColor cyanColor];
        _FBmainTable.rowHeight = UITableViewAutomaticDimension;
        _FBmainTable.estimatedRowHeight = 48.0f;
        _FBmainTable.dataSource = self;
        _FBmainTable.delegate = self;
        _FBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_FBmainTable registerClass:[FBDailyTableViewCell class] forCellReuseIdentifier:@"FBDailyTableViewCell"];
        [self.view addSubview:self.FBBackView];
        [self.FBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.view).offset(FBHeightNavBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.height.mas_equalTo(140);
        }];
        [self.FBBackView addSubview:self.FBdailyImgView];
        [self.FBdailyImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBBackView).offset(20);
            make.centerX.equalTo(self.FBBackView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
        [self.view addSubview:_FBmainTable];
        [_FBmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.FBBackView.mas_bottom);

            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-FBHeightTabBar);
        }];
        _FBmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(FBLoadData)];
    }
    return _FBmainTable;
}
@end
