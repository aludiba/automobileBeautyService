#import "LCDMIBaseTypeVC.h"
#import "LCDMISlideVC.h"
#import "LCDMIFilterVC.h"
#import "LCDMIStickerVC.h"
#import "LCDMIUserModel.h"
#import "LCDMIStoreVC.h"
#import "LCDMILoginVC.h"
@interface LCDMIBaseTypeVC ()
@property (nonatomic, strong) LCDMIUserModel *LCDmodel;
@property (nonatomic, strong) UILabel *LCDcoinsLabel;
@end
@implementation LCDMIBaseTypeVC
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Shop";
    LCDMISlideVC *LCDslideMenu = [[LCDMISlideVC alloc] init];
    LCDMIStickerVC *LCDstickerVC = [[LCDMIStickerVC alloc] init];
    LCDMIFilterVC *LCDfilterVC = [[LCDMIFilterVC alloc] init];
    LCDslideMenu.LCDshowBottomLine = NO;
    LCDslideMenu.LCDtitleSelectColor = RGB(62, 85, 250);
    LCDslideMenu.LCDbottomLineColor = RGB(62, 85, 250);
    LCDslideMenu.LCDtitles = @[@"STICKER",@"FILTER"];
    LCDslideMenu.LCDcontrollers = @[LCDstickerVC,LCDfilterVC];
    [self.view addSubview:LCDslideMenu.view];
    [self addChildViewController:LCDslideMenu];
    if (UserId) {
        [self LCDloadUserInfo];
    }
    [self LCDcreateCoinsView];
    [NotifiCenter addObserver:self selector:@selector(LCDloadUserInfo) name:@"loginSuccess" object:nil];
    [NotifiCenter addObserver:self selector:@selector(LCDloginOut) name:@"loginOut" object:nil];
}
- (void)LCDloginOut{
    self.LCDcoinsLabel.text = @"";
}
- (void)LCDcreateCoinsView{
}
- (void)LCDloadUserInfo{
    [MIHttpTool Post:SHUserDetail parameters:@{@"user_id":UserId} success:^(id responseObject) {
        if ([responseObject[@"status"] integerValue] == 1) {
            LCDMIUserModel *LCDmodel = [LCDMIUserModel mj_objectWithKeyValues:responseObject[@"data"]];
            self.LCDmodel = LCDmodel;
            self.LCDcoinsLabel.text = LCDmodel.peanut_num;
        }
    } failure:^(NSError *error) {
    }];
}
- (void)LCDtapAction:(UITapGestureRecognizer *)LCDtap{
    if (!UserId) {
        LCDMILoginVC *LCDlogVC = [[LCDMILoginVC alloc] init];
        UINavigationController *LCDnavi = [[UINavigationController alloc] initWithRootViewController:LCDlogVC];
        [self presentViewController:LCDnavi animated:YES completion:nil];
        return;
    }
}
- (void)dealloc{
    [NotifiCenter removeObserver:self];
}
@end
