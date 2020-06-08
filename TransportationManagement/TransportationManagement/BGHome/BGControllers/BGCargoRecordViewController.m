//
//  BGCargoRecordViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGCargoRecordViewController.h"
#import "BGCargoAddViewController.h"
#import "BGCargoModel.h"
#import "BGCargoAddViewModel.h"
#import "BGCargoRecordSuperTableViewCell.h"
@interface BGCargoRecordViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)NSMutableArray *BGDataArray;//页面数据
@property(nonatomic, strong)UIButton *BGaddButton;
@end

@implementation BGCargoRecordViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (self.type == BGCargoTypeWaitReceiving) {
        self.title = @"待接货";
    }else if (self.type == BGCargoTypeWaitLoading){
        self.title = @"待装载";
    }else if (self.type == BGCargoTypeWaitDelivery){
        self.title = @"待送达";
    }else{
        self.title = @"已完成";
    }
    [self.BGmainTable.mj_header beginRefreshing];
}
- (void)BGLoadData{
    AVUser *author = [AVUser currentUser];
     AVQuery *bquery;
    if (self.type == BGCargoTypeWaitReceiving) {
        bquery = [AVQuery queryWithClassName:@"BGCargoRecordWaitReceiving"];
    }else if (self.type == BGCargoTypeWaitLoading){
       bquery = [AVQuery queryWithClassName:@"BGCargoRecordWaitLoading"];
    }else if (self.type == BGCargoTypeWaitDelivery){
        bquery = [AVQuery queryWithClassName:@"BGCargoRecordWaitDelivery"];
    }else{
        bquery = [AVQuery queryWithClassName:@"BGCargoRecordCompleted"];
    }
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
                       BGCargoModel *BGmodel = [[BGCargoModel alloc] init];
                       BGmodel.BGobjectId = [obj objectId];
                       BGmodel.BGDate = [obj objectForKey:@"BGDate"];
                       BGmodel.BGPlace = [obj objectForKey:@"BGPlace"];
                       BGmodel.BGCustomerName = [obj objectForKey:@"BGCustomerName"];
                       BGmodel.BGCommodityName = [obj objectForKey:@"BGCommodityName"];
                       BGmodel.BGTransportPrice = [[obj objectForKey:@"BGTransportPrice"] floatValue];
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
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 237;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BGDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGCargoModel *BGModel = self.BGDataArray[indexPath.row];
    BGCargoRecordSuperTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGCargoRecordSuperTableViewCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.BGmodel = BGModel;
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
    BGCargoModel *BGModel = self.BGDataArray[indexPath.row];
    if(editingStyle == UITableViewCellEditingStyleDelete){
       [self.BGDataArray removeObjectAtIndex:indexPath.row];
       [self BGDeleteData:BGModel];
       [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}
#pragma mark - actions
- (void)BGDeleteData:(BGCargoModel *)model{
    AVObject *diary;
    if (self.type == BGCargoTypeWaitReceiving) {
        diary = [AVObject objectWithClassName:@"BGCargoRecordWaitReceiving" objectId:model.BGobjectId];
    }else if (self.type == BGCargoTypeWaitLoading){
       diary = [AVObject objectWithClassName:@"BGCargoRecordWaitLoading" objectId:model.BGobjectId];
    }else if (self.type == BGCargoTypeWaitDelivery){
        diary = [AVObject objectWithClassName:@"BGCargoRecordWaitDelivery" objectId:model.BGobjectId];
    }else{
        diary = [AVObject objectWithClassName:@"BGCargoRecordCompleted" objectId:model.BGobjectId];
    }
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
- (void)BG_setupNavigationItems{
    [super BG_setupNavigationItems];
    UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithCustomView:self.BGaddButton];
    self.navigationItem.rightBarButtonItem = addItem;
}
- (void)BGaddAction:(UIButton *)sender{
    BGCargoAddViewController *BGaddVC = [[BGCargoAddViewController alloc] init];
    BGaddVC.BGsuperVC = self;
    BGaddVC.type = self.type;
    [self.navigationController pushViewController:BGaddVC animated:YES];
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
        _BGmainTable.backgroundColor = BGH_Color(242, 242, 242, 1);
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 48.0f;
        _BGmainTable.dataSource = self;
        _BGmainTable.delegate = self;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BGmainTable registerClass:[BGCargoRecordSuperTableViewCell class] forCellReuseIdentifier:@"BGCargoRecordSuperTableViewCell"];
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
