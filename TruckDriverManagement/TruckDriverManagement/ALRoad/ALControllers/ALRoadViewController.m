//
//  ALRoadViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALRoadViewController.h"
#import "ALLoginViewController.h"
#import "ALRoadAddViewController.h"
#import "ALRoadModel.h"
#import "ALRoadTableViewCell.h"
@interface ALRoadViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *ALDataArray;//页面数据
@property(nonatomic, strong)UIButton *ALaddButton;
@end

@implementation ALRoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"路况延时";
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        [self.ALmainTable.mj_header beginRefreshing];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ALLoginViewController *ALLoginVC = [[ALLoginViewController alloc] init];
            ALLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:ALLoginVC animated:YES completion:^{
                   
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)AL_setupNavigationItems{
    [super AL_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.ALaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
#pragma mark - actions
- (void)ALLoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery = [AVQuery queryWithClassName:@"ALRoad"];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [self.ALDataArray removeAllObjects];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [self.ALmainTable.mj_header endRefreshing];
                   [MBProgressHUD ALshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *obj = array[i];
                       ALRoadModel *ALmodel = [[ALRoadModel alloc] init];
                       ALmodel.ALobjectId = [obj objectId];
                       ALmodel.ALDate = [obj objectForKey:@"ALDate"];
                       ALmodel.ALLicensePlateNumber = [obj objectForKey:@"ALLicensePlateNumber"];
                       ALmodel.ALDriverName = [obj objectForKey:@"ALDriverName"];
                       ALmodel.ALSituation = [obj objectForKey:@"ALSituation"];
                       ALmodel.ALPluggingLength = [[obj objectForKey:@"ALPluggingLength"] integerValue];
                       ALmodel.ALLocation = [obj objectForKey:@"ALLocation"];
                       [self.ALDataArray addObject:ALmodel];
                   }
                    [self.ALmainTable.mj_header endRefreshing];
                       [self.ALmainTable reloadData];
                   }else{
                       [self.ALmainTable.mj_header endRefreshing];
                       [MBProgressHUD ALshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)ALDeleteData:(ALRoadModel *)model{
    AVObject *diary = [AVObject objectWithClassName:@"ALRoad" objectId:model.ALobjectId];
    [diary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD ALshowReminderText:@"删除成功"];
        [self.ALDataArray removeObject:model];
    }else {
        [MBProgressHUD ALshowReminderText:@"请稍后重试"];
    }
    }];
}
- (void)ALaddAction:(UIButton *)sender{
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        ALRoadAddViewController *ALaddVC = [[ALRoadAddViewController alloc] init];
        ALaddVC.ALsuperVC = self;
        ALaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:ALaddVC animated:YES];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ALLoginViewController *ALLoginVC = [[ALLoginViewController alloc] init];
            ALLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:ALLoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ALDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALRoadModel *ALmodel = self.ALDataArray[indexPath.row];
    ALRoadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ALRoadTableViewCell" forIndexPath:indexPath];
    cell.ALRoadmodel = ALmodel;
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
    ALRoadModel *ALModel = self.ALDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.ALDataArray removeObjectAtIndex:indexPath.row];
       [self ALDeleteData:ALModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)ALDataArray{
    if (!_ALDataArray) {
        _ALDataArray = [[NSMutableArray alloc] init];
    }
    return _ALDataArray;
}
- (UIButton *)ALaddButton{
    if (!_ALaddButton) {
        _ALaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_ALaddButton setImage:[UIImage imageNamed:@"AL_add"] forState:UIControlStateNormal];
        [_ALaddButton addTarget:self action:@selector(ALaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALaddButton;
}
- (UITableView *)ALmainTable{
    if (!_ALmainTable) {
        _ALmainTable = [[UITableView alloc] init];
        _ALmainTable.backgroundColor = ALH_Color(242, 242, 242, 1);
        _ALmainTable.rowHeight = UITableViewAutomaticDimension;
        _ALmainTable.estimatedRowHeight = 48.0f;
        _ALmainTable.dataSource = self;
        _ALmainTable.delegate = self;
        _ALmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_ALmainTable registerClass:[ALRoadTableViewCell class] forCellReuseIdentifier:@"ALRoadTableViewCell"];
        [self.view addSubview:_ALmainTable];
        [_ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        _ALmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(ALLoadData)];
    }
    return _ALmainTable;
}
@end
