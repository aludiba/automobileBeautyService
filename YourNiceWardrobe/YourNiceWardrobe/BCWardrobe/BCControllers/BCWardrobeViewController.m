//
//  BCWardrobeViewController.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/4/25.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCWardrobeViewController.h"
#import "BCWardrobeAddViewController.h"
#import "BCWardrobeTableViewCell.h"
#import "BCLoginViewController.h"
#import "BCWardrobeModel.h"
@interface BCWardrobeViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BCDataArray;
@property(nonatomic, strong)UIView *BCBackView;
@property(nonatomic, strong)UIImageView *BCcoatImgView;//外套
@property(nonatomic, strong)UIButton *BCaddButton;
@end

@implementation BCWardrobeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"衣柜";
    [self BCsetcontentView];
}
- (void)BC_setupNavigationItems{
    [super BC_setupNavigationItems];
    UIBarButtonItem *BCaddItem = [[UIBarButtonItem alloc] initWithCustomView:self.BCaddButton];
    self.navigationItem.rightBarButtonItem = BCaddItem;
}
- (void)BCsetcontentView{
    self.view.backgroundColor = BCH_Color(242, 242, 242, 1);
    [self.view addSubview:self.BCBackView];
    [self.BCBackView mas_makeConstraints:^(MASConstraintMaker *make) {
       make.top.equalTo(self.view).offset(BCHeightNavBar);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(140);
    }];
    [self.BCBackView addSubview:self.BCcoatImgView];
    [self.BCcoatImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCBackView).offset(20);
        make.centerX.equalTo(self.BCBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.BCmainTable.mj_header beginRefreshing];
}
#pragma mark - actions
- (void)BCLoadData{
    AVUser *BCauthor = [AVUser currentUser];
    AVQuery *BCbquery = [AVQuery queryWithClassName:@"BCWardrobe"];
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
                       BCWardrobeModel *BCmodel = [[BCWardrobeModel alloc] init];
                       BCmodel.BCobjectId = [BCobj objectId];
                       BCmodel.BCtypes = [BCobj objectForKey:@"BCtypes"];
                       BCmodel.BCnumber = [BCobj objectForKey:@"BCnumber"];
                       BCmodel.BCstorage = [BCobj objectForKey:@"BCstorage"];
                       BCmodel.BCpurchasetime = [BCobj objectForKey:@"BCpurchasetime"];
                       BCmodel.BCpurchasetime = [BCobj objectForKey:@"BCpurchasetime"];
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
- (void)BCDeleteData:(BCWardrobeModel *)BCmodel{
    AVObject *BCdiary = [AVObject objectWithClassName:@"BCWardrobe" objectId:BCmodel.BCobjectId];
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
        BCWardrobeAddViewController *BCaddVC = [[BCWardrobeAddViewController alloc] init];
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
    BCWardrobeModel *BCmodel = self.BCDataArray[indexPath.row];
    BCWardrobeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BCWardrobeTableViewCell" forIndexPath:indexPath];
    cell.BCWardrobemodel = BCmodel;
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
    BCWardrobeModel *BCmodel = self.BCDataArray[indexPath.row];
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
- (UIImageView *)BCcoatImgView{
    if (!_BCcoatImgView) {
        _BCcoatImgView = [[UIImageView alloc] init];
        _BCcoatImgView.image = [UIImage imageNamed:@"coat"];
    }
    return _BCcoatImgView;
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
        [_BCmainTable registerClass:[BCWardrobeTableViewCell class] forCellReuseIdentifier:@"BCWardrobeTableViewCell"];
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
