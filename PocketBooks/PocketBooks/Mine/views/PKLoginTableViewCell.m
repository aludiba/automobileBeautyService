//
//  PKLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKLoginTableViewCell.h"
#import "PKTabBarViewController.h"
@interface PKLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)UILabel *accountLable;
@property(nonatomic, strong)UITextField *accountTextField;
@property(nonatomic, copy)NSString *account;
@property(nonatomic, strong)UILabel *passwordLable;
@property(nonatomic, strong)UITextField *passwordTextField;
@property(nonatomic, copy)NSString *password;
@property(nonatomic, strong)UIButton *loginButton;
@property(nonatomic, strong)UIButton *registeredButton;
@end
@implementation PKLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setContent];
    }
    return self;
}
- (void)setContent{
    self.contentView.backgroundColor = PKH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.backView];
    [self.backView addSubview:self.accountLable];
    [self.backView addSubview:self.accountTextField];
    [self.backView addSubview:self.passwordLable];
    [self.backView addSubview:self.passwordTextField];
    [self.backView addSubview:self.loginButton];
    [self.backView addSubview:self.registeredButton];
    
    [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PKHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PKWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PKHEIGHT - PKHeightNavBar - 50 - 343.5));
    }];
    [self.accountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.backView).offset(40);
        make.leading.equalTo(self.backView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.accountLable);
        make.leading.equalTo(self.accountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.backView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = [UIColor grayColor];
    [self.backView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.backView).offset(25);
        make.trailing.equalTo(self.backView).offset(-25);
        make.top.equalTo(self.accountTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.passwordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(line.mas_bottom).offset(24);
        make.leading.equalTo(self.backView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.passwordLable);
        make.leading.equalTo(self.passwordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.backView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *line1 = [[UIView alloc] init];
    line1.backgroundColor = [UIColor grayColor];
    [self.backView addSubview:line1];
    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.backView).offset(25);
        make.trailing.equalTo(self.backView).offset(-25);
        make.top.equalTo(self.passwordTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.backView).offset(26.5);
        make.trailing.equalTo(self.backView).offset(-26.5);
        make.top.equalTo(line1.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.registeredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.backView).offset(26.5);
        make.trailing.equalTo(self.backView).offset(-26.5);
        make.top.equalTo(self.loginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.account.length) {
        [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.password.length) {
        [MBProgressHUD PKshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.account password:self.password block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"登录成功", nil)];
                PKTabBarViewController *tabVC = [PKTabBarViewController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.account];
        [bUser setPassword:self.password];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PKshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.account password:self.password block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        PKTabBarViewController *tabVC = [PKTabBarViewController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.account = textField.text;
    }else if (textField.tag == 99){
        self.password = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.account = textField.text;
    }else if (textField.tag == 99){
        self.password = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = PKH_Color(244, 245, 246, 1);
        _backView.layer.cornerRadius = 5.0f;
        _backView.layer.masksToBounds = YES;
        _backView.layer.borderColor = [UIColor grayColor].CGColor;
        _backView.layer.borderWidth = 1.0f;
    }
    return _backView;
}
- (UILabel *)accountLable{
    if (!_accountLable) {
        _accountLable = [[UILabel alloc] init];
        _accountLable.text = NSLocalizedString(@"账号", nil);
        _accountLable.textColor = [UIColor blackColor];
        _accountLable.font = [UIFont systemFontOfSize:15];
    }
    return _accountLable;
}
- (UITextField *)accountTextField{
    if (!_accountTextField) {
        _accountTextField = [[UITextField alloc] init];
        _accountTextField.tag = 98;
        _accountTextField.delegate = self;
        _accountTextField.textColor = [UIColor blackColor];
        _accountTextField.font = [UIFont systemFontOfSize:15];
        _accountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _accountTextField;
}
- (UILabel *)passwordLable{
    if (!_passwordLable) {
        _passwordLable = [[UILabel alloc] init];
        _passwordLable.text = NSLocalizedString(@"密码", nil);
        _passwordLable.textColor = [UIColor blackColor];
        _passwordLable.font = [UIFont systemFontOfSize:15];
    }
    return _passwordLable;
}
- (UITextField *)passwordTextField{
    if (!_passwordTextField) {
        _passwordTextField = [[UITextField alloc] init];
        _passwordTextField.tag = 99;
        _passwordTextField.delegate = self;
        _passwordTextField.textColor = [UIColor blackColor];
        _passwordTextField.font = [UIFont systemFontOfSize:15];
        _passwordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _passwordTextField.secureTextEntry = YES;
    }
    return _passwordTextField;
}
- (UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [[UIButton alloc] init];
        _loginButton.tag = 100;
        _loginButton.backgroundColor = [UIColor blueColor];
        [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_loginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _loginButton.layer.cornerRadius = 4.0f;
        _loginButton.layer.masksToBounds = YES;
        [_loginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_loginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}
- (UIButton *)registeredButton{
    if (!_registeredButton) {
        _registeredButton = [[UIButton alloc] init];
        _registeredButton.tag = 101;
        _registeredButton.backgroundColor = [UIColor whiteColor];
        [_registeredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_registeredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _registeredButton.layer.cornerRadius = 4.0f;
        _registeredButton.layer.masksToBounds = YES;
        [_registeredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_registeredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _registeredButton;
}
@end
