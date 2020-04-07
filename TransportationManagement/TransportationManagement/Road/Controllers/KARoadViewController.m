//
//  KARoadViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KARoadViewController.h"
#import "KALoginViewController.h"
#import "KARoadAddViewController.h"
#import "KARoadModel.h"
#import "KARoadTableViewCell.h"
@interface KARoadViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *KADataArray;//页面数据
@property(nonatomic, strong)UIButton *KAaddButton;
@end

@implementation KARoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"路况延时";
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        [self.KAmainTable.mj_header beginRefreshing];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            KALoginViewController *KALoginVC = [[KALoginViewController alloc] init];
            KALoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:KALoginVC animated:YES completion:^{
                   
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)KA_setupNavigationItems{
    [super KA_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.KAaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
#pragma mark - actions
- (void)KALoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery = [AVQuery queryWithClassName:@"KARoad"];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [self.KADataArray removeAllObjects];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [self.KAmainTable.mj_header endRefreshing];
                   [MBProgressHUD KAshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *obj = array[i];
                       KARoadModel *KAmodel = [[KARoadModel alloc] init];
                       KAmodel.KAobjectId = [obj objectId];
                       KAmodel.KADate = [obj objectForKey:@"KADate"];
                       KAmodel.KALicensePlateNumber = [obj objectForKey:@"KALicensePlateNumber"];
                       KAmodel.KADriverName = [obj objectForKey:@"KADriverName"];
                       KAmodel.KASituation = [obj objectForKey:@"KASituation"];
                       KAmodel.KAPluggingLength = [[obj objectForKey:@"KAPluggingLength"] integerValue];
                       KAmodel.KALocation = [obj objectForKey:@"KALocation"];
                       [self.KADataArray addObject:KAmodel];
                   }
                    [self.KAmainTable.mj_header endRefreshing];
                       [self.KAmainTable reloadData];
                   }else{
                       [self.KAmainTable.mj_header endRefreshing];
                       [MBProgressHUD KAshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)KADeleteData:(KARoadModel *)model{
    AVObject *diary = [AVObject objectWithClassName:@"KARoad" objectId:model.KAobjectId];
    [diary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD KAshowReminderText:@"删除成功"];
        [self.KADataArray removeObject:model];
    }else {
        [MBProgressHUD KAshowReminderText:@"请稍后重试"];
    }
    }];
}
- (void)KAaddAction:(UIButton *)sender{
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        KARoadAddViewController *KAaddVC = [[KARoadAddViewController alloc] init];
        KAaddVC.KAsuperVC = self;
        KAaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:KAaddVC animated:YES];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            KALoginViewController *KALoginVC = [[KALoginViewController alloc] init];
            KALoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:KALoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KADataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KARoadModel *KAmodel = self.KADataArray[indexPath.row];
    KARoadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KARoadTableViewCell" forIndexPath:indexPath];
    cell.KARoadmodel = KAmodel;
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
    KARoadModel *KAModel = self.KADataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.KADataArray removeObjectAtIndex:indexPath.row];
       [self KADeleteData:KAModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)KADataArray{
    if (!_KADataArray) {
        _KADataArray = [[NSMutableArray alloc] init];
    }
    return _KADataArray;
}
- (UIButton *)KAaddButton{
    if (!_KAaddButton) {
        _KAaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_KAaddButton setImage:[UIImage imageNamed:@"KA_add"] forState:UIControlStateNormal];
        [_KAaddButton addTarget:self action:@selector(KAaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAaddButton;
}
- (UITableView *)KAmainTable{
    if (!_KAmainTable) {
        _KAmainTable = [[UITableView alloc] init];
        _KAmainTable.backgroundColor = KAH_Color(242, 242, 242, 1);
        _KAmainTable.rowHeight = UITableViewAutomaticDimension;
        _KAmainTable.estimatedRowHeight = 48.0f;
        _KAmainTable.dataSource = self;
        _KAmainTable.delegate = self;
        _KAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_KAmainTable registerClass:[KARoadTableViewCell class] forCellReuseIdentifier:@"KARoadTableViewCell"];
        [self.view addSubview:_KAmainTable];
        [_KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        _KAmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(KALoadData)];
    }
    return _KAmainTable;
}
@end
