//
//  IALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "IALoginTableViewCell.h"
#import "IATabBarController.h"
#import "IALoginViewController.h"
#import "IALuckyNumbersViewController.h"
@interface IALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *IAbackView;
@property(nonatomic, strong)UILabel *IAaccountLable;
@property(nonatomic, strong)UITextField *IAaccountTextField;
@property(nonatomic, copy)NSString *IAaccount;
@property(nonatomic, strong)UILabel *IApasswordLable;
@property(nonatomic, strong)UITextField *IAIApasswordTextField;
@property(nonatomic, copy)NSString *IApassword;
@property(nonatomic, strong)UIButton *IAloginButton;
@property(nonatomic, strong)UIButton *IAregisteredButton;
@end
@implementation IALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self IAsetContent];
    }
    return self;
}
- (void)IAsetContent{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.IAbackView];
    [self.IAbackView addSubview:self.IAaccountLable];
    [self.IAbackView addSubview:self.IAaccountTextField];
    [self.IAbackView addSubview:self.IApasswordLable];
    [self.IAbackView addSubview:self.IAIApasswordTextField];
    [self.IAbackView addSubview:self.IAloginButton];
    [self.IAbackView addSubview:self.IAregisteredButton];
    
    [self.IAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(IAHeightNavBar + 20);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(IAWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(IAHEIGHT - IAHeightNavBar - 343.5));
    }];
    [self.IAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.IAbackView).offset(40);
        make.leading.equalTo(self.IAbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.IAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.IAaccountLable);
        make.leading.equalTo(self.IAaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.IAbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.IApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.IAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.IAbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.IAIApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.IApasswordLable);
        make.leading.equalTo(self.IApasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.IAbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.IAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.IAbackView).offset(60);
        make.trailing.equalTo(self.IAbackView).offset(-60);
        make.top.equalTo(self.IAIApasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.IAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.IAbackView).offset(60);
        make.trailing.equalTo(self.IAbackView).offset(-60);
        make.top.equalTo(self.IAloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)IAbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.IAaccount.length) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.IApassword.length) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.IAaccount password:self.IApassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    IATabBarController *tabVC = [IATabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[IALuckyNumbersViewController shareInstance] IAsaveAction];
                   IALoginViewController *loginVC = [IALoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    IATabBarController *tabVC = [IATabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    IALoginViewController *loginVC = [IALoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    IATabBarController *tabVC = [IATabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.IAaccount];
        [bUser setPassword:self.IApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.IAaccount password:self.IApassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        IATabBarController *tabVC = [IATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[IALuckyNumbersViewController shareInstance] IAsaveAction];
                        IALoginViewController *loginVC = [IALoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            IATabBarController *tabVC = [IATabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            IALoginViewController *loginVC = [IALoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            IATabBarController *tabVC = [IATabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD IAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.IAaccount = textField.text;
    }else if (textField.tag == 99){
        self.IApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.IAaccount = textField.text;
    }else if (textField.tag == 99){
        self.IApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)IAbackView{
    if (!_IAbackView) {
        _IAbackView = [[UIView alloc] init];
        _IAbackView.backgroundColor = [UIColor redColor];
        _IAbackView.layer.cornerRadius = 16.0f;
        _IAbackView.layer.masksToBounds = YES;
    }
    return _IAbackView;
}
- (UILabel *)IAaccountLable{
    if (!_IAaccountLable) {
        _IAaccountLable = [[UILabel alloc] init];
        _IAaccountLable.text = NSLocalizedString(@"账号", nil);
        _IAaccountLable.textColor = [UIColor whiteColor];
        _IAaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _IAaccountLable;
}
- (UITextField *)IAaccountTextField{
    if (!_IAaccountTextField) {
        _IAaccountTextField = [[UITextField alloc] init];
        _IAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _IAaccountTextField.tag = 98;
        _IAaccountTextField.delegate = self;
        _IAaccountTextField.textColor = [UIColor blackColor];
        _IAaccountTextField.font = [UIFont systemFontOfSize:17];
        _IAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _IAaccountTextField;
}
- (UILabel *)IApasswordLable{
    if (!_IApasswordLable) {
        _IApasswordLable = [[UILabel alloc] init];
        _IApasswordLable.text = NSLocalizedString(@"密码", nil);
        _IApasswordLable.textColor = [UIColor whiteColor];
        _IApasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _IApasswordLable;
}
- (UITextField *)IAIApasswordTextField{
    if (!_IAIApasswordTextField) {
        _IAIApasswordTextField = [[UITextField alloc] init];
        _IAIApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _IAIApasswordTextField.tag = 99;
        _IAIApasswordTextField.delegate = self;
        _IAIApasswordTextField.textColor = [UIColor blackColor];
        _IAIApasswordTextField.font = [UIFont systemFontOfSize:17];
        _IAIApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _IAIApasswordTextField.secureTextEntry = YES;
    }
    return _IAIApasswordTextField;
}
- (UIButton *)IAloginButton{
    if (!_IAloginButton) {
        _IAloginButton = [[UIButton alloc] init];
        _IAloginButton.tag = 100;
        _IAloginButton.backgroundColor = [UIColor blueColor];
        [_IAloginButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_IAloginButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _IAloginButton.layer.cornerRadius = 8.0f;
        _IAloginButton.layer.masksToBounds = YES;
        [_IAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_IAloginButton addTarget:self action:@selector(IAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IAloginButton;
}
- (UIButton *)IAregisteredButton{
    if (!_IAregisteredButton) {
        _IAregisteredButton = [[UIButton alloc] init];
        _IAregisteredButton.tag = 101;
        _IAregisteredButton.backgroundColor = [UIColor purpleColor];
        [_IAregisteredButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_IAregisteredButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _IAregisteredButton.layer.cornerRadius = 8.0f;
        _IAregisteredButton.layer.masksToBounds = YES;
        [_IAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_IAregisteredButton addTarget:self action:@selector(IAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IAregisteredButton;
}
@end
