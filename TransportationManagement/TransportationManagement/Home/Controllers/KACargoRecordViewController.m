//
//  KACargoRecordViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoRecordViewController.h"
#import "KACargoAddViewController.h"
#import "KACargoModel.h"
#import "KACargoAddViewModel.h"
#import "KACargoRecordSuperTableViewCell.h"
@interface KACargoRecordViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, strong)NSMutableArray *KADataArray;//页面数据
@property(nonatomic, strong)UIButton *KAaddButton;
@end

@implementation KACargoRecordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.type == KACargoTypeWaitReceiving) {
        self.title = @"待接货";
    }else if (self.type == KACargoTypeWaitLoading){
        self.title = @"待装载";
    }else if (self.type == KACargoTypeWaitDelivery){
        self.title = @"待送达";
    }else{
        self.title = @"已完成";
    }
    [self.KAmainTable.mj_header beginRefreshing];
}
- (void)KALoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery;
    if (self.type == KACargoTypeWaitReceiving) {
        bquery = [AVQuery queryWithClassName:@"KACargoRecordWaitReceiving"];
    }else if (self.type == KACargoTypeWaitLoading){
       bquery = [AVQuery queryWithClassName:@"KACargoRecordWaitLoading"];
    }else if (self.type == KACargoTypeWaitDelivery){
        bquery = [AVQuery queryWithClassName:@"KACargoRecordWaitDelivery"];
    }else{
        bquery = [AVQuery queryWithClassName:@"KACargoRecordCompleted"];
    }
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
                       KACargoModel *KAmodel = [[KACargoModel alloc] init];
                       KAmodel.KAobjectId = [obj objectId];
                       KAmodel.KADate = [obj objectForKey:@"KADate"];
                       KAmodel.KAPlace = [obj objectForKey:@"KAPlace"];
                       KAmodel.KACustomerName = [obj objectForKey:@"KACustomerName"];
                       KAmodel.KACommodityName = [obj objectForKey:@"KACommodityName"];
                       KAmodel.KATransportPrice = [[obj objectForKey:@"KATransportPrice"] floatValue];
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
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 237;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KADataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KACargoModel *KAModel = self.KADataArray[indexPath.row];
    KACargoRecordSuperTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KACargoRecordSuperTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.KAmodel = KAModel;
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
    KACargoModel *KAModel = self.KADataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.KADataArray removeObjectAtIndex:indexPath.row];
       [self KADeleteData:KAModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - actions
- (void)KADeleteData:(KACargoModel *)model{
    AVObject *diary;
    if (self.type == KACargoTypeWaitReceiving) {
        diary = [AVObject objectWithClassName:@"KACargoRecordWaitReceiving" objectId:model.KAobjectId];
    }else if (self.type == KACargoTypeWaitLoading){
       diary = [AVObject objectWithClassName:@"KACargoRecordWaitLoading" objectId:model.KAobjectId];
    }else if (self.type == KACargoTypeWaitDelivery){
        diary = [AVObject objectWithClassName:@"KACargoRecordWaitDelivery" objectId:model.KAobjectId];
    }else{
        diary = [AVObject objectWithClassName:@"KACargoRecordCompleted" objectId:model.KAobjectId];
    }
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
- (void)KA_setupNavigationItems{
    [super KA_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.KAaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
- (void)KAaddAction:(UIButton *)sender{
    KACargoAddViewController *KAaddVC = [[KACargoAddViewController alloc] init];
    KAaddVC.type = self.type;
    [self.navigationController pushViewController:KAaddVC animated:YES];
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
        [_KAmainTable registerClass:[KACargoRecordSuperTableViewCell class] forCellReuseIdentifier:@"KACargoRecordSuperTableViewCell"];
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
