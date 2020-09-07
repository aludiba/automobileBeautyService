#import "LCDMIStickerVC.h"
#import "LCDMIHomeSectionTowCell.h"
#import "LCDMIHomeModel.h"
#import "LCDMIStickerDetailVC.h"
@interface LCDMIStickerVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * LCDtableView;
@property (nonatomic, strong) NSMutableArray * LCDdataArray;
@property (nonatomic, strong) UIImageView * LCDpicImageView;
@property (nonatomic, strong) LCDMIHomeModel * LCDmodel;
@end
@implementation LCDMIStickerVC
- (NSMutableArray *)LCDdataArray{
    if (!_LCDdataArray) {
        _LCDdataArray = @[].mutableCopy;
    }
    return _LCDdataArray;
}
- (UITableView *)LCDtableView{
    if (!_LCDtableView){
        _LCDtableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _LCDtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _LCDtableView.dataSource = self;
        _LCDtableView.delegate = self;
    }
    return _LCDtableView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat bottomDistance;
    if (self.LCDisFromHomeVC == YES) {
        self.title = @"Hot Stickers";
        bottomDistance = 0;
    }else{
        bottomDistance = 64;
    }
    [self.view addSubview:self.LCDtableView];
    
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomSpaceToView(self.view, bottomDistance);
    [self LCDloadData];
    [NotifiCenter addObserver:self selector:@selector(LCDupdatePrice) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(LCDloginOut) name:@"loginOut" object:nil];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if (!self.LCDdataArray.count) {
        [self LCDloadData];
    }
}
- (void)LCDupdatePrice{
    [self LCDloadData];
}
- (void)LCDloginOut{
    [self LCDloadData];
}
- (void)LCDtapAction:(UITapGestureRecognizer *)LCDtap{
    LCDMIStickerDetailVC *LCDdetailVC = [[LCDMIStickerDetailVC alloc] init];
    LCDdetailVC.LCDmodel = self.LCDmodel;
    [self.navigationController pushViewController:LCDdetailVC animated:YES];
}
- (void)LCDloadData{
    NSDictionary *LCDdict;
    if (UserId) {
        LCDdict = @{@"pic_type":@(2),@"type":@(1),@"user_id":UserId};
    }else{
        LCDdict = @{@"pic_type":@(2),@"type":@(1)};
    }
    [MIHttpTool Post:PicList parameters:LCDdict success:^(id LCDresponseObject) {
        NSLog(@"LCDresponseObject:%@",LCDresponseObject);
        if ([LCDresponseObject[@"status"] integerValue] == 1) {
            [self.LCDdataArray removeAllObjects];
            for (NSInteger LCDi = 0; LCDi<[LCDresponseObject[@"data"] count]; LCDi++) {
                NSDictionary *LCDdict = LCDresponseObject[@"data"][LCDi];
                LCDMIHomeModel *LCDmodel = [LCDMIHomeModel mj_objectWithKeyValues:LCDdict];
                    [self.LCDdataArray addObject:LCDmodel];
            }
        }
        [self.LCDtableView reloadData];
    } failure:^(NSError *error) {
        MyLog(@"%@",error);
    }];
}
#pragma mark --UITableViewdelegate & Datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCDMIHomeSectionTowCell *LCDcell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!LCDcell) {
        LCDcell = [[LCDMIHomeSectionTowCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    LCDcell.LCDmodel = self.LCDdataArray[indexPath.row];
    return LCDcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    LCDMIHomeModel *LCDmodel = self.LCDdataArray[indexPath.row];
    LCDMIStickerDetailVC * LCDdetailVC = [[LCDMIStickerDetailVC alloc] init];
    LCDdetailVC.LCDmodel = LCDmodel;
    LCDdetailVC.LCDpId = LCDmodel.id;
    [self.navigationController pushViewController:LCDdetailVC animated:YES];
}
- (void)buyStickersWithFilterModel:(LCDMIHomeModel *)LCDmodel{
    UIAlertController *LCDalert = [UIAlertController alertControllerWithTitle:@"Prompt" message:@"Determine to buy?" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *LCDcancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull LCDaction) {
    }];
    [LCDalert addAction:LCDcancel];
    UIAlertAction *LCDsure = [UIAlertAction actionWithTitle:@"Sure" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull LCDaction) {
    }];
    [LCDalert addAction:LCDsure];
    [self presentViewController:LCDalert animated:YES completion:nil];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  ScreenHeight/2-110;
}
- (void)slideMenuController:(LCDMISlideVC *)slideMenuController didViewDidLoad:(NSInteger)index{
}
- (void)dealloc{
    [NotifiCenter removeObserver:self];
}
@end
