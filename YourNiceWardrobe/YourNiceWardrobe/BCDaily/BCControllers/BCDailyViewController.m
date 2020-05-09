//
//  BCDailyViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCDailyViewController.h"
#import "BCLoginViewController.h"
#import "BCDailyAddViewController.h"
#import "BCDailyTableViewCell.h"
#import "BCDailyModel.h"

@interface BCDailyViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BCDataArray;
@property(nonatomic, strong)UIView *BCBackView;
@property(nonatomic, strong)UIImageView *BCdailyImgView;//日常
@property(nonatomic, strong)UIButton *BCaddButton;
@end

@implementation BCDailyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"日常";
    [self.BCmainTable.mj_header beginRefreshing];
}
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.BCaddButton];
    self.navigationItem.rightBarButtonItem = BCaddItem;
}
#pragma mark - actions
- (void)BCLoadData{
    AVUser *BCauthor = [AVUser currentUser];
    AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCDaily"];
    [BCbquery whereKey:@"author" equalTo:BCauthor];
    __weak typeof(self) weakSelf = self;
    [self.BCDataArray removeAllObjects];
    [BCbquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [weakSelf.BCmainTable.mj_header endRefreshing];
                   [MBProgressHUD BCshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *BCobj = array[i];
                       BCDailyModel *BCmodel = [[BCDailyModel alloc] init];
                       BCmodel.BCobjectId = [BCobj objectId];
                       BCmodel.BCDate = [BCobj objectForKey:@"BCDate"];
                       BCmodel.BCContent = [BCobj objectForKey:@"BCContent"];
                       [self.BCDataArray addObject:BCmodel];
                   }
                    [weakSelf.BCmainTable.mj_header endRefreshing];
                    [weakSelf.BCmainTable reloadData];
                   }else{
                       [weakSelf.BCmainTable.mj_header endRefreshing];
                       [MBProgressHUD BCshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)BCDeleteData:(BCDailyModel *)BCmodel{
    AVObject *BCdiary = [AVObject objectWithClassName:@"BCDaily" objectId:BCmodel.BCobjectId];
    __weak typeof(self) weakSelf = self;
    [BCdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD BCshowReminderText:@"删除成功"];
        [weakSelf.BCDataArray removeObject:BCmodel];
    }else {
        [MBProgressHUD BCshowReminderText:@"请稍后重试"];
    }
    }];
}
- (void)BCaddAction:(UIButton *)BCsender{
    AVUser *BCUser = [AVUser currentUser];
    if (BCUser) {
        BCDailyAddViewController *BCaddVC = [[BCDailyAddViewController alloc] init];
        BCaddVC.BCsuperVC = self;
        BCaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:BCaddVC animated:YES];
    }else{
        UIAlertController *BCalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *BCcancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *BCsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BCLoginViewController *BCLoginVC = [[BCLoginViewController alloc] init];
            BCLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:BCLoginVC animated:YES completion:^{
                
            }];
        }];
        [BCalertVC addAction:BCcancelAction];
        [BCalertVC addAction:BCsureAction];
        [self presentViewController:BCalertVC animated:YES completion:nil];
    }
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BCDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BCDailyModel *BCmodel = self.BCDataArray[indexPath.row];
    BCDailyTableViewCell *BCcell = [tableView dequeueReusableCellWithIdentifier:@"BCDailyTableViewCell" forIndexPath:indexPath];
    BCcell.BCModel = BCmodel;
    BCcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return BCcell;
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
    BCDailyModel *BCmodel = self.BCDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.BCDataArray removeObjectAtIndex:indexPath.row];
        [self BCDeleteData:BCmodel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (UIView *)BCBackView{
    if (!_BCBackView) {
        _BCBackView = [[UIView alloc] init];
        _BCBackView.backgroundColor = BCH_Color(246, 246, 246, 1);
    }
    return _BCBackView;
}
- (UIImageView *)BCdailyImgView{
    if (!_BCdailyImgView) {
        _BCdailyImgView = [[UIImageView alloc] init];
        _BCdailyImgView.image = [UIImage imageNamed:@"daily"];
    }
    return _BCdailyImgView;
}
- (UIButton *)BCaddButton{
    if (!_BCaddButton) {
        _BCaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BCaddButton setImage:[UIImage imageNamed:@"BC_add"] forState:UIControlStateNormal];
        [_BCaddButton addTarget:self action:@selector(BCaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCaddButton;
}
- (NSMutableArray *)BCDataArray{
    if (!_BCDataArray) {
        _BCDataArray = [[NSMutableArray alloc] init];
    }
    return _BCDataArray;
}
- (UITableView *)BCmainTable{
    if (!_BCmainTable) {
        _BCmainTable = [[UITableView alloc] init];
        _BCmainTable.rowHeight = UITableViewAutomaticDimension;
        _BCmainTable.estimatedRowHeight = 48.0f;
        _BCmainTable.dataSource = self;
        _BCmainTable.delegate = self;
        _BCmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BCmainTable registerClass:[BCDailyTableViewCell class] forCellReuseIdentifier:@"BCDailyTableViewCell"];
        [self.view addSubview:self.BCBackView];
        [self.BCBackView mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.view).offset(BCHeightNavBar);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.height.mas_equalTo(140);
        }];
        [self.BCBackView addSubview:self.BCdailyImgView];
        [self.BCdailyImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCBackView).offset(20);
            make.centerX.equalTo(self.BCBackView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(100);
        }];
        [self.view addSubview:_BCmainTable];
        [_BCmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BCBackView.mas_bottom);

            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-BCHeightTabBar);
        }];
        _BCmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(BCLoadData)];
    }
    return _BCmainTable;
}
@end
