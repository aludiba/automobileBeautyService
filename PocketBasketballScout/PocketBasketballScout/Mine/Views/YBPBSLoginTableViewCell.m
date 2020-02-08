//
//  YBPBSLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPBSLoginTableViewCell.h"
#import "YBPBSTabBarController.h"
#import "YBPBSLoginViewController.h"
#import "YBPBSScorecardViewController.h"
@interface YBPBSLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *YBPBSbackView;
@property(nonatomic, strong)UILabel *YBPBSaccountLable;
@property(nonatomic, strong)UITextField *YBPBSaccountTextField;
@property(nonatomic, copy)NSString *YBPBSaccount;
@property(nonatomic, strong)UILabel *YBPBSpasswordLable;
@property(nonatomic, strong)UITextField *YBPBSYBPBSpasswordTextField;
@property(nonatomic, copy)NSString *YBPBSpassword;
@property(nonatomic, strong)UIButton *YBPBSloginButton;
@property(nonatomic, strong)UIButton *YBPBSregisteredButton;
@end
@implementation YBPBSLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self YBPBSsetContent];
    }
    return self;
}
- (void)YBPBSsetContent{
    self.contentView.backgroundColor = YBPBSH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.YBPBSbackView];
    [self.YBPBSbackView addSubview:self.YBPBSaccountLable];
    [self.YBPBSbackView addSubview:self.YBPBSaccountTextField];
    [self.YBPBSbackView addSubview:self.YBPBSpasswordLable];
    [self.YBPBSbackView addSubview:self.YBPBSYBPBSpasswordTextField];
    [self.YBPBSbackView addSubview:self.YBPBSloginButton];
    [self.YBPBSbackView addSubview:self.YBPBSregisteredButton];
    
    [self.YBPBSbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(YBPBSHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(YBPBSWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(YBPBSHEIGHT - YBPBSHeightNavBar - 343.5));
    }];
    [self.YBPBSaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSbackView).offset(40);
        make.leading.equalTo(self.YBPBSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.YBPBSaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBPBSaccountLable);
        make.leading.equalTo(self.YBPBSaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.YBPBSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.YBPBSpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.YBPBSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.YBPBSYBPBSpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBPBSpasswordLable);
        make.leading.equalTo(self.YBPBSpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.YBPBSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.YBPBSloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YBPBSbackView).offset(60);
        make.trailing.equalTo(self.YBPBSbackView).offset(-60);
        make.top.equalTo(self.YBPBSYBPBSpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.YBPBSregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YBPBSbackView).offset(60);
        make.trailing.equalTo(self.YBPBSbackView).offset(-60);
        make.top.equalTo(self.YBPBSloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)YBPBSbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.YBPBSaccount.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.YBPBSpassword.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.YBPBSaccount password:self.YBPBSpassword block:^(AVUser *user, NSError *error) {
            if (user != nil) {
                // 登录成功
                [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[YBPBSScorecardViewController shareInstance] YBPBSsaveAction];
                   YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            } else {
                // 登录失败（可能是密码错误）
                [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        // 创建实例
        AVUser *user = [AVUser user];
        // 等同于 [user setObject:@"Tom" forKey:@"username"]
        user.username = self.YBPBSaccount;
        user.password = self.YBPBSpassword;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (succeeded) {
                // 注册成功
                [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.YBPBSaccount password:self.YBPBSpassword block:^(AVUser *user, NSError *error) {
                    if (user != nil) {
                        // 登录成功
                        if (self.type == 1) {
                        YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[YBPBSScorecardViewController shareInstance] YBPBSsaveAction];
                        YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            YBPBSTabBarController *tabVC = [YBPBSTabBarController shareInstance];
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
        self.YBPBSaccount = textField.text;
    }else if (textField.tag == 99){
        self.YBPBSpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.YBPBSaccount = textField.text;
    }else if (textField.tag == 99){
        self.YBPBSpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)YBPBSbackView{
    if (!_YBPBSbackView) {
        _YBPBSbackView = [[UIView alloc] init];
        _YBPBSbackView.backgroundColor = [UIColor systemRedColor];
        _YBPBSbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _YBPBSbackView.layer.borderWidth = 1.5f;
        _YBPBSbackView.layer.cornerRadius = 16.0f;
        _YBPBSbackView.layer.masksToBounds = YES;
    }
    return _YBPBSbackView;
}
- (UILabel *)YBPBSaccountLable{
    if (!_YBPBSaccountLable) {
        _YBPBSaccountLable = [[UILabel alloc] init];
        _YBPBSaccountLable.text = NSLocalizedString(@"账号", nil);
        _YBPBSaccountLable.textColor = [UIColor systemYellowColor];
        _YBPBSaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _YBPBSaccountLable;
}
- (UITextField *)YBPBSaccountTextField{
    if (!_YBPBSaccountTextField) {
        _YBPBSaccountTextField = [[UITextField alloc] init];
        _YBPBSaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBPBSaccountTextField.tag = 98;
        _YBPBSaccountTextField.delegate = self;
        _YBPBSaccountTextField.textColor = [UIColor systemYellowColor];
        _YBPBSaccountTextField.font = [UIFont systemFontOfSize:17];
        _YBPBSaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _YBPBSaccountTextField;
}
- (UILabel *)YBPBSpasswordLable{
    if (!_YBPBSpasswordLable) {
        _YBPBSpasswordLable = [[UILabel alloc] init];
        _YBPBSpasswordLable.text = NSLocalizedString(@"密码", nil);
        _YBPBSpasswordLable.textColor = [UIColor systemYellowColor];
        _YBPBSpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _YBPBSpasswordLable;
}
- (UITextField *)YBPBSYBPBSpasswordTextField{
    if (!_YBPBSYBPBSpasswordTextField) {
        _YBPBSYBPBSpasswordTextField = [[UITextField alloc] init];
        _YBPBSYBPBSpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBPBSYBPBSpasswordTextField.tag = 99;
        _YBPBSYBPBSpasswordTextField.delegate = self;
        _YBPBSYBPBSpasswordTextField.textColor = [UIColor systemYellowColor];
        _YBPBSYBPBSpasswordTextField.font = [UIFont systemFontOfSize:17];
        _YBPBSYBPBSpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _YBPBSYBPBSpasswordTextField.secureTextEntry = YES;
    }
    return _YBPBSYBPBSpasswordTextField;
}
- (UIButton *)YBPBSloginButton{
    if (!_YBPBSloginButton) {
        _YBPBSloginButton = [[UIButton alloc] init];
        _YBPBSloginButton.tag = 100;
        _YBPBSloginButton.backgroundColor = [UIColor whiteColor];
        [_YBPBSloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_YBPBSloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBPBSloginButton.layer.cornerRadius = 12.0f;
        _YBPBSloginButton.layer.masksToBounds = YES;
        _YBPBSloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _YBPBSloginButton.layer.borderWidth = 2.0f;
        [_YBPBSloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_YBPBSloginButton addTarget:self action:@selector(YBPBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSloginButton;
}
- (UIButton *)YBPBSregisteredButton{
    if (!_YBPBSregisteredButton) {
        _YBPBSregisteredButton = [[UIButton alloc] init];
        _YBPBSregisteredButton.tag = 101;
        _YBPBSregisteredButton.backgroundColor = [UIColor whiteColor];
        [_YBPBSregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_YBPBSregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBPBSregisteredButton.layer.cornerRadius = 12.0f;
        _YBPBSregisteredButton.layer.masksToBounds = YES;
        _YBPBSregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _YBPBSregisteredButton.layer.borderWidth = 2.0f;
        [_YBPBSregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_YBPBSregisteredButton addTarget:self action:@selector(YBPBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSregisteredButton;
}
@end
