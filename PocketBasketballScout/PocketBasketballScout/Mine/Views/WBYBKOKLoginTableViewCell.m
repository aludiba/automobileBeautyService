//
//  WBYBKOKLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WBYBKOKLoginTableViewCell.h"
#import "WBYBKOKTabBarController.h"
#import "WBYBKOKLoginViewController.h"
#import "WBYBKOKScorecardViewController.h"
@interface WBYBKOKLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *WBYBKOKbackView;
@property(nonatomic, strong)UILabel *WBYBKOKaccountLable;
@property(nonatomic, strong)UITextField *WBYBKOKaccountTextField;
@property(nonatomic, copy)NSString *WBYBKOKaccount;
@property(nonatomic, strong)UILabel *WBYBKOKpasswordLable;
@property(nonatomic, strong)UITextField *WBYBKOKWBYBKOKpasswordTextField;
@property(nonatomic, copy)NSString *WBYBKOKpassword;
@property(nonatomic, strong)UIButton *WBYBKOKloginButton;
@property(nonatomic, strong)UIButton *WBYBKOKregisteredButton;
@end
@implementation WBYBKOKLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self WBYBKOKsetContent];
    }
    return self;
}
- (void)WBYBKOKsetContent{
    self.contentView.backgroundColor = WBYBKOKH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.WBYBKOKbackView];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKaccountLable];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKaccountTextField];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKpasswordLable];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKWBYBKOKpasswordTextField];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKloginButton];
    [self.WBYBKOKbackView addSubview:self.WBYBKOKregisteredButton];
    
    [self.WBYBKOKbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(WBYBKOKHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(WBYBKOKWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(WBYBKOKHEIGHT - WBYBKOKHeightNavBar - 343.5));
    }];
    [self.WBYBKOKaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKbackView).offset(40);
        make.leading.equalTo(self.WBYBKOKbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.WBYBKOKaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WBYBKOKaccountLable);
        make.leading.equalTo(self.WBYBKOKaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.WBYBKOKbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.WBYBKOKpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.WBYBKOKbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.WBYBKOKWBYBKOKpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WBYBKOKpasswordLable);
        make.leading.equalTo(self.WBYBKOKpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.WBYBKOKbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.WBYBKOKloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.WBYBKOKbackView).offset(60);
        make.trailing.equalTo(self.WBYBKOKbackView).offset(-60);
        make.top.equalTo(self.WBYBKOKWBYBKOKpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.WBYBKOKregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.WBYBKOKbackView).offset(60);
        make.trailing.equalTo(self.WBYBKOKbackView).offset(-60);
        make.top.equalTo(self.WBYBKOKloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)WBYBKOKbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.WBYBKOKaccount.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.WBYBKOKpassword.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.WBYBKOKaccount password:self.WBYBKOKpassword block:^(AVUser *user, NSError *error) {
            if (user != nil) {
                // 登录成功
                [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[WBYBKOKScorecardViewController shareInstance] WBYBKOKsaveAction];
                   WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            } else {
                // 登录失败（可能是密码错误）
                [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        // 创建实例
        AVUser *user = [AVUser user];
        // 等同于 [user setObject:@"Tom" forKey:@"username"]
        user.username = self.WBYBKOKaccount;
        user.password = self.WBYBKOKpassword;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (succeeded) {
                // 注册成功
                [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.WBYBKOKaccount password:self.WBYBKOKpassword block:^(AVUser *user, NSError *error) {
                    if (user != nil) {
                        // 登录成功
                        if (self.type == 1) {
                        WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[WBYBKOKScorecardViewController shareInstance] WBYBKOKsaveAction];
                        WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            WBYBKOKTabBarController *tabVC = [WBYBKOKTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    } else {
                        // 登录失败（可能是密码错误）
                    }
                }];
            } else {
                // 注册失败（通常是因为用户名已被使用）
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.WBYBKOKaccount = textField.text;
    }else if (textField.tag == 99){
        self.WBYBKOKpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.WBYBKOKaccount = textField.text;
    }else if (textField.tag == 99){
        self.WBYBKOKpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)WBYBKOKbackView{
    if (!_WBYBKOKbackView) {
        _WBYBKOKbackView = [[UIView alloc] init];
        _WBYBKOKbackView.backgroundColor = [UIColor systemRedColor];
        _WBYBKOKbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _WBYBKOKbackView.layer.borderWidth = 1.5f;
        _WBYBKOKbackView.layer.cornerRadius = 16.0f;
        _WBYBKOKbackView.layer.masksToBounds = YES;
    }
    return _WBYBKOKbackView;
}
- (UILabel *)WBYBKOKaccountLable{
    if (!_WBYBKOKaccountLable) {
        _WBYBKOKaccountLable = [[UILabel alloc] init];
        _WBYBKOKaccountLable.text = NSLocalizedString(@"账号", nil);
        _WBYBKOKaccountLable.textColor = [UIColor systemYellowColor];
        _WBYBKOKaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _WBYBKOKaccountLable;
}
- (UITextField *)WBYBKOKaccountTextField{
    if (!_WBYBKOKaccountTextField) {
        _WBYBKOKaccountTextField = [[UITextField alloc] init];
        _WBYBKOKaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WBYBKOKaccountTextField.tag = 98;
        _WBYBKOKaccountTextField.delegate = self;
        _WBYBKOKaccountTextField.textColor = [UIColor systemYellowColor];
        _WBYBKOKaccountTextField.font = [UIFont systemFontOfSize:17];
        _WBYBKOKaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _WBYBKOKaccountTextField;
}
- (UILabel *)WBYBKOKpasswordLable{
    if (!_WBYBKOKpasswordLable) {
        _WBYBKOKpasswordLable = [[UILabel alloc] init];
        _WBYBKOKpasswordLable.text = NSLocalizedString(@"密码", nil);
        _WBYBKOKpasswordLable.textColor = [UIColor systemYellowColor];
        _WBYBKOKpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _WBYBKOKpasswordLable;
}
- (UITextField *)WBYBKOKWBYBKOKpasswordTextField{
    if (!_WBYBKOKWBYBKOKpasswordTextField) {
        _WBYBKOKWBYBKOKpasswordTextField = [[UITextField alloc] init];
        _WBYBKOKWBYBKOKpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WBYBKOKWBYBKOKpasswordTextField.tag = 99;
        _WBYBKOKWBYBKOKpasswordTextField.delegate = self;
        _WBYBKOKWBYBKOKpasswordTextField.textColor = [UIColor systemYellowColor];
        _WBYBKOKWBYBKOKpasswordTextField.font = [UIFont systemFontOfSize:17];
        _WBYBKOKWBYBKOKpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _WBYBKOKWBYBKOKpasswordTextField.secureTextEntry = YES;
    }
    return _WBYBKOKWBYBKOKpasswordTextField;
}
- (UIButton *)WBYBKOKloginButton{
    if (!_WBYBKOKloginButton) {
        _WBYBKOKloginButton = [[UIButton alloc] init];
        _WBYBKOKloginButton.tag = 100;
        _WBYBKOKloginButton.backgroundColor = [UIColor whiteColor];
        [_WBYBKOKloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_WBYBKOKloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _WBYBKOKloginButton.layer.cornerRadius = 12.0f;
        _WBYBKOKloginButton.layer.masksToBounds = YES;
        _WBYBKOKloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _WBYBKOKloginButton.layer.borderWidth = 2.0f;
        [_WBYBKOKloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_WBYBKOKloginButton addTarget:self action:@selector(WBYBKOKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKloginButton;
}
- (UIButton *)WBYBKOKregisteredButton{
    if (!_WBYBKOKregisteredButton) {
        _WBYBKOKregisteredButton = [[UIButton alloc] init];
        _WBYBKOKregisteredButton.tag = 101;
        _WBYBKOKregisteredButton.backgroundColor = [UIColor whiteColor];
        [_WBYBKOKregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_WBYBKOKregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _WBYBKOKregisteredButton.layer.cornerRadius = 12.0f;
        _WBYBKOKregisteredButton.layer.masksToBounds = YES;
        _WBYBKOKregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _WBYBKOKregisteredButton.layer.borderWidth = 2.0f;
        [_WBYBKOKregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_WBYBKOKregisteredButton addTarget:self action:@selector(WBYBKOKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKregisteredButton;
}
@end
