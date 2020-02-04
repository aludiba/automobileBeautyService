//
//  CBSLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CBSLoginTableViewCell.h"
#import "CBSTabBarController.h"
#import "CBSLoginViewController.h"
#import "CBSScorecardViewController.h"
@interface CBSLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CBSbackView;
@property(nonatomic, strong)UILabel *CBSaccountLable;
@property(nonatomic, strong)UITextField *CBSaccountTextField;
@property(nonatomic, copy)NSString *CBSaccount;
@property(nonatomic, strong)UILabel *CBSpasswordLable;
@property(nonatomic, strong)UITextField *CBSCBSpasswordTextField;
@property(nonatomic, copy)NSString *CBSpassword;
@property(nonatomic, strong)UIButton *CBSloginButton;
@property(nonatomic, strong)UIButton *CBSregisteredButton;
@end
@implementation CBSLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CBSsetContent];
    }
    return self;
}
- (void)CBSsetContent{
    self.contentView.backgroundColor = CBSH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.CBSbackView];
    [self.CBSbackView addSubview:self.CBSaccountLable];
    [self.CBSbackView addSubview:self.CBSaccountTextField];
    [self.CBSbackView addSubview:self.CBSpasswordLable];
    [self.CBSbackView addSubview:self.CBSCBSpasswordTextField];
    [self.CBSbackView addSubview:self.CBSloginButton];
    [self.CBSbackView addSubview:self.CBSregisteredButton];
    
    [self.CBSbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(CBSHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(CBSWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(CBSHEIGHT - CBSHeightNavBar - 343.5));
    }];
    [self.CBSaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSbackView).offset(40);
        make.leading.equalTo(self.CBSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CBSaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CBSaccountLable);
        make.leading.equalTo(self.CBSaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CBSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CBSpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.CBSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CBSCBSpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CBSpasswordLable);
        make.leading.equalTo(self.CBSpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CBSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CBSloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CBSbackView).offset(60);
        make.trailing.equalTo(self.CBSbackView).offset(-60);
        make.top.equalTo(self.CBSCBSpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.CBSregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CBSbackView).offset(60);
        make.trailing.equalTo(self.CBSbackView).offset(-60);
        make.top.equalTo(self.CBSloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CBSbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.CBSaccount.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.CBSpassword.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.CBSaccount password:self.CBSpassword block:^(AVUser *user, NSError *error) {
            if (user != nil) {
                // 登录成功
                [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[CBSScorecardViewController shareInstance] CBSsaveAction];
                   CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            } else {
                // 登录失败（可能是密码错误）
                [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        // 创建实例
        AVUser *user = [AVUser user];
        // 等同于 [user setObject:@"Tom" forKey:@"username"]
        user.username = self.CBSaccount;
        user.password = self.CBSpassword;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (succeeded) {
                // 注册成功
                [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.CBSaccount password:self.CBSpassword block:^(AVUser *user, NSError *error) {
                    if (user != nil) {
                        // 登录成功
                        if (self.type == 1) {
                        CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[CBSScorecardViewController shareInstance] CBSsaveAction];
                        CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            CBSTabBarController *tabVC = [CBSTabBarController shareInstance];
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
        self.CBSaccount = textField.text;
    }else if (textField.tag == 99){
        self.CBSpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.CBSaccount = textField.text;
    }else if (textField.tag == 99){
        self.CBSpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)CBSbackView{
    if (!_CBSbackView) {
        _CBSbackView = [[UIView alloc] init];
        _CBSbackView.backgroundColor = [UIColor systemRedColor];
        _CBSbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _CBSbackView.layer.borderWidth = 1.5f;
        _CBSbackView.layer.cornerRadius = 16.0f;
        _CBSbackView.layer.masksToBounds = YES;
    }
    return _CBSbackView;
}
- (UILabel *)CBSaccountLable{
    if (!_CBSaccountLable) {
        _CBSaccountLable = [[UILabel alloc] init];
        _CBSaccountLable.text = NSLocalizedString(@"账号", nil);
        _CBSaccountLable.textColor = [UIColor systemYellowColor];
        _CBSaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _CBSaccountLable;
}
- (UITextField *)CBSaccountTextField{
    if (!_CBSaccountTextField) {
        _CBSaccountTextField = [[UITextField alloc] init];
        _CBSaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CBSaccountTextField.tag = 98;
        _CBSaccountTextField.delegate = self;
        _CBSaccountTextField.textColor = [UIColor systemYellowColor];
        _CBSaccountTextField.font = [UIFont systemFontOfSize:17];
        _CBSaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _CBSaccountTextField;
}
- (UILabel *)CBSpasswordLable{
    if (!_CBSpasswordLable) {
        _CBSpasswordLable = [[UILabel alloc] init];
        _CBSpasswordLable.text = NSLocalizedString(@"密码", nil);
        _CBSpasswordLable.textColor = [UIColor systemYellowColor];
        _CBSpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _CBSpasswordLable;
}
- (UITextField *)CBSCBSpasswordTextField{
    if (!_CBSCBSpasswordTextField) {
        _CBSCBSpasswordTextField = [[UITextField alloc] init];
        _CBSCBSpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CBSCBSpasswordTextField.tag = 99;
        _CBSCBSpasswordTextField.delegate = self;
        _CBSCBSpasswordTextField.textColor = [UIColor systemYellowColor];
        _CBSCBSpasswordTextField.font = [UIFont systemFontOfSize:17];
        _CBSCBSpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _CBSCBSpasswordTextField.secureTextEntry = YES;
    }
    return _CBSCBSpasswordTextField;
}
- (UIButton *)CBSloginButton{
    if (!_CBSloginButton) {
        _CBSloginButton = [[UIButton alloc] init];
        _CBSloginButton.tag = 100;
        _CBSloginButton.backgroundColor = [UIColor whiteColor];
        [_CBSloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_CBSloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CBSloginButton.layer.cornerRadius = 12.0f;
        _CBSloginButton.layer.masksToBounds = YES;
        _CBSloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _CBSloginButton.layer.borderWidth = 2.0f;
        [_CBSloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_CBSloginButton addTarget:self action:@selector(CBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSloginButton;
}
- (UIButton *)CBSregisteredButton{
    if (!_CBSregisteredButton) {
        _CBSregisteredButton = [[UIButton alloc] init];
        _CBSregisteredButton.tag = 101;
        _CBSregisteredButton.backgroundColor = [UIColor whiteColor];
        [_CBSregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_CBSregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CBSregisteredButton.layer.cornerRadius = 12.0f;
        _CBSregisteredButton.layer.masksToBounds = YES;
        _CBSregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _CBSregisteredButton.layer.borderWidth = 2.0f;
        [_CBSregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_CBSregisteredButton addTarget:self action:@selector(CBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSregisteredButton;
}
@end
