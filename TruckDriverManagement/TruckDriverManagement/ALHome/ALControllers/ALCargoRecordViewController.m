//
//  ALCargoRecordViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALCargoRecordViewController.h"
#import "ALCargoAddViewController.h"
#import "ALCargoModel.h"
#import "ALCargoAddViewModel.h"
#import "ALCargoRecordSuperTableViewCell.h"
@interface ALCargoRecordViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *ALDataArray;//页面数据
@property(nonatomic, strong)UIButton *ALaddButton;
@end

@implementation ALCargoRecordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.type == ALCargoTypeWaitReceiving) {
        self.title = @"待接货";
    }else if (self.type == ALCargoTypeWaitLoading){
        self.title = @"待装载";
    }else if (self.type == ALCargoTypeWaitDelivery){
        self.title = @"待送达";
    }else{
        self.title = @"已完成";
    }
    [self.ALmainTable.mj_header beginRefreshing];
}
- (void)ALLoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery;
    if (self.type == ALCargoTypeWaitReceiving) {
        bquery = [AVQuery queryWithClassName:@"ALCargoRecordWaitReceiving"];
    }else if (self.type == ALCargoTypeWaitLoading){
       bquery = [AVQuery queryWithClassName:@"ALCargoRecordWaitLoading"];
    }else if (self.type == ALCargoTypeWaitDelivery){
        bquery = [AVQuery queryWithClassName:@"ALCargoRecordWaitDelivery"];
    }else{
        bquery = [AVQuery queryWithClassName:@"ALCargoRecordCompleted"];
    }
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
                       ALCargoModel *ALmodel = [[ALCargoModel alloc] init];
                       ALmodel.ALobjectId = [obj objectId];
                       ALmodel.ALDate = [obj objectForKey:@"ALDate"];
                       ALmodel.ALPlace = [obj objectForKey:@"ALPlace"];
                       ALmodel.ALCustomerName = [obj objectForKey:@"ALCustomerName"];
                       ALmodel.ALCommodityName = [obj objectForKey:@"ALCommodityName"];
                       ALmodel.ALTransportPrice = [[obj objectForKey:@"ALTransportPrice"] floatValue];
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
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 237;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ALDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALCargoModel *ALModel = self.ALDataArray[indexPath.row];
    ALCargoRecordSuperTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ALCargoRecordSuperTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.ALmodel = ALModel;
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
    ALCargoModel *ALModel = self.ALDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.ALDataArray removeObjectAtIndex:indexPath.row];
       [self ALDeleteData:ALModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - actions
- (void)ALDeleteData:(ALCargoModel *)model{
    AVObject *diary;
    if (self.type == ALCargoTypeWaitReceiving) {
        diary = [AVObject objectWithClassName:@"ALCargoRecordWaitReceiving" objectId:model.ALobjectId];
    }else if (self.type == ALCargoTypeWaitLoading){
       diary = [AVObject objectWithClassName:@"ALCargoRecordWaitLoading" objectId:model.ALobjectId];
    }else if (self.type == ALCargoTypeWaitDelivery){
        diary = [AVObject objectWithClassName:@"ALCargoRecordWaitDelivery" objectId:model.ALobjectId];
    }else{
        diary = [AVObject objectWithClassName:@"ALCargoRecordCompleted" objectId:model.ALobjectId];
    }
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
- (void)AL_setupNavigationItems{
    [super AL_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.ALaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
- (void)ALaddAction:(UIButton *)sender{
    ALCargoAddViewController *ALaddVC = [[ALCargoAddViewController alloc] init];
    ALaddVC.ALsuperVC = self;
    ALaddVC.type = self.type;
    [self.navigationController pushViewController:ALaddVC animated:YES];
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
        [_ALmainTable registerClass:[ALCargoRecordSuperTableViewCell class] forCellReuseIdentifier:@"ALCargoRecordSuperTableViewCell"];
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
