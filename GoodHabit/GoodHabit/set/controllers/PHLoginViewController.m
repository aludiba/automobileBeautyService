//
//  PHLoginViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHLoginViewController.h"
#import "PHTabBarViewController.h"
#import "PHGuideViewController.h"

@interface PHLoginViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PHbackView;
@property(nonatomic, strong)UILabel *PHPHaccountLable;
@property(nonatomic, strong)UITextField *PHPHaccountTextField;
@property(nonatomic, copy)NSString *PHaccount;
@property(nonatomic, strong)UILabel *PHPHpasswordLable;
@property(nonatomic, strong)UITextField *PHPHpasswordTextField;
@property(nonatomic, copy)NSString *PHpassword;
@property(nonatomic, strong)UIButton *PHloginButton;
@property(nonatomic, strong)UIButton *PHregisteredButton;
@property(nonatomic, strong)UIButton *PHforgotPasswordButton;
@end

@implementation PHLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self PHsetContent];
}
+ (PHLoginViewController *)PHshareInstance{
    static PHLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[PHLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)PHsetContent{
    [self.view addSubview:self.PHbackView];
    [self.PHbackView addSubview:self.PHPHaccountLable];
    [self.PHbackView addSubview:self.PHPHaccountTextField];
    [self.PHbackView addSubview:self.PHPHpasswordLable];
    [self.PHbackView addSubview:self.PHPHpasswordTextField];
    [self.PHbackView addSubview:self.PHloginButton];
    [self.PHbackView addSubview:self.PHregisteredButton];
    
    [self.PHbackView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(self.view).offset(PHHeightNavBar + 50);
    make.centerX.equalTo(self.view);
    make.width.mas_equalTo(PHWIDTH - 60);
    make.height.mas_equalTo(343.5);
    }];
    [self.PHPHaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PHbackView).offset(40);
        make.leading.equalTo(self.PHbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.PHPHaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PHPHaccountLable);
    make.leading.equalTo(self.PHPHaccountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.PHbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = [UIColor grayColor];
    [self.PHbackView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PHbackView).offset(25);
        make.trailing.equalTo(self.PHbackView).offset(-25);
    make.top.equalTo(self.PHPHaccountTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.PHPHpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line.mas_bottom).offset(24);
        make.leading.equalTo(self.PHbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.PHPHpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PHPHpasswordLable);
    make.leading.equalTo(self.PHPHpasswordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.PHbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *line1 = [[UIView alloc] init];
    line1.backgroundColor = [UIColor grayColor];
    [self.PHbackView addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PHbackView).offset(25);
        make.trailing.equalTo(self.PHbackView).offset(-25);
    make.top.equalTo(self.PHPHpasswordTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.PHloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PHbackView).offset(26.5);
        make.trailing.equalTo(self.PHbackView).offset(-26.5);
        make.top.equalTo(line1.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PHregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PHbackView).offset(26.5);
        make.trailing.equalTo(self.PHbackView).offset(-26.5);
    make.top.equalTo(self.PHloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PHaccount.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PHpassword.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PHaccount password:self.PHpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if ([PHHBTool isFirstLoad]) {
                    PHGuideViewController *guideVC = [[PHGuideViewController alloc] init];
                    [[UIApplication sharedApplication].delegate window].rootViewController = guideVC;
                }else{
                PHTabBarViewController *tabVC = [PHTabBarViewController PHshareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PHaccount];
        [bUser setPassword:self.PHpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PHaccount password:self.PHpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        PHTabBarViewController *tabVC = [PHTabBarViewController PHshareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD PHshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PHaccount = textField.text;
    }else if (textField.tag == 99){
        self.PHpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PHaccount = textField.text;
    }else if (textField.tag == 99){
        self.PHpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PHbackView{
    if (!_PHbackView) {
        _PHbackView = [[UIView alloc] init];
        _PHbackView.backgroundColor = PHH_Color(242, 242, 242, 1);
        _PHbackView.layer.cornerRadius = 5.0f;
        _PHbackView.layer.masksToBounds = YES;
        _PHbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _PHbackView.layer.borderWidth = 1.0f;
    }
    return _PHbackView;
}
- (UILabel *)PHPHaccountLable{
    if (!_PHPHaccountLable) {
        _PHPHaccountLable = [[UILabel alloc] init];
        _PHPHaccountLable.text = NSLocalizedString(@"账号", nil);
        _PHPHaccountLable.textColor = [UIColor blackColor];
        _PHPHaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PHPHaccountLable;
}
- (UITextField *)PHPHaccountTextField{
    if (!_PHPHaccountTextField) {
        _PHPHaccountTextField = [[UITextField alloc] init];
        _PHPHaccountTextField.tag = 98;
        _PHPHaccountTextField.delegate = self;
        _PHPHaccountTextField.textColor = [UIColor blackColor];
        _PHPHaccountTextField.font = [UIFont systemFontOfSize:15];
        _PHPHaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PHPHaccountTextField;
}
- (UILabel *)PHPHpasswordLable{
    if (!_PHPHpasswordLable) {
        _PHPHpasswordLable = [[UILabel alloc] init];
        _PHPHpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PHPHpasswordLable.textColor = [UIColor blackColor];
        _PHPHpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PHPHpasswordLable;
}
- (UITextField *)PHPHpasswordTextField{
    if (!_PHPHpasswordTextField) {
        _PHPHpasswordTextField = [[UITextField alloc] init];
        _PHPHpasswordTextField.tag = 99;
        _PHPHpasswordTextField.delegate = self;
        _PHPHpasswordTextField.textColor = [UIColor blackColor];
        _PHPHpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PHPHpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PHPHpasswordTextField.secureTextEntry = YES;
    }
    return _PHPHpasswordTextField;
}
- (UIButton *)PHloginButton{
    if (!_PHloginButton) {
        _PHloginButton = [[UIButton alloc] init];
        _PHloginButton.tag = 100;
        _PHloginButton.backgroundColor = [UIColor blueColor];
        [_PHloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PHloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PHloginButton.layer.cornerRadius = 4.0f;
        _PHloginButton.layer.masksToBounds = YES;
        [_PHloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PHloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHloginButton;
}
- (UIButton *)PHregisteredButton{
    if (!_PHregisteredButton) {
        _PHregisteredButton = [[UIButton alloc] init];
        _PHregisteredButton.tag = 101;
        _PHregisteredButton.backgroundColor = [UIColor whiteColor];
        [_PHregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PHregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PHregisteredButton.layer.cornerRadius = 4.0f;
        _PHregisteredButton.layer.masksToBounds = YES;
        [_PHregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PHregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHregisteredButton;
}
- (UIButton *)PHforgotPasswordButton{
    if (!_PHforgotPasswordButton) {
        _PHforgotPasswordButton = [[UIButton alloc] init];
        _PHforgotPasswordButton.tag = 102;
        _PHforgotPasswordButton.titleLabel.font = [UIFont systemFontOfSize:12];
        [_PHforgotPasswordButton setTitle:NSLocalizedString(@"忘记密码", nil) forState:UIControlStateNormal];
        [_PHforgotPasswordButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _PHforgotPasswordButton.backgroundColor = [UIColor clearColor];
        [_PHforgotPasswordButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHforgotPasswordButton;
}
@end
