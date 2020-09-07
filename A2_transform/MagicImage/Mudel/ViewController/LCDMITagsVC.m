#import "LCDMITagsVC.h"
#import "LCDMITagsCell.h"
#import "LCDMITagsModel.h"
#import "LCDMITagsDetailVC.h"
@interface LCDMITagsVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *LCDtableView;
@property (nonatomic, strong) NSMutableArray *LCDdataArray;
@end
@implementation LCDMITagsVC
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
    self.title = @"Hot Tags";
    self.LCDtableView.backgroundColor = UIColor.groupTableViewBackgroundColor;
    [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    [self LCDloadData];
}
- (void)LCDloadData{
    [MIHttpTool Post:SHTagsList parameters:@{@"pic_type":@(1),@"type":@"1"} success:^(id LCDresponseObject) {
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            [self.LCDdataArray removeAllObjects];
            for (NSInteger i = [LCDresponseObject[@"data"] count]-1; i>=0; i--) {
                NSDictionary *LCDdict = LCDresponseObject[@"data"][i];
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
    LCDMITagsCell *LCDcell = [LCDtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!LCDcell) {
        LCDcell = [[LCDMITagsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    LCDcell.LCDmodel = self.LCDdataArray[LCDindexPath.row];
    return LCDcell;
}
- (void)tableView:(UITableView *)LCDtableView didSelectRowAtIndexPath:(NSIndexPath *)LCDindexPath{
    LCDMITagsModel *LCDmodel = self.LCDdataArray[LCDindexPath.row];
    LCDMITagsDetailVC *LCDdetailVC = [[LCDMITagsDetailVC alloc] init];
    LCDdetailVC.LCDtagId = LCDmodel.id.integerValue;
    LCDdetailVC.title = LCDmodel.title;
    [self.navigationController pushViewController:LCDdetailVC animated:YES];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    return [UIView new];
}
@end
