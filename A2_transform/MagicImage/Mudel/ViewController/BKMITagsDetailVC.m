#import "BKMITagsDetailVC.h"
#import "BKMITagsModel.h"
#import "BKMITagsDetailCell.h"
@interface BKMITagsDetailVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@end
@implementation BKMITagsDetailVC
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
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    [self BKloadTagDetail];
}
- (void)BKloadTagDetail{
    NSLog(@"parent_id:%ld",self.BKtagId);
    [MIHttpTool Post:TagsList parameters:@{@"pic_type":@(1),@"parent_id":@(self.BKtagId),@"type":@"1"} success:^(id BKresponseObject) {
        NSLog(@"BKresponseObject:%@",BKresponseObject);
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            for (NSDictionary *BKdict in BKresponseObject[@"data"]) {
                BKMITagsModel *BKmodel = [BKMITagsModel mj_objectWithKeyValues:BKdict];
                [self.BKdataArray addObject:BKmodel];
            }
        }
        [self.BKtableView reloadData];
    } failure:^(NSError *error) {
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)BKtableView cellForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMITagsDetailCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!BKcell) {
        BKcell = [[BKMITagsDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    BKMITagsModel *BKmodel = self.BKdataArray[BKindexPath.row];
    BKcell.BKmodel = BKmodel;
    BKcell.block = ^(NSInteger tag) {
        if (tag == 0) {
            [MBProgressHUD showTipMessageInWindow:@"Successful copy"];
            UIPasteboard *BKpasteboard = [UIPasteboard generalPasteboard];
            BKpasteboard.string = BKmodel.content;
        }else{
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Instagram://"]];
        }
    };
    return BKcell;
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMITagsModel *BKmodel = self.BKdataArray[BKindexPath.row];
    return [self.BKtableView cellHeightForIndexPath:BKindexPath model:BKmodel keyPath:@"model" cellClass:[BKMITagsDetailCell class] contentViewWidth:ScreenWidth];
}
- (CGFloat)tableView:(UITableView *)BKtableView heightForHeaderInSection:(NSInteger)BKsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)BKtableView viewForHeaderInSection:(NSInteger)BKsection{
    return [UIView new];
}
@end
