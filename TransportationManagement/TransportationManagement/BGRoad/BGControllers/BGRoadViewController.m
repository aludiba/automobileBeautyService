//
//  BGRoadViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGRoadViewController.h"
#import "BGLoginViewController.h"
#import "BGRoadAddViewController.h"
#import "BGRoadModel.h"
#import "BGRoadTableViewCell.h"
@interface BGRoadViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic, strong)NSMutableArray *BGDataArray;//页面数据
@property(nonatomic, strong)UIButton *BGaddButton;
@end

@implementation BGRoadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"路况延时", nil);
    self.view.backgroundColor = [UIColor cyanColor];
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        [self.BGmainTable.mj_header beginRefreshing];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BGLoginViewController *BGLoginVC = [[BGLoginViewController alloc] init];
            BGLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:BGLoginVC animated:YES completion:^{
                   
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (void)BG_setupNavigationItems{
    [super BG_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.BGaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
#pragma mark - actions
- (void)BGLoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery = [AVQuery queryWithClassName:@"BGRoad"];
    [bquery whereKey:@"author" equalTo:author];
    __weak typeof(self) weakSelf = self;
    [self.BGDataArray removeAllObjects];
    [bquery findObjectsInBackgroundWithBlock:^(NSArray *array, NSError *error) {
               if (error) {
                   [self.BGmainTable.mj_header endRefreshing];
                   [MBProgressHUD BGshowReminderText:@"请稍后重试"];
               }else{
                   if (array.count) {
                   for (int i = (int)(array.count - 1); i > -1; i--) {
                       AVObject *obj = array[i];
                       BGRoadModel *BGmodel = [[BGRoadModel alloc] init];
                       BGmodel.BGobjectId = [obj objectId];
                       BGmodel.BGDate = [obj objectForKey:@"BGDate"];
                       BGmodel.BGLicensePlateNumber = [obj objectForKey:@"BGLicensePlateNumber"];
                       BGmodel.BGDriverName = [obj objectForKey:@"BGDriverName"];
                       BGmodel.BGSituation = [obj objectForKey:@"BGSituation"];
                       BGmodel.BGPluggingLength = [[obj objectForKey:@"BGPluggingLength"] integerValue];
                       BGmodel.BGLocation = [obj objectForKey:@"BGLocation"];
                       [self.BGDataArray addObject:BGmodel];
                   }
                    [self.BGmainTable.mj_header endRefreshing];
                       [self.BGmainTable reloadData];
                   }else{
                       [self.BGmainTable.mj_header endRefreshing];
                       [MBProgressHUD BGshowReminderText:@"暂无数据"];
                   }
              }
           }];
}
- (void)BGDeleteData:(BGRoadModel *)model{
    AVObject *diary = [AVObject objectWithClassName:@"BGRoad" objectId:model.BGobjectId];
    [diary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
    if (isSuccessful) {
         //删除成功后的动作
        [MBProgressHUD BGshowReminderText:@"删除成功"];
        [self.BGDataArray removeObject:model];
    }else {
        [MBProgressHUD BGshowReminderText:@"请稍后重试"];
    }
    }];
}
- (void)BGaddAction:(UIButton *)sender{
    AVUser *bUser = [AVUser currentUser];
    if (bUser) {
        BGRoadAddViewController *BGaddVC = [[BGRoadAddViewController alloc] init];
        BGaddVC.BGsuperVC = self;
        BGaddVC.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:BGaddVC animated:YES];
    }else{
        UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            BGLoginViewController *BGLoginVC = [[BGLoginViewController alloc] init];
            BGLoginVC.modalPresentationStyle = UIModalPresentationFullScreen;
            [self presentViewController:BGLoginVC animated:YES completion:^{
                
            }];
        }];
        [alertVC addAction:cancelAction];
        [alertVC addAction:sureAction];
        [self presentViewController:alertVC animated:YES completion:nil];
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BGDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGRoadModel *BGmodel = self.BGDataArray[indexPath.row];
    BGRoadTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGRoadTableViewCell" forIndexPath:indexPath];
    cell.BGRoadmodel = BGmodel;
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
    BGRoadModel *BGModel = self.BGDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.BGDataArray removeObjectAtIndex:indexPath.row];
       [self BGDeleteData:BGModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)BGDataArray{
    if (!_BGDataArray) {
        _BGDataArray = [[NSMutableArray alloc] init];
    }
    return _BGDataArray;
}
- (UIButton *)BGaddButton{
    if (!_BGaddButton) {
        _BGaddButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 44, 44)];
        [_BGaddButton setImage:[UIImage imageNamed:@"BG_add"] forState:UIControlStateNormal];
        [_BGaddButton addTarget:self action:@selector(BGaddAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGaddButton;
}
- (UITableView *)BGmainTable{
    if (!_BGmainTable) {
        _BGmainTable = [[UITableView alloc] init];
        _BGmainTable.backgroundColor = [UIColor cyanColor];
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 48.0f;
        _BGmainTable.dataSource = self;
        _BGmainTable.delegate = self;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BGmainTable registerClass:[BGRoadTableViewCell class] forCellReuseIdentifier:@"BGRoadTableViewCell"];
        [self.view addSubview:_BGmainTable];
        [_BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
        _BGmainTable.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(BGLoadData)];
    }
    return _BGmainTable;
}
@end
