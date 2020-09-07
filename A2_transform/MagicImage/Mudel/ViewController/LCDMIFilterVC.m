#import "LCDMIFilterVC.h"
#import "LCDMIFilterCell.h"
#import "LCDMIHomeModel.h"
#import "LCDMIFilterDetailVC.h"
@interface LCDMIFilterVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@end
@implementation LCDMIFilterVC
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
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 64);
    [self LCDloadData];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!self.LCDdataArray.count) {
        [self LCDloadData];
    }
}
- (void)LCDloadData{
    [MIHttpTool Post:PicList parameters:@{@"pic_type":@(1),@"type":@(1)} success:^(id LCDresponseObject) {
        NSLog(@"LCDresponseObject:%@",LCDresponseObject);
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            for (NSInteger i = 0; i<[LCDresponseObject[@"data"] count]; i++) {
                NSDictionary *LCDdict = LCDresponseObject[@"data"][i];
                LCDMIHomeModel *LCDmodel = [LCDMIHomeModel mj_objectWithKeyValues:LCDdict];
               [self.LCDdataArray addObject:LCDmodel];
            }
        }
        [self.LCDtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)LCDtableView cellForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMIFilterCell *LCDcell  = [LCDtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!LCDcell) {
        LCDcell = [[LCDMIFilterCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    LCDcell.LCDmodel = self.LCDdataArray[LCDindexPath.row];
    return LCDcell;
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    return ScreenHeight/2-110;
}
- (void)tableView:(UITableView *)LCDtableView didSelectRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMIFilterDetailVC *LCDfilterVC = [[LCDMIFilterDetailVC alloc] init];
    LCDMIHomeModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
    LCDfilterVC.LCDmodel = LCDmodel;
    LCDfilterVC.LCDpid = LCDmodel.id;
    [self.navigationController pushViewController:LCDfilterVC animated:YES];
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForHeaderInSection:(NSInteger)LCDsection{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForHeaderInSection:(NSInteger)LCDsection{
    return [UIView new];
}
- (CGFloat)tableView:(UITableView *)LCDtableView heightForFooterInSection:(NSInteger)LCDsection{
    return 10;
}
- (UIView *)tableView:(UITableView *)LCDtableView viewForFooterInSection:(NSInteger)LCDsection{
    return [UIView new];
}
- (void)slideMenuController:(LCDMISlideVC *)LCDslideMenuController didViewDidLoad:(NSInteger)LCDindex{
}
@end
