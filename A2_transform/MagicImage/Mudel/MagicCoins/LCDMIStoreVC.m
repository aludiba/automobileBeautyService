#import "LCDMIStoreVC.h"
#import "LCDMIUserModel.h"
#import "LCDMICoinsModel.h"
#import "LCDMICoinsCell.h"
#import "MIIPAPurchase.h"
@interface LCDMIStoreVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView * LCDtableView;
@property (nonatomic, strong) NSMutableArray * LCDdataArray;
@property (nonatomic, strong) UILabel * LCDcoinsLabel;
@end
@implementation LCDMIStoreVC
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
    self.title = @"Recharge";
    self.view.backgroundColor = UIColor.whiteColor;
    self.LCDtableView.backgroundColor = UIColor.groupTableViewBackgroundColor;
     [self.view addSubview:self.LCDtableView];
    self.LCDtableView.sd_layout
    .leftEqualToView(self.view)
    .rightEqualToView(self.view)
    .topEqualToView(self.view)
    .bottomEqualToView(self.view);
    [self LCDloadData];
    UIView *LCDheaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 50)];
    LCDheaderView.backgroundColor = UIColor.whiteColor;
    UILabel *LCDtextLabel = [[UILabel alloc] init];
    LCDtextLabel.text = @"Current account:";
    LCDtextLabel.font = [UIFont systemFontOfSize:15];
    LCDtextLabel.textColor = UIColor.blackColor;
    [LCDheaderView addSubview:LCDtextLabel];
    LCDtextLabel.sd_layout
    .leftSpaceToView(LCDheaderView, 15)
    .centerYEqualToView(LCDheaderView)
    .autoHeightRatio(0);
    [LCDtextLabel setSingleLineAutoResizeWithMaxWidth:180];
    UILabel *LCDcoinsLabel = [[UILabel alloc] init];
    self.LCDcoinsLabel = LCDcoinsLabel;
    LCDcoinsLabel.textColor = UIColor.orangeColor;
    LCDcoinsLabel.font = [UIFont systemFontOfSize:15];
    [LCDheaderView addSubview:LCDcoinsLabel];
    LCDcoinsLabel.sd_layout
    .leftSpaceToView(LCDtextLabel, 2)
    .centerYEqualToView(LCDtextLabel)
    .autoHeightRatio(0);
    [LCDcoinsLabel setSingleLineAutoResizeWithMaxWidth:180];
    self.LCDtableView.tableHeaderView = LCDheaderView;
    UIView *LCDfooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 90)];
    LCDfooterView.userInteractionEnabled = YES;
    UILabel *LCDTermsOfServiceLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 25)];
    LCDTermsOfServiceLabel.userInteractionEnabled = YES;
    UITapGestureRecognizer *LCDtap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDcontactUs:)];
    LCDTermsOfServiceLabel.textAlignment = NSTextAlignmentCenter;
    LCDTermsOfServiceLabel.textColor = UIColor.orangeColor;
    LCDTermsOfServiceLabel.font = [UIFont systemFontOfSize:13];
    LCDTermsOfServiceLabel.text = @"Terms of service";
    LCDTermsOfServiceLabel.tag = 102;
    [LCDTermsOfServiceLabel addGestureRecognizer:LCDtap2];
    [LCDfooterView addSubview:LCDTermsOfServiceLabel];
    UILabel *LCDprivacyPolicyLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 25, ScreenWidth, 25)];
    UITapGestureRecognizer *LCDtap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(LCDcontactUs:)];
    LCDprivacyPolicyLabel.userInteractionEnabled = YES;
    LCDprivacyPolicyLabel.textAlignment = NSTextAlignmentCenter;
    LCDprivacyPolicyLabel.textColor = UIColor.orangeColor;
    LCDprivacyPolicyLabel.font = [UIFont systemFontOfSize:13];
    LCDprivacyPolicyLabel.text = @"Privacy policy";
    LCDprivacyPolicyLabel.tag = 103;
    [LCDprivacyPolicyLabel addGestureRecognizer:LCDtap3];
    [LCDfooterView addSubview:LCDprivacyPolicyLabel];
    self.LCDtableView.tableFooterView = LCDfooterView;
    [self LCDloadUserData];
}
- (void)LCDcontactUs:(UITapGestureRecognizer *)LCDtap{
    if (LCDtap.view.tag == 101) {
    }else if (LCDtap.view.tag == 102){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/termsDetail",LSBaseUrl]]];
            }else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/index/newp.picphotopicda2a/privacyDetail",LSBaseUrl]]];
    }
}
- (void)LCDloadData{
    NSArray *LCDarray = @[
                        @{@"goods_id":@"1",@"goods_price":@"0.99",@"goods_num":@"100",@"is_hot":@(1),@"remark":@"65% off",@"product_id":@"com.picphotopicda2a.ua099"},
                        @{@"goods_id":@"3",@"goods_price":@"2.99",@"goods_num":@"400",@"is_hot":@(1),@"remark":@"40% off",@"product_id":@"com.picphotopicda2a.ua299"},
                        @{@"goods_id":@"4",@"goods_price":@"4.99",@"goods_num":@"700",@"is_hot":@(1),@"remark":@"50% off",@"product_id":@"com.picphotopicda2a.ua499"},
                        @{@"goods_id":@"5",@"goods_price":@"9.99",@"goods_num":@"2000",@"is_hot":@(1),@"remark":@"70% off",@"product_id":@"com.picphotopicda2a.ua999"},
                        @{@"goods_id":@"2",@"goods_price":@"13.99",@"goods_num":@"3000",@"is_hot":@(1),@"remark":@"20% off",@"product_id":@"com.picphotopicda2a.ua1399"},
                        @{@"goods_id":@"6",@"goods_price":@"19.99",@"goods_num":@"5000",@"is_hot":@(1),@"remark":@"75% off",@"product_id":@"com.picphotopicda2a.ua1999"},
                        @{@"goods_id":@"7",@"goods_price":@"49.99",@"goods_num":@"15000",@"is_hot":@(1),@"remark":@"80% off",@"product_id":@"com.picphotopicda2a.ua4999"}];
    for (NSDictionary * LCDdict in LCDarray) {
        LCDMICoinsModel  * LCDmodel = [LCDMICoinsModel mj_objectWithKeyValues:LCDdict];
        [self.LCDdataArray addObject:LCDmodel];
    }
    [self.LCDtableView reloadData];
}
- (void)LCDloadUserData{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id responseObject) {
        if ([responseObject[@"status"] integerValue] == 1) {
            LCDMIUserModel *LCDmodel = [LCDMIUserModel mj_objectWithKeyValues:responseObject[@"data"]];
            self.LCDcoinsLabel.text = LCDmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.LCDdataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    LCDMICoinsCell *LCDcell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (!LCDcell) {
        LCDcell = [[LCDMICoinsCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    }
    LCDcell.backgroundColor = UIColor.clearColor;
    LCDcell.LCDmodel = self.LCDdataArray[indexPath.row];
    return LCDcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [MBProgressHUD showActivityMessageInWindow:@"Loading....."];
    LCDMICoinsModel *LCDmodel = self.LCDdataArray[indexPath.row];
    MIIPAPurchase *LCDmaneger =  [MIIPAPurchase manager];
    [LCDmaneger startManager];
    [LCDmaneger buyProductWithProductID:LCDmodel.product_id payResult:^(BOOL isSuccess, NSString *certificate, NSString *errorMsg) {
        MyLog(@"%@",errorMsg);
        if (isSuccess) {
            [MIHttpTool Post:AddUserPeanut parameters:@{@"peanut_num":[NSString stringWithFormat:@"%ld",LCDmodel.goods_num],@"type":@"3",@"object_id":LCDmodel.product_id,@"user_id":UserId} success:^(id responseObject) {
                [MBProgressHUD showTipMessageInWindow:responseObject[@"msg"]];
                if ([responseObject[@"status"] integerValue] == 1) {
                    [self LCDloadUserData];
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
