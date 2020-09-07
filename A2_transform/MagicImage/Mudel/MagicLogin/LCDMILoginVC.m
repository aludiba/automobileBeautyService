#import "LCDMILoginVC.h"
#import <Masonry.h>
#import "LCDMIRegisterVC.h"
@interface LCDMILoginVC ()
@property (nonatomic, strong) UITextField *LCDusrName;
@property (nonatomic, strong) UITextField *LCDusrPwd;
@end
@implementation LCDMILoginVC
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    UIImageView *LCDmaskImgView = [[UIImageView alloc] init];
    LCDmaskImgView.userInteractionEnabled = YES;
    [self.view addSubview:LCDmaskImgView];
    [LCDmaskImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(0);
        make.top.equalTo(self.view.mas_top).with.offset(0);
        make.right.equalTo(self.view.mas_right).with.offset(0);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(0);
    }];
    LCDmaskImgView.backgroundColor = RGB(62, 85, 250);
    UIButton * LCDcloseBtn = [[UIButton alloc] init];
    [LCDcloseBtn setImage:[UIImage imageNamed:@"Peclose"] forState:UIControlStateNormal];
    [LCDcloseBtn addTarget:self action:@selector(LCDcloseBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [LCDmaskImgView addSubview:LCDcloseBtn];
    LCDcloseBtn.sd_layout
    .leftSpaceToView(LCDmaskImgView, 15)
    .topSpaceToView(LCDmaskImgView, StatusBarHeight+10)
    .widthIs(40)
    .heightEqualToWidth();
    UILabel *LCDloginLabel = [[UILabel alloc] init];
    [LCDmaskImgView addSubview:LCDloginLabel];
    [LCDloginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(LCDmaskImgView.mas_top).with.offset(NavBarHeight+5.5);
        make.centerX.equalTo(LCDmaskImgView);
    }];
    LCDloginLabel.font = FontSize(40, ScreenWidth);
    LCDloginLabel.textColor = UIColor.whiteColor;
    LCDloginLabel.textAlignment = NSTextAlignmentCenter;
    LCDloginLabel.text = @"Login";
    UIView *LCDuserView = [[UIImageView alloc] init];
    [LCDmaskImgView addSubview:LCDuserView];
    [LCDuserView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(LCDloginLabel.mas_bottom).with.offset(91);
        make.centerX.equalTo(LCDmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 54));
    }];
    LCDuserView.userInteractionEnabled = YES;
    UIImageView *LCDbgImgView1 = [[UIImageView alloc] init];
    [LCDuserView addSubview:LCDbgImgView1];
    [LCDbgImgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDuserView.mas_left).with.offset(0);
        make.top.equalTo(LCDuserView.mas_top).with.offset(0);
        make.right.equalTo(LCDuserView.mas_right).with.offset(0);
        make.bottom.equalTo(LCDuserView.mas_bottom).with.offset(0);
    }];
    LCDbgImgView1.alpha = 1;
    LCDbgImgView1.image = LCDImage(@"box");
    UIImageView *LCDiconImgView1 = [[UIImageView alloc] init];
    [LCDuserView addSubview:LCDiconImgView1];
    [LCDiconImgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDuserView.mas_left).with.offset(50.5);
        make.centerY.equalTo(LCDuserView);
        make.size.mas_equalTo(CGSizeMake(15.5, 18));
    }];
    LCDiconImgView1.alpha = 1;
    LCDiconImgView1.image = LCDImage(@"user");
    self.LCDusrName = [[UITextField alloc] init];
    [LCDuserView addSubview:self.LCDusrName];
    [self.LCDusrName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDiconImgView1.mas_right).with.offset(26.5);
        make.right.equalTo(LCDuserView.mas_right).with.offset(-26.5);
        make.centerY.equalTo(LCDuserView);
        make.height.mas_equalTo(14);
    }];
    self.LCDusrName.alpha = 1;
    self.LCDusrName.font = FontSize(15, ScreenWidth);
    self.LCDusrName.textColor = UIColor.whiteColor;
    self.LCDusrName.textAlignment = NSTextAlignmentLeft;
    NSString *LCDplaceholder1 = @"UserName";
    NSMutableAttributedString *LCDattrsPlaceholder1 = [[NSMutableAttributedString alloc] initWithString:LCDplaceholder1];
    [LCDattrsPlaceholder1 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:NSMakeRange(0, LCDplaceholder1.length)];
    self.LCDusrName.attributedPlaceholder = LCDattrsPlaceholder1;
    self.LCDusrName.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIView *LCDpasswordView = [[UIImageView alloc] init];
    [LCDmaskImgView addSubview:LCDpasswordView];
    [LCDpasswordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(LCDuserView.mas_bottom).with.offset(15);
        make.centerX.equalTo(LCDmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 54));
    }];
    LCDpasswordView.userInteractionEnabled = YES;
    UIImageView *LCDbgImgView2 = [[UIImageView alloc] init];
    [LCDpasswordView addSubview:LCDbgImgView2];
    [LCDbgImgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDpasswordView.mas_left).with.offset(0);
        make.top.equalTo(LCDpasswordView.mas_top).with.offset(0);
        make.right.equalTo(LCDpasswordView.mas_right).with.offset(0);
        make.bottom.equalTo(LCDpasswordView.mas_bottom).with.offset(0);
    }];
    LCDbgImgView2.alpha = 1;
    LCDbgImgView2.image = LCDImage(@"box");
    UIImageView *LCDiconImgView2 = [[UIImageView alloc] init];
    [LCDpasswordView addSubview:LCDiconImgView2];
    [LCDiconImgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDpasswordView.mas_left).with.offset(51);
        make.centerY.equalTo(LCDpasswordView);
        make.size.mas_equalTo(CGSizeMake(16, 17));
    }];
    LCDiconImgView2.alpha = 1;
    LCDiconImgView2.image = LCDImage(@"password");
    self.LCDusrPwd = [[UITextField alloc] init];
    [LCDpasswordView addSubview:self.LCDusrPwd];
    [self.LCDusrPwd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(LCDiconImgView2.mas_right).with.offset(27.5);
        make.right.equalTo(LCDpasswordView.mas_right).with.offset(-27.5);
        make.centerY.equalTo(LCDpasswordView);
        make.height.mas_equalTo(14);
    }];
    self.LCDusrPwd.alpha = 1;
    self.LCDusrPwd.font = FontSize(15, ScreenWidth);
    self.LCDusrPwd.textColor = UIColor.whiteColor;
    self.LCDusrPwd.textAlignment = NSTextAlignmentLeft;
    NSString *LCDplaceholder2 = @"Password";
    NSMutableAttributedString *LCDattrsPlaceholder2 = [[NSMutableAttributedString alloc] initWithString:LCDplaceholder2];
    [LCDattrsPlaceholder2 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:NSMakeRange(0, LCDplaceholder2.length)];
    self.LCDusrPwd.attributedPlaceholder = LCDattrsPlaceholder2;
    self.LCDusrPwd.secureTextEntry = YES;
    UIButton *LCDloginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    LCDloginBtn.layer.cornerRadius = 10;
    LCDloginBtn.layer.masksToBounds = YES;
    LCDloginBtn.layer.borderColor = UIColor.whiteColor.CGColor;
    LCDloginBtn.layer.borderWidth = 0.5;
    [LCDmaskImgView addSubview:LCDloginBtn];
    [LCDloginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(LCDpasswordView.mas_bottom).with.offset(55);
        make.centerX.equalTo(LCDmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 45));
    }];
    LCDloginBtn.alpha = 1;
    [LCDloginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [LCDloginBtn addTarget:self action:@selector(LCDloginBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *LCDregisterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [LCDmaskImgView addSubview:LCDregisterBtn];
    [LCDregisterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(LCDloginBtn);
        make.top.equalTo(LCDloginBtn.mas_bottom).with.offset(30.5);
    }];
    LCDregisterBtn.alpha = 1;
    [LCDregisterBtn setTitle:@"Register" forState:UIControlStateNormal];
    NSMutableAttributedString *LCDattrs1 = [[NSMutableAttributedString alloc] initWithString:LCDregisterBtn.currentTitle];
    [LCDattrs1 addAttribute:NSFontAttributeName value:FontSize(15, ScreenWidth) range:[LCDregisterBtn.currentTitle rangeOfString:LCDregisterBtn.currentTitle]];
    [LCDattrs1 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:[LCDregisterBtn.currentTitle rangeOfString:LCDregisterBtn.currentTitle]];
    [LCDregisterBtn setAttributedTitle:LCDattrs1 forState:UIControlStateNormal];
    [LCDregisterBtn addTarget:self action:@selector(LCDregisterBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIButton * LCDvisitorsBtn = [[UIButton alloc] init];
    [LCDvisitorsBtn setTitle:@"Visitors Login" forState:UIControlStateNormal];
    [LCDvisitorsBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    LCDvisitorsBtn.layer.masksToBounds = YES;
    LCDvisitorsBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
    [LCDvisitorsBtn addTarget:self action:@selector(LCDvisitorsBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [LCDmaskImgView addSubview:LCDvisitorsBtn];
    LCDvisitorsBtn.sd_layout
    .leftSpaceToView(LCDmaskImgView, 30)
    .rightSpaceToView(LCDmaskImgView, 30)
    .topSpaceToView(LCDregisterBtn, 15)
    .heightIs(35);
    UILabel *LCDcontentLabel = [[UILabel alloc] init];
    LCDcontentLabel.textColor = [UIColor whiteColor];
    LCDcontentLabel.font = LSFontSize(13, [UIScreen mainScreen].bounds.size.width);
    LCDcontentLabel.text = @"Register login App,  you can use the member rights and interests on all platforms. visitors login, will open account for the current device.";
    [LCDmaskImgView addSubview:LCDcontentLabel];
    LCDcontentLabel.sd_layout
    .leftSpaceToView(LCDmaskImgView, 40)
    .rightSpaceToView(LCDmaskImgView, 40)
    .topSpaceToView(LCDvisitorsBtn, 10)
    .autoHeightRatio(0);
}
#pragma mark - 登录
- (void)LCDloginBtnClick:(UIButton *)LCDsender {
    LCDsender.enabled = NO;
    if ([CommonClass isBlankString:self.LCDusrName.text]) {
        [MBProgressHUD showTipMessageInWindow:@"Username cannot be empty"];
        LCDsender.enabled = YES;
        return;
    }
    if ([CommonClass isBlankString:self.LCDusrPwd.text]) {
        LCDsender.enabled = YES;
        [MBProgressHUD showTipMessageInWindow:@"Password cannot be empty"];
        return;
    }
    [MIHttpTool Post:SHLogin parameters:@{@"user_name":self.LCDusrName.text,@"password":self.LCDusrPwd.text} success:^(id responseObject) {
        LCDsender.enabled = YES;
        if ([responseObject[@"status"] integerValue] == 1) {
            [MBProgressHUD showTipMessageInWindow:@"Login Success"];
            [UserDefaults setObject:responseObject[@"data"][@"id"] forKey:@"user_id"];
            [UserDefaults setObject:self.LCDusrName.text forKey:@"nickName"];
            [NotifiCenter postNotificationName:@"loginSuccess" object:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
        }else{
            [MBProgressHUD showTipMessageInWindow:responseObject[@"msg"]];
        }
    } failure:^(NSError *error) {
        LCDsender.enabled = YES;
    }];
}
#pragma mark - 注册
- (void)LCDregisterBtnClick:(UIButton *)LCDsender {
    LCDMIRegisterVC *LCDregiVC = [[LCDMIRegisterVC alloc] init];
    LCDregiVC.block = ^(NSString * _Nonnull LCDusername, NSString * _Nonnull LCDpassword) {
        self.LCDusrName.text = LCDusername;
        self.LCDusrPwd.text = LCDpassword;
    };
    [self.navigationController pushViewController:LCDregiVC animated:YES];
}
- (void)LCDvisitorsBtnClicked:(UIButton *)LCDsender {
    LCDsender.enabled = NO;
    [MIHttpTool Post:@"sh.user/userDetail" parameters:@{} success:^(id responseObject) {
        if ([responseObject[@"status"] integerValue] == 1) {
            [MBProgressHUD showTipMessageInWindow:@"Login Success"];
            [[NSUserDefaults standardUserDefaults] setObject:responseObject[@"data"][@"id"] forKey:@"user_id"];
            [[NSUserDefaults standardUserDefaults] setObject:@"Visitors" forKey:@"nickName"];
            [[NSNotificationCenter defaultCenter] postNotificationName:@"loginSuccess" object:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
        }else{
            [MBProgressHUD showTipMessageInWindow:responseObject[@"msg"]];
        }
    } failure:^(NSError *error) {
        LCDsender.enabled = YES;
    }];
}
- (void)LCDcloseBtnClicked{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
