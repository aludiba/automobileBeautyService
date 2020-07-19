#import "BKMIFilterVC.h"
#import "BKMIFilterCell.h"
#import "BKMIHomeModel.h"
#import "BKMIFilterDetailVC.h"
@interface BKMIFilterVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@end
@implementation BKMIFilterVC
- (UITableView *)BKtableView{
    if (!_BKtableView) {
        _BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _BKtableView.delegate = self;
        _BKtableView.dataSource = self;
        _BKtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _BKtableView;
}
- (NSMutableArray *)BKdataArray{
    if (!_BKdataArray) {
        _BKdataArray = @[].mutableCopy;
    }
    return _BKdataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 64);
    [self BKloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!self.BKdataArray.count) {
        [self BKloadData];
    }
}
- (void)BKloadData{
    [MIHttpTool Post:PicList parameters:@{@"pic_type":@(1),@"type":@(2)} success:^(id BKresponseObject) {
        NSLog(@"BKresponseObject:%@",BKresponseObject);
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            for (NSInteger i = 0; i<[BKresponseObject[@"data"] count]; i++) {
                NSDictionary *BKdict = BKresponseObject[@"data"][i];
                BKMIHomeModel *BKmodel = [BKMIHomeModel mj_objectWithKeyValues:BKdict];
               [self.BKdataArray addObject:BKmodel];
            }
        }
        [self.BKtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)BKtableView cellForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMIFilterCell *BKcell  = [BKtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!BKcell) {
        BKcell = [[BKMIFilterCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    BKcell.BKmodel = self.BKdataArray[BKindexPath.row];
    return BKcell;
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    return ScreenHeight/2-110;
}
- (void)tableView:(UITableView *)BKtableView didSelectRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMIFilterDetailVC *BKfilterVC = [[BKMIFilterDetailVC alloc] init];
    BKMIHomeModel *BKmodel = self.BKdataArray[BKindexPath.row];
    BKfilterVC.BKmodel = BKmodel;
    BKfilterVC.BKpid = BKmodel.id;
    [self.navigationController pushViewController:BKfilterVC animated:YES];
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForHeaderInSection:(NSInteger)BKsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)BKtableView viewForHeaderInSection:(NSInteger)BKsection{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForFooterInSection:(NSInteger)BKsection{
    return 10;
}
- (UIView *)tableView:(UITableView *)BKtableView viewForFooterInSection:(NSInteger)BKsection{
    return [UIView new];
}
- (void)slideMenuController:(BKMISlideVC *)BKslideMenuController didViewDidLoad:(NSInteger)BKindex{
}
@end
