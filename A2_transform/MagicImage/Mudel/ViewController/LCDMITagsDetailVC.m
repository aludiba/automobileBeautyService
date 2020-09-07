#import "LCDMITagsDetailVC.h"
#import "LCDMITagsModel.h"
#import "LCDMITagsDetailCell.h"
@interface LCDMITagsDetailVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@end
@implementation LCDMITagsDetailVC
- (UITableView *)LCDtableView{
    if (!_LCDtableView) {
        _LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStyleGrouped];
        _LCDtableView.delegate = self;
        _LCDtableView.dataSource = self;
        _LCDtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _LCDtableView;
}
- (NSMutableArray *)LCDdataArray{
    if (!_LCDdataArray) {
        _LCDdataArray = @[].mutableCopy;
    }
    return _LCDdataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    [self LCDloadTagDetail];
}
- (void)LCDloadTagDetail{
    NSLog(@"parent_id:%ld",self.LCDtagId);
    [MIHttpTool Post:TagsList parameters:@{@"pic_type":@(1),@"parent_id":@(self.LCDtagId),@"type":@"1"} success:^(id LCDresponseObject) {
        NSLog(@"LCDresponseObject:%@",LCDresponseObject);
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            for (NSDictionary *LCDdict in LCDresponseObject[@"data"]) {
                LCDMITagsModel *LCDmodel = [LCDMITagsModel mj_objectWithKeyValues:LCDdict];
                [self.LCDdataArray addObject:LCDmodel];
            }
        }
        [self.LCDtableView reloadData];
    } failure:^(NSError *error) {
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)LCDtableView cellForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMITagsDetailCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!LCDcell) {
        LCDcell = [[LCDMITagsDetailCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    LCDMITagsModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
    LCDcell.LCDmodel = LCDmodel;
    LCDcell.block = ^(NSInteger tag) {
        if (tag == 0) {
            [MBProgressHUD showTipMessageInWindow:@"Successful copy"];
            UIPasteboard *LCDpasteboard = [UIPasteboard generalPasteboard];
            LCDpasteboard.string = LCDmodel.content;
        }else{
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"Instagram://"]];
        }
    };
    return LCDcell;
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMITagsModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
    return [self.LCDtableView cellHeightForIndexPath:LCDindexPath model:LCDmodel keyPath:@"model" cellClass:[LCDMITagsDetailCell class] contentViewWidth:ScreenWidth];
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForHeaderInSection:(NSInteger)LCDsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForHeaderInSection:(NSInteger)LCDsection{
    return [UIView new];
}
@end
