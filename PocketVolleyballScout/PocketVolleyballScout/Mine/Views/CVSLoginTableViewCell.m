//
//  CVSLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CVSLoginTableViewCell.h"
#import "CVSTabBarController.h"
#import "CVSLoginViewController.h"
#import "CVSScorecardViewController.h"
@interface CVSLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CVSbackView;
@property(nonatomic, strong)UILabel *CVSaccountLable;
@property(nonatomic, strong)UITextField *CVSaccountTextField;
@property(nonatomic, copy)NSString *CVSaccount;
@property(nonatomic, strong)UILabel *CVSpasswordLable;
@property(nonatomic, strong)UITextField *CVSCVSpasswordTextField;
@property(nonatomic, copy)NSString *CVSpassword;
@property(nonatomic, strong)UIButton *CVSloginButton;
@property(nonatomic, strong)UIButton *CVSregisteredButton;
@end
@implementation CVSLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CVSsetContent];
    }
    return self;
}
- (void)CVSsetContent{
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CVSbackView];
    [self.CVSbackView addSubview:self.CVSaccountLable];
    [self.CVSbackView addSubview:self.CVSaccountTextField];
    [self.CVSbackView addSubview:self.CVSpasswordLable];
    [self.CVSbackView addSubview:self.CVSCVSpasswordTextField];
    [self.CVSbackView addSubview:self.CVSloginButton];
    [self.CVSbackView addSubview:self.CVSregisteredButton];
    
    [self.CVSbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(CVSHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(CVSWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(CVSHEIGHT - CVSHeightNavBar - 343.5));
    }];
    [self.CVSaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSbackView).offset(40);
        make.leading.equalTo(self.CVSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CVSaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CVSaccountLable);
        make.leading.equalTo(self.CVSaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CVSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CVSpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.CVSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CVSCVSpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CVSpasswordLable);
        make.leading.equalTo(self.CVSpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CVSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CVSloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CVSbackView).offset(60);
        make.trailing.equalTo(self.CVSbackView).offset(-60);
        make.top.equalTo(self.CVSCVSpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.CVSregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CVSbackView).offset(60);
        make.trailing.equalTo(self.CVSbackView).offset(-60);
        make.top.equalTo(self.CVSloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CVSbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.CVSaccount.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.CVSpassword.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.CVSaccount password:self.CVSpassword   block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[CVSScorecardViewController shareInstance] CVSsaveAction];
                   CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.CVSaccount];
        [bUser setPassword:self.CVSpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.CVSaccount password:self.CVSpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[CVSScorecardViewController shareInstance] CVSsaveAction];
                        CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            CVSTabBarController *tabVC = [CVSTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD CVSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.CVSaccount = textField.text;
    }else if (textField.tag == 99){
        self.CVSpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.CVSaccount = textField.text;
    }else if (textField.tag == 99){
        self.CVSpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)CVSbackView{
    if (!_CVSbackView) {
        _CVSbackView = [[UIView alloc] init];
        _CVSbackView.backgroundColor = CVSH_Color(180, 177, 158, 1);
        _CVSbackView.layer.cornerRadius = 8.0f;
        _CVSbackView.layer.masksToBounds = YES;
    }
    return _CVSbackView;
}
- (UILabel *)CVSaccountLable{
    if (!_CVSaccountLable) {
        _CVSaccountLable = [[UILabel alloc] init];
        _CVSaccountLable.text = NSLocalizedString(@"账号", nil);
        _CVSaccountLable.textColor = [UIColor whiteColor];
        _CVSaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _CVSaccountLable;
}
- (UITextField *)CVSaccountTextField{
    if (!_CVSaccountTextField) {
        _CVSaccountTextField = [[UITextField alloc] init];
        _CVSaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CVSaccountTextField.tag = 98;
        _CVSaccountTextField.delegate = self;
        _CVSaccountTextField.textColor = [UIColor blackColor];
        _CVSaccountTextField.font = [UIFont systemFontOfSize:17];
        _CVSaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _CVSaccountTextField;
}
- (UILabel *)CVSpasswordLable{
    if (!_CVSpasswordLable) {
        _CVSpasswordLable = [[UILabel alloc] init];
        _CVSpasswordLable.text = NSLocalizedString(@"密码", nil);
        _CVSpasswordLable.textColor = [UIColor whiteColor];
        _CVSpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _CVSpasswordLable;
}
- (UITextField *)CVSCVSpasswordTextField{
    if (!_CVSCVSpasswordTextField) {
        _CVSCVSpasswordTextField = [[UITextField alloc] init];
        _CVSCVSpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CVSCVSpasswordTextField.tag = 99;
        _CVSCVSpasswordTextField.delegate = self;
        _CVSCVSpasswordTextField.textColor = [UIColor blackColor];
        _CVSCVSpasswordTextField.font = [UIFont systemFontOfSize:17];
        _CVSCVSpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _CVSCVSpasswordTextField.secureTextEntry = YES;
    }
    return _CVSCVSpasswordTextField;
}
- (UIButton *)CVSloginButton{
    if (!_CVSloginButton) {
        _CVSloginButton = [[UIButton alloc] init];
        _CVSloginButton.tag = 100;
        _CVSloginButton.backgroundColor = [UIColor whiteColor];
        [_CVSloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CVSloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CVSloginButton.layer.cornerRadius = 8.0f;
        _CVSloginButton.layer.masksToBounds = YES;
        [_CVSloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_CVSloginButton addTarget:self action:@selector(CVSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSloginButton;
}
- (UIButton *)CVSregisteredButton{
    if (!_CVSregisteredButton) {
        _CVSregisteredButton = [[UIButton alloc] init];
        _CVSregisteredButton.tag = 101;
        _CVSregisteredButton.backgroundColor = [UIColor whiteColor];
        [_CVSregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CVSregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CVSregisteredButton.layer.cornerRadius = 8.0f;
        _CVSregisteredButton.layer.masksToBounds = YES;
        [_CVSregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_CVSregisteredButton addTarget:self action:@selector(CVSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSregisteredButton;
}
@end
