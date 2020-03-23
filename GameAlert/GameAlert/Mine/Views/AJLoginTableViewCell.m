//
//  AJLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJLoginTableViewCell.h"
#import "AJTabBarController.h"
#import "AJLoginViewController.h"
#import "AJClockViewController.h"
@interface AJLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AJbackView;
@property(nonatomic, strong)UILabel *AJaccountLable;
@property(nonatomic, strong)UITextField *AJaccountTextField;
@property(nonatomic, strong)UIView *AJline;
@property(nonatomic, copy)NSString *AJaccount;
@property(nonatomic, strong)UILabel *AJpasswordLable;
@property(nonatomic, strong)UITextField *AJAJpasswordTextField;
@property(nonatomic, strong)UIView *AJline1;
@property(nonatomic, copy)NSString *AJpassword;
@property(nonatomic, strong)UIButton *AJloginButton;
@property(nonatomic, strong)UIButton *AJregisteredButton;
@end
@implementation AJLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AJsetContent];
    }
    return self;
}
- (void)AJsetContent{
    self.contentView.backgroundColor = AJH_Color(44, 77, 93, 0.5);
    [self.contentView addSubview:self.AJbackView];
    [self.AJbackView addSubview:self.AJaccountLable];
    [self.AJbackView addSubview:self.AJaccountTextField];
    [self.AJbackView addSubview:self.AJline];
    [self.AJbackView addSubview:self.AJpasswordLable];
    [self.AJbackView addSubview:self.AJAJpasswordTextField];
    [self.AJbackView addSubview:self.AJline1];
    [self.AJbackView addSubview:self.AJloginButton];
    [self.AJbackView addSubview:self.AJregisteredButton];
    
    [self.AJbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(AJHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(AJWIDTH - 40);
        make.height.mas_equalTo(400);
        make.bottom.equalTo(self.contentView).offset(-(AJHEIGHT - AJHeightNavBar - 50 - 400));
    }];
    [self.AJaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AJbackView).offset(50);
        make.leading.equalTo(self.AJbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AJaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AJaccountLable);
        make.leading.equalTo(self.AJaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AJbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AJline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AJaccountTextField.mas_bottom);
               make.leading.equalTo(self.AJbackView).offset(16);
               make.trailing.equalTo(self.AJbackView);
               make.height.mas_equalTo(1);
    }];
    [self.AJpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AJaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.AJbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AJAJpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AJpasswordLable);
        make.leading.equalTo(self.AJpasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AJbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AJline1 mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.AJAJpasswordTextField.mas_bottom);
                  make.leading.equalTo(self.AJbackView).offset(16);
                  make.trailing.equalTo(self.AJbackView);
                  make.height.mas_equalTo(1);
       }];
    [self.AJloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AJbackView).offset(50);
        make.trailing.equalTo(self.AJbackView).offset(-50);
        make.top.equalTo(self.AJAJpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.AJregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AJbackView).offset(50);
        make.trailing.equalTo(self.AJbackView).offset(-50);
        make.top.equalTo(self.AJloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)AJbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.AJaccount.length) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.AJpassword.length) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.AJaccount password:self.AJpassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.AJtype == 1) {
                    AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    if ([AJClockViewController AJshareInstance].AJselectIndex == 1) {
                        [[AJClockViewController AJshareInstance] AJsaveAction];
                    }
                    AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
                    loginVC.AJtype = 0;
                }else if (self.AJtype == 2){
                    AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
                    loginVC.AJtype = 0;
                }else{
                    AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.AJaccount];
        [bUser setPassword:self.AJpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.AJaccount password:self.AJpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.AJtype == 1) {
                        AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        if ([AJClockViewController AJshareInstance].AJselectIndex == 1) {
                            [[AJClockViewController AJshareInstance] AJsaveAction];
                        }                        AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
                        loginVC.AJtype = 0;
                        }else if (self.AJtype == 2){
                            AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            AJLoginViewController *loginVC = [AJLoginViewController AJshareInstance];
                            loginVC.AJtype = 0;
                        }else{
                            AJTabBarController *tabVC = [AJTabBarController AJshareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD AJshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.AJaccount = textField.text;
    }else if (textField.tag == 99){
        self.AJpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.AJaccount = textField.text;
    }else if (textField.tag == 99){
        self.AJpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)AJbackView{
    if (!_AJbackView) {
        _AJbackView = [[UIView alloc] init];
        _AJbackView.layer.cornerRadius = 8.0f;
        _AJbackView.layer.masksToBounds = YES;
        _AJbackView.backgroundColor = [UIColor clearColor];
    }
    return _AJbackView;
}
- (UILabel *)AJaccountLable{
    if (!_AJaccountLable) {
        _AJaccountLable = [[UILabel alloc] init];
        _AJaccountLable.text = NSLocalizedString(@"账号", nil);
        _AJaccountLable.textColor = [UIColor grayColor];
        _AJaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _AJaccountLable;
}
- (UITextField *)AJaccountTextField{
    if (!_AJaccountTextField) {
        _AJaccountTextField = [[UITextField alloc] init];
        _AJaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AJaccountTextField.tag = 98;
        _AJaccountTextField.delegate = self;
        _AJaccountTextField.textColor = [UIColor blackColor];
        _AJaccountTextField.font = [UIFont systemFontOfSize:18];
        _AJaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _AJaccountTextField;
}
- (UIView *)AJline{
    if (!_AJline) {
        _AJline = [[UIView alloc] init];
        _AJline.backgroundColor = AJH_Color(230, 230, 230, 1);
    }
    return _AJline;
}
- (UILabel *)AJpasswordLable{
    if (!_AJpasswordLable) {
        _AJpasswordLable = [[UILabel alloc] init];
        _AJpasswordLable.text = NSLocalizedString(@"密码", nil);
        _AJpasswordLable.textColor = [UIColor grayColor];
        _AJpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _AJpasswordLable;
}
- (UITextField *)AJAJpasswordTextField{
    if (!_AJAJpasswordTextField) {
        _AJAJpasswordTextField = [[UITextField alloc] init];
        _AJAJpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AJAJpasswordTextField.tag = 99;
        _AJAJpasswordTextField.delegate = self;
        _AJAJpasswordTextField.textColor = [UIColor blackColor];
        _AJAJpasswordTextField.font = [UIFont systemFontOfSize:18];
        _AJAJpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _AJAJpasswordTextField.secureTextEntry = YES;
    }
    return _AJAJpasswordTextField;
}
- (UIView *)AJline1{
    if (!_AJline1) {
        _AJline1 = [[UIView alloc] init];
        _AJline1.backgroundColor = AJH_Color(230, 230, 230, 1);
    }
    return _AJline1;
}
- (UIButton *)AJloginButton{
    if (!_AJloginButton) {
        _AJloginButton = [[UIButton alloc] init];
        _AJloginButton.tag = 100;
        _AJloginButton.backgroundColor = [UIColor whiteColor];
        [_AJloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AJloginButton.layer.cornerRadius = 6.0f;
        _AJloginButton.layer.masksToBounds = YES;
        [_AJloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_AJloginButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJloginButton;
}
- (UIButton *)AJregisteredButton{
    if (!_AJregisteredButton) {
        _AJregisteredButton = [[UIButton alloc] init];
        _AJregisteredButton.tag = 101;
        _AJregisteredButton.backgroundColor = [UIColor whiteColor];
        [_AJregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AJregisteredButton.layer.cornerRadius = 6.0f;
        _AJregisteredButton.layer.masksToBounds = YES;
        [_AJregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_AJregisteredButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJregisteredButton;
}
@end
