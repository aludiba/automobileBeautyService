//
//  ZLLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ZLLoginTableViewCell.h"
#import "ZLTabBarController.h"
#import "ZLLoginViewController.h"
#import "ZLScorecardViewController.h"
@interface ZLLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ZLbackView;
@property(nonatomic, strong)UILabel *ZLaccountLable;
@property(nonatomic, strong)UITextField *ZLaccountTextField;
@property(nonatomic, copy)NSString *ZLaccount;
@property(nonatomic, strong)UILabel *ZLpasswordLable;
@property(nonatomic, strong)UITextField *ZLZLpasswordTextField;
@property(nonatomic, copy)NSString *ZLpassword;
@property(nonatomic, strong)UIButton *ZLloginButton;
@property(nonatomic, strong)UIButton *ZLregisteredButton;
@end
@implementation ZLLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ZLsetContent];
    }
    return self;
}
- (void)ZLsetContent{
    self.contentView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.ZLbackView];
    [self.ZLbackView addSubview:self.ZLaccountLable];
    [self.ZLbackView addSubview:self.ZLaccountTextField];
    [self.ZLbackView addSubview:self.ZLpasswordLable];
    [self.ZLbackView addSubview:self.ZLZLpasswordTextField];
    [self.ZLbackView addSubview:self.ZLloginButton];
    [self.ZLbackView addSubview:self.ZLregisteredButton];
    
    [self.ZLbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(ZLHeightNavBar + 30);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(ZLWIDTH - 30);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(ZLHEIGHT - ZLHeightNavBar - 343.5));
    }];
    [self.ZLaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLbackView).offset(40);
        make.leading.equalTo(self.ZLbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ZLaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ZLaccountLable);
        make.leading.equalTo(self.ZLaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.ZLbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ZLpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.ZLbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ZLZLpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ZLpasswordLable);
        make.leading.equalTo(self.ZLpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.ZLbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ZLloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ZLbackView).offset(60);
        make.trailing.equalTo(self.ZLbackView).offset(-60);
        make.top.equalTo(self.ZLZLpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.ZLregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ZLbackView).offset(60);
        make.trailing.equalTo(self.ZLbackView).offset(-60);
        make.top.equalTo(self.ZLloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)ZLbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.ZLaccount.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.ZLpassword.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.ZLaccount password:self.ZLpassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[ZLScorecardViewController shareInstance] ZLsaveAction];
                   ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.ZLaccount];
        [bUser setPassword:self.ZLpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.ZLaccount password:self.ZLpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[ZLScorecardViewController shareInstance] ZLsaveAction];
                        ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            ZLTabBarController *tabVC = [ZLTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD ZLshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.ZLaccount = textField.text;
    }else if (textField.tag == 99){
        self.ZLpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.ZLaccount = textField.text;
    }else if (textField.tag == 99){
        self.ZLpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)ZLbackView{
    if (!_ZLbackView) {
        _ZLbackView = [[UIView alloc] init];
        _ZLbackView.backgroundColor = [UIColor systemGreenColor];
        _ZLbackView.layer.cornerRadius = 8.0f;
        _ZLbackView.layer.masksToBounds = YES;
    }
    return _ZLbackView;
}
- (UILabel *)ZLaccountLable{
    if (!_ZLaccountLable) {
        _ZLaccountLable = [[UILabel alloc] init];
        _ZLaccountLable.text = NSLocalizedString(@"账号", nil);
        _ZLaccountLable.textColor = [UIColor whiteColor];
        _ZLaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _ZLaccountLable;
}
- (UITextField *)ZLaccountTextField{
    if (!_ZLaccountTextField) {
        _ZLaccountTextField = [[UITextField alloc] init];
        _ZLaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLaccountTextField.tag = 98;
        _ZLaccountTextField.delegate = self;
        _ZLaccountTextField.textColor = [UIColor blackColor];
        _ZLaccountTextField.font = [UIFont systemFontOfSize:17];
        _ZLaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _ZLaccountTextField;
}
- (UILabel *)ZLpasswordLable{
    if (!_ZLpasswordLable) {
        _ZLpasswordLable = [[UILabel alloc] init];
        _ZLpasswordLable.text = NSLocalizedString(@"密码", nil);
        _ZLpasswordLable.textColor = [UIColor whiteColor];
        _ZLpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _ZLpasswordLable;
}
- (UITextField *)ZLZLpasswordTextField{
    if (!_ZLZLpasswordTextField) {
        _ZLZLpasswordTextField = [[UITextField alloc] init];
        _ZLZLpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLZLpasswordTextField.tag = 99;
        _ZLZLpasswordTextField.delegate = self;
        _ZLZLpasswordTextField.textColor = [UIColor blackColor];
        _ZLZLpasswordTextField.font = [UIFont systemFontOfSize:17];
        _ZLZLpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _ZLZLpasswordTextField.secureTextEntry = YES;
    }
    return _ZLZLpasswordTextField;
}
- (UIButton *)ZLloginButton{
    if (!_ZLloginButton) {
        _ZLloginButton = [[UIButton alloc] init];
        _ZLloginButton.tag = 100;
        _ZLloginButton.backgroundColor = [UIColor greenColor];
        [_ZLloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_ZLloginButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _ZLloginButton.layer.cornerRadius = 8.0f;
        _ZLloginButton.layer.masksToBounds = YES;
        [_ZLloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_ZLloginButton addTarget:self action:@selector(ZLbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLloginButton;
}
- (UIButton *)ZLregisteredButton{
    if (!_ZLregisteredButton) {
        _ZLregisteredButton = [[UIButton alloc] init];
        _ZLregisteredButton.tag = 101;
        _ZLregisteredButton.backgroundColor = [UIColor greenColor];
        [_ZLregisteredButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_ZLregisteredButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _ZLregisteredButton.layer.cornerRadius = 8.0f;
        _ZLregisteredButton.layer.masksToBounds = YES;
        [_ZLregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_ZLregisteredButton addTarget:self action:@selector(ZLbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLregisteredButton;
}
@end
