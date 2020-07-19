#import "BKMIBaseTypeVC.h"
#import "BKMISlideVC.h"
#import "BKMIFilterVC.h"
#import "BKMIStickerVC.h"
#import "BKMIUserModel.h"
#import "BKMIStoreVC.h"
#import "BKMILoginVC.h"
@interface BKMIBaseTypeVC ()
@property (nonatomic, strong) BKMIUserModel *BKmodel;
@property (nonatomic, strong) UILabel *BKcoinsLabel;
@end
@implementation BKMIBaseTypeVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"SHOP";
    BKMISlideVC *BKslideMenu = [[BKMISlideVC alloc] init];
    BKMIStickerVC *BKstickerVC = [[BKMIStickerVC alloc] init];
    BKMIFilterVC *BKfilterVC = [[BKMIFilterVC alloc] init];
    BKslideMenu.BKshowBottomLine = NO;
    BKslideMenu.BKtitleSelectColor = RGB(62, 85, 250);
    BKslideMenu.BKbottomLineColor = RGB(62, 85, 250);
    BKslideMenu.BKtitles = @[@"Sticker",@"Filter"];
    BKslideMenu.BKcontrollers = @[BKstickerVC,BKfilterVC];
    [self.view addSubview:BKslideMenu.view];
    [self addChildViewController:BKslideMenu];
    if (UserId) {
        [self BKloadUserInfo];
    }
    [self BKcreateCoinsView];
    [NotifiCenter addObserver:self selector:@selector(BKloadUserInfo) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(BKloginOut) name:@"loginOut" object:nil];
}
- (void)BKloginOut{
    self.BKcoinsLabel.text = @"";
}
- (void)BKcreateCoinsView{
}
- (void)BKloadUserInfo{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id responseObject) {
        if ([responseObject[@"status"] integerValue] == 1) {
            BKMIUserModel *BKmodel = [BKMIUserModel mj_objectWithKeyValues:responseObject[@"data"]];
            self.BKmodel = BKmodel;
            self.BKcoinsLabel.text = BKmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
- (void)BKtapAction:(UITapGestureRecognizer *)BKtap{
    if (!UserId) {
        BKMILoginVC *BKlogVC = [[BKMILoginVC alloc] init];
        UINavigationController *BKnavi = [[UINavigationController alloc] initWithRootViewController:BKlogVC];
        [self presentViewController:BKnavi animated:YES completion:nil];
        return;
    }
//    BKMIStoreVC *BKstoreVC = [[BKMIStoreVC alloc] init];
//    [self.navigationController pushViewController:BKstoreVC animated:YES];
}
- (void)dealloc{
    [NotifiCenter removeObserver:self];
}
@end
