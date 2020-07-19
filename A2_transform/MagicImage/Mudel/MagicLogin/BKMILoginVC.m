#import "BKMILoginVC.h"
#import <Masonry.h>
#import "BKMIRegisterVC.h"
@interface BKMILoginVC ()
@property (nonatomic, strong) UITextField *BKusrName;
@property (nonatomic, strong) UITextField *BKusrPwd;
@end
@implementation BKMILoginVC
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
    UIImageView *BKmaskImgView = [[UIImageView alloc] init];
    BKmaskImgView.userInteractionEnabled = YES;
    [self.view addSubview:BKmaskImgView];
    [BKmaskImgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).with.offset(0);
        make.top.equalTo(self.view.mas_top).with.offset(0);
        make.right.equalTo(self.view.mas_right).with.offset(0);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(0);
    }];
    BKmaskImgView.backgroundColor = RGB(62, 85, 250);
    UIButton * BKcloseBtn = [[UIButton alloc] init];
    [BKcloseBtn setImage:[UIImage imageNamed:@"Peclose"] forState:UIControlStateNormal];
    [BKcloseBtn addTarget:self action:@selector(BKcloseBtnClicked) forControlEvents:UIControlEventTouchUpInside];
    [BKmaskImgView addSubview:BKcloseBtn];
    BKcloseBtn.sd_layout
    .leftSpaceToView(BKmaskImgView, 15)
    .topSpaceToView(BKmaskImgView, StatusBarHeight+10)
    .widthIs(40)
    .heightEqualToWidth();
    UILabel *BKloginLabel = [[UILabel alloc] init];
    [BKmaskImgView addSubview:BKloginLabel];
    [BKloginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(BKmaskImgView.mas_top).with.offset(NavBarHeight+5.5);
        make.centerX.equalTo(BKmaskImgView);
    }];
    BKloginLabel.font = FontSize(40, ScreenWidth);
    BKloginLabel.textColor = UIColor.whiteColor;
    BKloginLabel.textAlignment = NSTextAlignmentCenter;
    BKloginLabel.text = @"Login";
    UIView *BKuserView = [[UIImageView alloc] init];
    [BKmaskImgView addSubview:BKuserView];
    [BKuserView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(BKloginLabel.mas_bottom).with.offset(91);
        make.centerX.equalTo(BKmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 54));
    }];
    BKuserView.userInteractionEnabled = YES;
    UIImageView *BKbgImgView1 = [[UIImageView alloc] init];
    [BKuserView addSubview:BKbgImgView1];
    [BKbgImgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKuserView.mas_left).with.offset(0);
        make.top.equalTo(BKuserView.mas_top).with.offset(0);
        make.right.equalTo(BKuserView.mas_right).with.offset(0);
        make.bottom.equalTo(BKuserView.mas_bottom).with.offset(0);
    }];
    BKbgImgView1.alpha = 1;
    BKbgImgView1.image = PEImage(@"box");
    UIImageView *BKiconImgView1 = [[UIImageView alloc] init];
    [BKuserView addSubview:BKiconImgView1];
    [BKiconImgView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKuserView.mas_left).with.offset(50.5);
        make.centerY.equalTo(BKuserView);
        make.size.mas_equalTo(CGSizeMake(15.5, 18));
    }];
    BKiconImgView1.alpha = 1;
    BKiconImgView1.image = PEImage(@"user");
    self.BKusrName = [[UITextField alloc] init];
    [BKuserView addSubview:self.BKusrName];
    [self.BKusrName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKiconImgView1.mas_right).with.offset(26.5);
        make.right.equalTo(BKuserView.mas_right).with.offset(-26.5);
        make.centerY.equalTo(BKuserView);
        make.height.mas_equalTo(14);
    }];
    self.BKusrName.alpha = 1;
    self.BKusrName.font = FontSize(15, ScreenWidth);
    self.BKusrName.textColor = UIColor.whiteColor;
    self.BKusrName.textAlignment = NSTextAlignmentLeft;
    NSString *BKplaceholder1 = @"UserName";
    NSMutableAttributedString *BKattrsPlaceholder1 = [[NSMutableAttributedString alloc] initWithString:BKplaceholder1];
    [BKattrsPlaceholder1 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:NSMakeRange(0, BKplaceholder1.length)];
    self.BKusrName.attributedPlaceholder = BKattrsPlaceholder1;
    self.BKusrName.clearButtonMode = UITextFieldViewModeWhileEditing;
    UIView *BKpasswordView = [[UIImageView alloc] init];
    [BKmaskImgView addSubview:BKpasswordView];
    [BKpasswordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(BKuserView.mas_bottom).with.offset(15);
        make.centerX.equalTo(BKmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 54));
    }];
    BKpasswordView.userInteractionEnabled = YES;
    UIImageView *BKbgImgView2 = [[UIImageView alloc] init];
    [BKpasswordView addSubview:BKbgImgView2];
    [BKbgImgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKpasswordView.mas_left).with.offset(0);
        make.top.equalTo(BKpasswordView.mas_top).with.offset(0);
        make.right.equalTo(BKpasswordView.mas_right).with.offset(0);
        make.bottom.equalTo(BKpasswordView.mas_bottom).with.offset(0);
    }];
    BKbgImgView2.alpha = 1;
    BKbgImgView2.image = PEImage(@"box");
    UIImageView *BKiconImgView2 = [[UIImageView alloc] init];
    [BKpasswordView addSubview:BKiconImgView2];
    [BKiconImgView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKpasswordView.mas_left).with.offset(51);
        make.centerY.equalTo(BKpasswordView);
        make.size.mas_equalTo(CGSizeMake(16, 17));
    }];
    BKiconImgView2.alpha = 1;
    BKiconImgView2.image = PEImage(@"password");
    self.BKusrPwd = [[UITextField alloc] init];
    [BKpasswordView addSubview:self.BKusrPwd];
    [self.BKusrPwd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(BKiconImgView2.mas_right).with.offset(27.5);
        make.right.equalTo(BKpasswordView.mas_right).with.offset(-27.5);
        make.centerY.equalTo(BKpasswordView);
        make.height.mas_equalTo(14);
    }];
    self.BKusrPwd.alpha = 1;
    self.BKusrPwd.font = FontSize(15, ScreenWidth);
    self.BKusrPwd.textColor = UIColor.whiteColor;
    self.BKusrPwd.textAlignment = NSTextAlignmentLeft;
    NSString *BKplaceholder2 = @"Password";
    NSMutableAttributedString *BKattrsPlaceholder2 = [[NSMutableAttributedString alloc] initWithString:BKplaceholder2];
    [BKattrsPlaceholder2 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:NSMakeRange(0, BKplaceholder2.length)];
    self.BKusrPwd.attributedPlaceholder = BKattrsPlaceholder2;
    self.BKusrPwd.secureTextEntry = YES;
    UIButton *BKloginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    BKloginBtn.layer.cornerRadius = 10;
    BKloginBtn.layer.masksToBounds = YES;
    BKloginBtn.layer.borderColor = UIColor.whiteColor.CGColor;
    BKloginBtn.layer.borderWidth = 0.5;
    [BKmaskImgView addSubview:BKloginBtn];
    [BKloginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(BKpasswordView.mas_bottom).with.offset(55);
        make.centerX.equalTo(BKmaskImgView);
        make.size.mas_equalTo(CGSizeMake(263, 45));
    }];
    BKloginBtn.alpha = 1;
    [BKloginBtn setTitle:@"Login" forState:UIControlStateNormal];
    [BKloginBtn addTarget:self action:@selector(BKloginBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIButton *BKregisterBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [BKmaskImgView addSubview:BKregisterBtn];
    [BKregisterBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(BKloginBtn);
        make.top.equalTo(BKloginBtn.mas_bottom).with.offset(30.5);
    }];
    BKregisterBtn.alpha = 1;
    [BKregisterBtn setTitle:@"Register" forState:UIControlStateNormal];
    NSMutableAttributedString *BKattrs1 = [[NSMutableAttributedString alloc] initWithString:BKregisterBtn.currentTitle];
    [BKattrs1 addAttribute:NSFontAttributeName value:FontSize(15, ScreenWidth) range:[BKregisterBtn.currentTitle rangeOfString:BKregisterBtn.currentTitle]];
    [BKattrs1 addAttribute:NSForegroundColorAttributeName value:UIColor.whiteColor range:[BKregisterBtn.currentTitle rangeOfString:BKregisterBtn.currentTitle]];
    [BKregisterBtn setAttributedTitle:BKattrs1 forState:UIControlStateNormal];
    [BKregisterBtn addTarget:self action:@selector(BKregisterBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    UIButton * BKvisitorsBtn = [[UIButton alloc] init];
    [BKvisitorsBtn setTitle:@"Visitors Login" forState:UIControlStateNormal];
    [BKvisitorsBtn setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    BKvisitorsBtn.layer.masksToBounds = YES;
    BKvisitorsBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
    [BKvisitorsBtn addTarget:self action:@selector(BKvisitorsBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    [BKmaskImgView addSubview:BKvisitorsBtn];
    BKvisitorsBtn.sd_layout
    .leftSpaceToView(BKmaskImgView, 30)
    .rightSpaceToView(BKmaskImgView, 30)
    .topSpaceToView(BKregisterBtn, 15)
    .heightIs(35);
    UILabel *BKcontentLabel = [[UILabel alloc] init];
    BKcontentLabel.textColor = [UIColor whiteColor];
    BKcontentLabel.font = LSFontSize(13, [UIScreen mainScreen].bounds.size.width);
    BKcontentLabel.text = @"Register login App,  you can use the member rights and interests on all platforms. visitors login, will open account for the current device.";
    [BKmaskImgView addSubview:BKcontentLabel];
    BKcontentLabel.sd_layout
    .leftSpaceToView(BKmaskImgView, 40)
    .rightSpaceToView(BKmaskImgView, 40)
    .topSpaceToView(BKvisitorsBtn, 10)
    .autoHeightRatio(0);
}
#pragma mark - 登录
- (void)BKloginBtnClick:(UIButton *)BKsender {
    BKsender.enabled = NO;
    if ([CommonClass isBlankString:self.BKusrName.text]) {
        [MBProgressHUD showTipMessageInWindow:@"Username cannot be empty"];
        BKsender.enabled = YES;
        return;
    }
    if ([CommonClass isBlankString:self.BKusrPwd.text]) {
        BKsender.enabled = YES;
        [MBProgressHUD showTipMessageInWindow:@"Password cannot be empty"];
        return;
    }
    [MIHttpTool Post:SHLogin parameters:@{@"user_name":self.BKusrName.text,@"password":self.BKusrPwd.text} success:^(id responseObject) {
        BKsender.enabled = YES;
        if ([responseObject[@"status"] integerValue] == 1) {
            [MBProgressHUD showTipMessageInWindow:@"Login Success"];
            [UserDefaults setObject:responseObject[@"data"][@"id"] forKey:@"user_id"];
            [UserDefaults setObject:self.BKusrName.text forKey:@"nickName"];
            [NotifiCenter postNotificationName:@"loginSuccess" object:nil];
            [self dismissViewControllerAnimated:YES completion:nil];
        }else{
            [MBProgressHUD showTipMessageInWindow:responseObject[@"msg"]];
        }
    } failure:^(NSError *error) {
        BKsender.enabled = YES;
    }];
}
#pragma mark - 注册
- (void)BKregisterBtnClick:(UIButton *)BKsender {
    BKMIRegisterVC *BKregiVC = [[BKMIRegisterVC alloc] init];
    BKregiVC.block = ^(NSString * _Nonnull BKusername, NSString * _Nonnull BKpassword) {
        self.BKusrName.text = BKusername;
        self.BKusrPwd.text = BKpassword;
    };
    [self.navigationController pushViewController:BKregiVC animated:YES];
}
- (void)BKvisitorsBtnClicked:(UIButton *)BKsender {
    BKsender.enabled = NO;
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
        BKsender.enabled = YES;
    }];
}
- (void)BKcloseBtnClicked{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
