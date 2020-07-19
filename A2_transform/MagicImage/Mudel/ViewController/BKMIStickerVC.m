#import "BKMIStickerVC.h"
#import "BKMIHomeSectionTowCell.h"
#import "BKMIHomeModel.h"
#import "BKMIStickerDetailVC.h"
@interface BKMIStickerVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * BKtableView;
@property (nonatomic, strong) NSMutableArray * BKdataArray;
@property (nonatomic, strong) UIImageView * BKpicImageView;
@property (nonatomic, strong) BKMIHomeModel * BKmodel;
@end
@implementation BKMIStickerVC
- (NSMutableArray *)BKdataArray{
    if (!_BKdataArray) {
        _BKdataArray = @[].mutableCopy;
    }
    return _BKdataArray;
}
- (UITableView *)BKtableView{
    if (!_BKtableView){
        _BKtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _BKtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _BKtableView.dataSource = self;
        _BKtableView.delegate = self;
    }
    return _BKtableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat bottomDistance;
    if (self.BKisFromHomeVC == YES) {
        self.title = @"Hot Stickers";
        bottomDistance = 0;
    }else{
        bottomDistance = 64;
    }
    [self.view addSubview:self.BKtableView];
    
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, bottomDistance);
    [self BKloadData];
    [NotifiCenter addObserver:self selector:@selector(BKupdatePrice) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(BKloginOut) name:@"loginOut" object:nil];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!self.BKdataArray.count) {
        [self BKloadData];
    }
}
- (void)BKupdatePrice{
    [self BKloadData];
}
- (void)BKloginOut{
    [self BKloadData];
}
- (void)BKtapAction:(UITapGestureRecognizer *)BKtap{
    BKMIStickerDetailVC *BKdetailVC = [[BKMIStickerDetailVC alloc] init];
    BKdetailVC.BKmodel = self.BKmodel;
    [self.navigationController pushViewController:BKdetailVC animated:YES];
}
- (void)BKloadData{
    NSDictionary *BKdict;
    if (UserId) {
        BKdict = @{@"pic_type":@(6),@"type":@(1),@"user_id":UserId};
    }else{
        BKdict = @{@"pic_type":@(6),@"type":@(1)};
    }
    [MIHttpTool Post:PicList parameters:BKdict success:^(id BKresponseObject) {
        NSLog(@"BKresponseObject:%@",BKresponseObject);
        if ([BKresponseObject[@"status"] integerValue] == 1) {
            [self.BKdataArray removeAllObjects];
            for (NSInteger BKi = 0; BKi<[BKresponseObject[@"data"] count]; BKi++) {
                NSDictionary *BKdict = BKresponseObject[@"data"][BKi];
                BKMIHomeModel *BKmodel = [BKMIHomeModel mj_objectWithKeyValues:BKdict];
                    [self.BKdataArray addObject:BKmodel];
            }
        }
        [self.BKtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
#pragma mark --UITableViewdelegate & Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BKMIHomeSectionTowCell *BKcell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!BKcell) {
        BKcell = [[BKMIHomeSectionTowCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    BKcell.BKmodel = self.BKdataArray[indexPath.row];
    return BKcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    BKMIHomeModel *BKmodel = self.BKdataArray[indexPath.row];
    BKMIStickerDetailVC * BKdetailVC = [[BKMIStickerDetailVC alloc] init];
    BKdetailVC.BKmodel = BKmodel;
    BKdetailVC.BKpId = BKmodel.id;
    [self.navigationController pushViewController:BKdetailVC animated:YES];
}
- (void)buyStickersWithFilterModel:(BKMIHomeModel *)BKmodel{
    UIAlertController *BKalert = [UIAlertController alertControllerWithTitle:@"Prompt" message:@"Determine to buy?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *BKcancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull BKaction) {
    }];
    [BKalert addAction:BKcancel];
    UIAlertAction *BKsure = [UIAlertAction actionWithTitle:@"Sure" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull BKaction) {
    }];
    [BKalert addAction:BKsure];
    [self presentViewController:BKalert animated:YES completion:nil];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  ScreenHeight/2-110;
}
- (void)slideMenuController:(BKMISlideVC *)slideMenuController didViewDidLoad:(NSInteger)index{
}
- (void)dealloc{
    [NotifiCenter removeObserver:self];
}
@end
