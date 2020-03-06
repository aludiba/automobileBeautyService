//
//  CALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CALoginTableViewCell.h"
#import "CATabBarController.h"
#import "CALoginViewController.h"
#import "CAScorecardViewController.h"
@interface CALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CAbackView;
@property(nonatomic, strong)UILabel *CAaccountLable;
@property(nonatomic, strong)UITextField *CAaccountTextField;
@property(nonatomic, copy)NSString *CAaccount;
@property(nonatomic, strong)UILabel *CApasswordLable;
@property(nonatomic, strong)UITextField *CACApasswordTextField;
@property(nonatomic, copy)NSString *CApassword;
@property(nonatomic, strong)UIButton *CAloginButton;
@property(nonatomic, strong)UIButton *CAregisteredButton;
@end
@implementation CALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CAsetContent];
    }
    return self;
}
- (void)CAsetContent{
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.CAbackView];
    [self.CAbackView addSubview:self.CAaccountLable];
    [self.CAbackView addSubview:self.CAaccountTextField];
    [self.CAbackView addSubview:self.CApasswordLable];
    [self.CAbackView addSubview:self.CACApasswordTextField];
    [self.CAbackView addSubview:self.CAloginButton];
    [self.CAbackView addSubview:self.CAregisteredButton];
    
    [self.CAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(CAHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(CAWIDTH - 30);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(CAHEIGHT - CAHeightNavBar - 343.5));
    }];
    [self.CAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAbackView).offset(40);
        make.leading.equalTo(self.CAbackView).offset(15);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CAaccountLable);
        make.leading.equalTo(self.CAaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.CAbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.CAbackView).offset(15);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CACApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CApasswordLable);
        make.leading.equalTo(self.CApasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.CAbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CAbackView).offset(60);
        make.trailing.equalTo(self.CAbackView).offset(-60);
        make.top.equalTo(self.CACApasswordTextField.mas_bottom).offset(55);
        make.height.mas_equalTo(44);
    }];
    [self.CAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CAbackView).offset(60);
        make.trailing.equalTo(self.CAbackView).offset(-60);
        make.top.equalTo(self.CAloginButton.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CAbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.CAaccount.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.CApassword.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.CAaccount password:self.CApassword   block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    CATabBarController *tabVC = [CATabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[CAScorecardViewController shareInstance] CAsaveAction];
                   CALoginViewController *loginVC = [CALoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    CATabBarController *tabVC = [CATabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    CALoginViewController *loginVC = [CALoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    CATabBarController *tabVC = [CATabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.CAaccount];
        [bUser setPassword:self.CApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.CAaccount password:self.CApassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        CATabBarController *tabVC = [CATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[CAScorecardViewController shareInstance] CAsaveAction];
                        CALoginViewController *loginVC = [CALoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            CATabBarController *tabVC = [CATabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            CALoginViewController *loginVC = [CALoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            CATabBarController *tabVC = [CATabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD CAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.CAaccount = textField.text;
    }else if (textField.tag == 99){
        self.CApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.CAaccount = textField.text;
    }else if (textField.tag == 99){
        self.CApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)CAbackView{
    if (!_CAbackView) {
        _CAbackView = [[UIView alloc] init];
        _CAbackView.backgroundColor = CAH_Color(180, 177, 158, 1);
        _CAbackView.layer.cornerRadius = 8.0f;
        _CAbackView.layer.masksToBounds = YES;
    }
    return _CAbackView;
}
- (UILabel *)CAaccountLable{
    if (!_CAaccountLable) {
        _CAaccountLable = [[UILabel alloc] init];
        _CAaccountLable.text = NSLocalizedString(@"账号", nil);
        _CAaccountLable.textColor = [UIColor whiteColor];
        _CAaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _CAaccountLable;
}
- (UITextField *)CAaccountTextField{
    if (!_CAaccountTextField) {
        _CAaccountTextField = [[UITextField alloc] init];
        _CAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CAaccountTextField.tag = 98;
        _CAaccountTextField.delegate = self;
        _CAaccountTextField.textColor = [UIColor blackColor];
        _CAaccountTextField.font = [UIFont systemFontOfSize:17];
        _CAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _CAaccountTextField;
}
- (UILabel *)CApasswordLable{
    if (!_CApasswordLable) {
        _CApasswordLable = [[UILabel alloc] init];
        _CApasswordLable.text = NSLocalizedString(@"密码", nil);
        _CApasswordLable.textColor = [UIColor whiteColor];
        _CApasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _CApasswordLable;
}
- (UITextField *)CACApasswordTextField{
    if (!_CACApasswordTextField) {
        _CACApasswordTextField = [[UITextField alloc] init];
        _CACApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CACApasswordTextField.tag = 99;
        _CACApasswordTextField.delegate = self;
        _CACApasswordTextField.textColor = [UIColor blackColor];
        _CACApasswordTextField.font = [UIFont systemFontOfSize:17];
        _CACApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _CACApasswordTextField.secureTextEntry = YES;
    }
    return _CACApasswordTextField;
}
- (UIButton *)CAloginButton{
    if (!_CAloginButton) {
        _CAloginButton = [[UIButton alloc] init];
        _CAloginButton.tag = 100;
        _CAloginButton.backgroundColor = [UIColor whiteColor];
        [_CAloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CAloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CAloginButton.layer.cornerRadius = 8.0f;
        _CAloginButton.layer.masksToBounds = YES;
        [_CAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_CAloginButton addTarget:self action:@selector(CAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CAloginButton;
}
- (UIButton *)CAregisteredButton{
    if (!_CAregisteredButton) {
        _CAregisteredButton = [[UIButton alloc] init];
        _CAregisteredButton.tag = 101;
        _CAregisteredButton.backgroundColor = [UIColor whiteColor];
        [_CAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CAregisteredButton.layer.cornerRadius = 8.0f;
        _CAregisteredButton.layer.masksToBounds = YES;
        [_CAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_CAregisteredButton addTarget:self action:@selector(CAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CAregisteredButton;
}
@end
