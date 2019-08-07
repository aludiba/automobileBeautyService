//
//  SDLoginViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/8/7.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDLoginViewController.h"
@interface SDLoginViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *accountLable;
@property(nonatomic, strong)UITextField *accountTextField;
@property(nonatomic, strong)UILabel *passwordLable;
@property(nonatomic, strong)UITextField *passwordTextField;
@property(nonatomic, strong)UIButton *loginButton;
@property(nonatomic, strong)UIButton *registeredButton;
@end

@implementation SDLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setContent];
}
- (void)setContent{
    [self.view addSubview:self.accountLable];
    [self.view addSubview:self.accountTextField];
    [self.view addSubview:self.passwordLable];
    [self.view addSubview:self.passwordTextField];
    [self.view addSubview:self.loginButton];
    [self.view addSubview:self.registeredButton];
    
    
}
#pragma mark - 属性懒加载
- (UILabel *)accountLable{
    if (!_accountLable) {
        _accountLable = [[UILabel alloc] init];
        _accountLable.text = NSLocalizedString(@"账号", nil);
        _accountLable.textColor = [UIColor blackColor];
        _accountLable.font = [UIFont systemFontOfSize:12];
    }
    return _accountLable;
}
- (UITextField *)accountTextField{
    if (!_accountTextField) {
        _accountTextField = [[UITextField alloc] init];
        _accountTextField.delegate = self;
        _accountTextField.textColor = [UIColor blackColor];
        _accountTextField.font = [UIFont systemFontOfSize:14];
        _accountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _accountTextField;
}
- (UILabel *)passwordLable{
    if (!_passwordLable) {
        _passwordLable = [[UILabel alloc] init];
        _passwordLable.text = NSLocalizedString(@"密码", nil);
        _passwordLable.textColor = [UIColor blackColor];
        _passwordLable.font = [UIFont systemFontOfSize:12];
    }
    return _passwordLable;
}
- (UITextField *)passwordTextField{
    if (!_passwordTextField) {
        _passwordTextField = [[UITextField alloc] init];
        _passwordTextField.delegate = self;
        _passwordTextField.textColor = [UIColor blackColor];
        _passwordTextField.font = [UIFont systemFontOfSize:14];
        _passwordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
    }
    return _passwordTextField;
}
- (UIButton *)loginButton{
    if (!_loginButton) {
        _loginButton = [[UIButton alloc] init];
        _loginButton.backgroundColor = [UIColor blueColor];
        [_loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_loginButton.titleLabel setFont:[UIFont systemFontOfSize:12]];
        _loginButton.layer.cornerRadius = 4.0f;
        _loginButton.layer.masksToBounds = YES;
        [_loginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
    }
    return _loginButton;
}
- (UIButton *)registeredButton{
    if (!_registeredButton) {
        _registeredButton = [[UIButton alloc] init];
        _registeredButton.backgroundColor = [UIColor blueColor];
        [_registeredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_registeredButton.titleLabel setFont:[UIFont systemFontOfSize:12]];
        _registeredButton.layer.cornerRadius = 4.0f;
        _registeredButton.layer.masksToBounds = YES;
        [_registeredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
    }
    return _registeredButton;
}
@end
