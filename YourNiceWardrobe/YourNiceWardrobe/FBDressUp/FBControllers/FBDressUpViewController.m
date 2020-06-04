//
//  FBDressUpViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBDressUpViewController.h"
#import "FBLoginViewController.h"
#import "FBDressUpAddViewController.h"
#import "FBDressUpTableViewCell.h"
#import "FBDressUpModel.h"
@interface FBDressUpViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *FBDataArray;
@property(nonatomic, strong)UIView *FBBackView;
@property(nonatomic, strong)UIImageView *FBdressUpImgView;//日常
@property(nonatomic, strong)UIButton *FBaddButton;
@end

@implementation FBDressUpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"打扮";
    [self FBsetcontentView];
}
- (void)FB_setupNavigationItems{
    [super FB_setupNavigationItems];
    UIBarButtonItem *FBaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.FBaddButton];
    self.navigationItem.rightBarButtonItem = FBaddItem;
}
- (void)FBsetcontentView{
    self.view.backgroundColor = FBH_Color(242, 242, 242, 1);
    [self.view addSubview:self.FBBackView];
    [self.FBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(FBHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(140);
    }];
    [self.FBBackView addSubview:self.FBdressUpImgView];
    [self.FBdressUpImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.FBBackView).offset(20);
        make.centerX.equalTo(self.FBBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.FBmainTable.mj_header beginRefreshing];
}
- (void)FBaddAction:(UIButton *)FBsender{
    AVUser *FBUser = [AVUser currentUser];
    if (FBUser) {
        FBDressUpAddViewController *FBaddVC = [[FBDressUpAddViewController alloc] init];
        FBaddVC.FBsuperVC = self;
        FBaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:FBaddVC animated:YES];
    }else{
        UIAlertController *FBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *FBcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *FBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
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
- (void)FBLoadData{
    AVUser *FBauthor = [AVUser currentUser];
    AVQuery *FBbquery = [AVQuery queryWithClassName:@"FBDressUp"];
    [FBbquery whereKey:@"author" equalTo:FBauthor];
    __weak typeof(self) weakSelf = self;
    [self.FBDataArray removeAllObjects];
    [FBbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.FBmainTable.mj_header endRefreshing];
                   [MBProgressHUD FBshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *FBobj = array[i];
                       FBDressUpModel *FBmodel = [[FBDressUpModel alloc] init];
                       FBmodel.FBobjectId = [FBobj objectId];
                       FBmodel.FBTitle = [FBobj objectForKey:@"FBTitle"];
                       FBmodel.FBContent = [FBobj objectForKey:@"FBContent"];
                       [self.FBDataArray addObject:FBmodel];
                   }
                    [weakSelf.FBmainTable.mj_header endRefreshing];
                    [weakSelf.FBmainTable reloadData];
                   }else{
                       [weakSelf.FBmainTable.mj_header endRefreshing];
                       [MBProgressHUD FBshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)FBDeleteData:(FBDressUpModel *)FBmodel{
    AVObject *FBdiary = [AVObject objectWithClassName:@"FBDressUp" objectId:FBmodel.FBobjectId];
    __weak typeof(self) weakSelf = self;
    [FBdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD FBshowReminderText:@"删除成功"];
        [weakSelf.FBDataArray removeObject:FBmodel];
    }else {
        [MBProgressHUD FBshowReminderText:@"请稍后重试"];
    }
    }];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.FBDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    FBDressUpModel *FBmodel = self.FBDataArray[indexPath.row];
    FBDressUpTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"FBDressUpTableViewCell" forIndexPath:indexPath];
    cell.FBdressUpModel = FBmodel;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return YES;
}
-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath{
    return UITableViewCellEditingStyleDelete;
}
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath{
   return @"删除";
}
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath{
    FBDressUpModel *FBmodel = self.FBDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.FBDataArray removeObjectAtIndex:indexPath.row];
        [self FBDeleteData:FBmodel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)FBaddButton{
    if (!_FBaddButton) {
        _FBaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_FBaddButton setImage:[UIImage imageNamed:@"FB_add"] forState:UIControlStateNormal];
        [_FBaddButton addTarget:self action:@selector(FBaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBaddButton;
}
- (UIView *)FBBackView{
    if (!_FBBackView) {
        _FBBackView = [[UIView alloc] init];
        _FBBackView.backgroundColor = FBH_Color(246, 246, 246, 1);
    }
    return _FBBackView;
}
- (UIImageView *)FBdressUpImgView{
    if (!_FBdressUpImgView) {
        _FBdressUpImgView = [[UIImageView alloc] init];
        _FBdressUpImgView.image = [UIImage imageNamed:@"dressUp"];
    }
    return _FBdressUpImgView;
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
        _FBmainTable.rowHeight = UITableViewAutomaticDimension;
        _FBmainTable.estimatedRowHeight = 48.0f;
        _FBmainTable.dataSource = self;
        _FBmainTable.delegate = self;
        _FBmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_FBmainTable registerClass:[FBDressUpTableViewCell class] forCellReuseIdentifier:@"FBDressUpTableViewCell"];
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
