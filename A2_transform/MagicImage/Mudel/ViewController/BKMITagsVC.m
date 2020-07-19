#import "BKMITagsVC.h"
#import "BKMITagsCell.h"
#import "BKMITagsModel.h"
#import "BKMITagsDetailVC.h"
@interface BKMITagsVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *BKtableView;
@property (nonatomic, strong) NSMutableArray *BKdataArray;
@end
@implementation BKMITagsVC
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
    self.title = @"Hot Tags";
    self.BKtableView.backgroundColor = UIColor.groupTableViewBackgroundColor;
    [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, 0);
    [self BKloadData];
}
- (void)BKloadData{
    [MIHttpTool Post:SHTagsList parameters:@{@"pic_type":@(1),@"type":@"1"} success:^(id BKresponseObject) {
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            [self.BKdataArray removeAllObjects];
            for (NSInteger i = [BKresponseObject[@"data"] count]-1; i>=0; i--) {
                NSDictionary *BKdict = BKresponseObject[@"data"][i];
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
    BKMITagsCell *BKcell = [BKtableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!BKcell) {
        BKcell = [[BKMITagsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    BKcell.BKmodel = self.BKdataArray[BKindexPath.row];
    return BKcell;
}
- (void)tableView:(UITableView *)BKtableView didSelectRowAtIndexPath:(NSIndexPath *)BKindexPath{
    BKMITagsModel *BKmodel = self.BKdataArray[BKindexPath.row];
    BKMITagsDetailVC *BKdetailVC = [[BKMITagsDetailVC alloc] init];
    BKdetailVC.BKtagId = BKmodel.id.integerValue;
    BKdetailVC.title = BKmodel.title;
    [self.navigationController pushViewController:BKdetailVC animated:YES];
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
