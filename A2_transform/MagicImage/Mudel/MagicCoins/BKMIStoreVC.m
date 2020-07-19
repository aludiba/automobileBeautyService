#import "BKMIStoreVC.h"
#import "BKMIUserModel.h"
#import "BKMICoinsModel.h"
#import "BKMICoinsCell.h"
#import "MIIPAPurchase.h"
@interface BKMIStoreVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * BKtableView;
@property (nonatomic, strong) NSMutableArray * BKdataArray;
@property (nonatomic, strong) UILabel * BKcoinsLabel;
@end
@implementation BKMIStoreVC
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
    self.title = @"Recharge";
    self.view.backgroundColor = UIColor.whiteColor;
    self.BKtableView.backgroundColor = UIColor.groupTableViewBackgroundColor;
     [self.view addSubview:self.BKtableView];
    self.BKtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomEqualToView(self.view);
    [self BKloadData];
    UIView *BKheaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    BKheaderView.backgroundColor = UIColor.whiteColor;
    UILabel *BKtextLabel = [[UILabel alloc] init];
    BKtextLabel.text = @"Current account:";
    BKtextLabel.font = [UIFont systemFontOfSize:15];
    BKtextLabel.textColor = UIColor.blackColor;
    [BKheaderView addSubview:BKtextLabel];
    BKtextLabel.sd_layout
    .leftSpaceToView(BKheaderView, 15)
    .centerYEqualToView(BKheaderView)
    .autoHeightRatio(0);
    [BKtextLabel setSingleLineAutoResizeWithMaxWidth:180];
    UILabel *BKcoinsLabel = [[UILabel alloc] init];
    self.BKcoinsLabel = BKcoinsLabel;
    BKcoinsLabel.textColor = UIColor.orangeColor;
    BKcoinsLabel.font = [UIFont systemFontOfSize:15];
    [BKheaderView addSubview:BKcoinsLabel];
    BKcoinsLabel.sd_layout
    .leftSpaceToView(BKtextLabel, 2)
    .centerYEqualToView(BKtextLabel)
    .autoHeightRatio(0);
    [BKcoinsLabel setSingleLineAutoResizeWithMaxWidth:180];
    self.BKtableView.tableHeaderView = BKheaderView;
    UIView *BKfooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 90)];
    BKfooterView.userInteractionEnabled = YES;
    UILabel *BKTermsOfServiceLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 25)];
    BKTermsOfServiceLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *BKtap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKcontactUs:)];
    BKTermsOfServiceLabel.textAlignment = NSTextAlignmentCenter;
    BKTermsOfServiceLabel.textColor = UIColor.orangeColor;
    BKTermsOfServiceLabel.font = [UIFont systemFontOfSize:13];
    BKTermsOfServiceLabel.text = @"Terms of service";
    BKTermsOfServiceLabel.tag = 102;
    [BKTermsOfServiceLabel addGestureRecognizer:BKtap2];
    [BKfooterView addSubview:BKTermsOfServiceLabel];
    UILabel *BKprivacyPolicyLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, ScreenWidth, 25)];
    UITapGestureRecognizer *BKtap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(BKcontactUs:)];
    BKprivacyPolicyLabel.userInteractionEnabled = YES;
    BKprivacyPolicyLabel.textAlignment = NSTextAlignmentCenter;
    BKprivacyPolicyLabel.textColor = UIColor.orangeColor;
    BKprivacyPolicyLabel.font = [UIFont systemFontOfSize:13];
    BKprivacyPolicyLabel.text = @"Privacy policy";
    BKprivacyPolicyLabel.tag = 103;
    [BKprivacyPolicyLabel addGestureRecognizer:BKtap3];
    [BKfooterView addSubview:BKprivacyPolicyLabel];
    self.BKtableView.tableFooterView = BKfooterView;
    [self BKloadUserData];
}
- (void)BKcontactUs:(UITapGestureRecognizer *)BKtap{
    if (BKtap.view.tag == 101) {
    }else if (BKtap.view.tag == 102){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/termsDetail",LSBaseUrl]]];
            }else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/privacyDetail",LSBaseUrl]]];
    }
}
- (void)BKloadData{
    NSArray *BKarray = @[
                        @{@"goods_id":@"1",@"goods_price":@"0.99",@"goods_num":@"100",@"is_hot":@(1),@"remark":@"65% off",@"product_id":@"com.picphotopicda2a.ua099"},
                        @{@"goods_id":@"3",@"goods_price":@"2.99",@"goods_num":@"400",@"is_hot":@(1),@"remark":@"40% off",@"product_id":@"com.picphotopicda2a.ua299"},
                        @{@"goods_id":@"4",@"goods_price":@"4.99",@"goods_num":@"700",@"is_hot":@(1),@"remark":@"50% off",@"product_id":@"com.picphotopicda2a.ua499"},
                        @{@"goods_id":@"5",@"goods_price":@"9.99",@"goods_num":@"2000",@"is_hot":@(1),@"remark":@"70% off",@"product_id":@"com.picphotopicda2a.ua999"},
                        @{@"goods_id":@"2",@"goods_price":@"13.99",@"goods_num":@"3000",@"is_hot":@(1),@"remark":@"20% off",@"product_id":@"com.picphotopicda2a.ua1399"},
                        @{@"goods_id":@"6",@"goods_price":@"19.99",@"goods_num":@"5000",@"is_hot":@(1),@"remark":@"75% off",@"product_id":@"com.picphotopicda2a.ua1999"},
                        @{@"goods_id":@"7",@"goods_price":@"49.99",@"goods_num":@"15000",@"is_hot":@(1),@"remark":@"80% off",@"product_id":@"com.picphotopicda2a.ua4999"}];
    for (NSDictionary * BKdict in BKarray) {
        BKMICoinsModel  * BKmodel = [BKMICoinsModel mj_objectWithKeyValues:BKdict];
        [self.BKdataArray addObject:BKmodel];
    }
    [self.BKtableView reloadData];
}
- (void)BKloadUserData{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id responseObject) {
        if ([responseObject[@"status"] integerValue] == 1) {
            BKMIUserModel *BKmodel = [BKMIUserModel mj_objectWithKeyValues:responseObject[@"data"]];
            self.BKcoinsLabel.text = BKmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BKdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BKMICoinsCell *BKcell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (!BKcell) {
        BKcell = [[BKMICoinsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    }
    BKcell.backgroundColor = UIColor.clearColor;
    BKcell.BKmodel = self.BKdataArray[indexPath.row];
    return BKcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [MBProgressHUD showActivityMessageInWindow:@"Loading....."];
    BKMICoinsModel *BKmodel = self.BKdataArray[indexPath.row];
    MIIPAPurchase *BKmaneger =  [MIIPAPurchase manager];
    [BKmaneger startManager];
    [BKmaneger buyProductWithProductID:BKmodel.product_id payResult:^(BOOL isSuccess, NSString *certificate, NSString *errorMsg) {
        MyLog(@"%@",errorMsg);
        if (isSuccess) {
            [MIHttpTool Post:AddUserPeanut parameters:@{@"peanut_num":[NSString stringWithFormat:@"%ld",BKmodel.goods_num],@"type":@"3",@"object_id":BKmodel.product_id,@"user_id":UserId} success:^(id responseObject) {
                [MBProgressHUD showTipMessageInWindow:responseObject[@"msg"]];
                if ([responseObject[@"status"] integerValue] == 1) {
                    [self BKloadUserData];
                    [NotifiCenter postNotificationName:@"loginSuccess" object:nil];
                    [self.navigationController popViewControllerAnimated:YES];
                }else if ([responseObject[@"status"] integerValue] == -200){
                }else{
                }
            } failure:^(NSError *error) {
            }];
        }
        [MBProgressHUD hideHUD];
    }];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    return [UIView new];
}
@end
