//
//  BTLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "BTLoginTableViewCell.h"
#import "BTTabBarController.h"
#import "BTLoginViewController.h"
#import "BTScorecardViewController.h"
@interface BTLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *BTbackView;
@property(nonatomic, strong)UILabel *BTaccountLable;
@property(nonatomic, strong)UITextField *BTaccountTextField;
@property(nonatomic, copy)NSString *BTaccount;
@property(nonatomic, strong)UILabel *BTpasswordLable;
@property(nonatomic, strong)UITextField *BTBTpasswordTextField;
@property(nonatomic, copy)NSString *BTpassword;
@property(nonatomic, strong)UIButton *BTloginButton;
@property(nonatomic, strong)UIButton *BTregisteredButton;
@end
@implementation BTLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self BTsetContent];
    }
    return self;
}
- (void)BTsetContent{
    self.contentView.backgroundColor = BTH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.BTbackView];
    [self.BTbackView addSubview:self.BTaccountLable];
    [self.BTbackView addSubview:self.BTaccountTextField];
    [self.BTbackView addSubview:self.BTpasswordLable];
    [self.BTbackView addSubview:self.BTBTpasswordTextField];
    [self.BTbackView addSubview:self.BTloginButton];
    [self.BTbackView addSubview:self.BTregisteredButton];
    
    [self.BTbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(BTHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(BTWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(BTHEIGHT - BTHeightNavBar - 343.5));
    }];
    [self.BTaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTbackView).offset(40);
        make.leading.equalTo(self.BTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.BTaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BTaccountLable);
        make.leading.equalTo(self.BTaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.BTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.BTpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.BTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.BTBTpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BTpasswordLable);
        make.leading.equalTo(self.BTpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.BTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.BTloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BTbackView).offset(60);
        make.trailing.equalTo(self.BTbackView).offset(-60);
        make.top.equalTo(self.BTBTpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.BTregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BTbackView).offset(60);
        make.trailing.equalTo(self.BTbackView).offset(-60);
        make.top.equalTo(self.BTloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)BTbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.BTaccount.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.BTpassword.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.BTaccount password:self.BTpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    BTTabBarController *tabVC = [BTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[BTScorecardViewController shareInstance] BTsaveAction];
                   BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    BTTabBarController *tabVC = [BTTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    BTTabBarController *tabVC = [BTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.BTaccount];
        [bUser setPassword:self.BTpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.BTaccount password:self.BTpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        BTTabBarController *tabVC = [BTTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[BTScorecardViewController shareInstance] BTsaveAction];
                        BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            BTTabBarController *tabVC = [BTTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            BTTabBarController *tabVC = [BTTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD BTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.BTaccount = textField.text;
    }else if (textField.tag == 99){
        self.BTpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.BTaccount = textField.text;
    }else if (textField.tag == 99){
        self.BTpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)BTbackView{
    if (!_BTbackView) {
        _BTbackView = [[UIView alloc] init];
        _BTbackView.backgroundColor = [UIColor systemRedColor];
        _BTbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _BTbackView.layer.borderWidth = 1.5f;
        _BTbackView.layer.cornerRadius = 16.0f;
        _BTbackView.layer.masksToBounds = YES;
    }
    return _BTbackView;
}
- (UILabel *)BTaccountLable{
    if (!_BTaccountLable) {
        _BTaccountLable = [[UILabel alloc] init];
        _BTaccountLable.text = NSLocalizedString(@"账号", nil);
        _BTaccountLable.textColor = [UIColor systemYellowColor];
        _BTaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _BTaccountLable;
}
- (UITextField *)BTaccountTextField{
    if (!_BTaccountTextField) {
        _BTaccountTextField = [[UITextField alloc] init];
        _BTaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BTaccountTextField.tag = 98;
        _BTaccountTextField.delegate = self;
        _BTaccountTextField.textColor = [UIColor systemYellowColor];
        _BTaccountTextField.font = [UIFont systemFontOfSize:17];
        _BTaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _BTaccountTextField;
}
- (UILabel *)BTpasswordLable{
    if (!_BTpasswordLable) {
        _BTpasswordLable = [[UILabel alloc] init];
        _BTpasswordLable.text = NSLocalizedString(@"密码", nil);
        _BTpasswordLable.textColor = [UIColor systemYellowColor];
        _BTpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _BTpasswordLable;
}
- (UITextField *)BTBTpasswordTextField{
    if (!_BTBTpasswordTextField) {
        _BTBTpasswordTextField = [[UITextField alloc] init];
        _BTBTpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BTBTpasswordTextField.tag = 99;
        _BTBTpasswordTextField.delegate = self;
        _BTBTpasswordTextField.textColor = [UIColor systemYellowColor];
        _BTBTpasswordTextField.font = [UIFont systemFontOfSize:17];
        _BTBTpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _BTBTpasswordTextField.secureTextEntry = YES;
    }
    return _BTBTpasswordTextField;
}
- (UIButton *)BTloginButton{
    if (!_BTloginButton) {
        _BTloginButton = [[UIButton alloc] init];
        _BTloginButton.tag = 100;
        _BTloginButton.backgroundColor = [UIColor whiteColor];
        [_BTloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_BTloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _BTloginButton.layer.cornerRadius = 12.0f;
        _BTloginButton.layer.masksToBounds = YES;
        _BTloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _BTloginButton.layer.borderWidth = 2.0f;
        [_BTloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_BTloginButton addTarget:self action:@selector(BTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTloginButton;
}
- (UIButton *)BTregisteredButton{
    if (!_BTregisteredButton) {
        _BTregisteredButton = [[UIButton alloc] init];
        _BTregisteredButton.tag = 101;
        _BTregisteredButton.backgroundColor = [UIColor whiteColor];
        [_BTregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_BTregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _BTregisteredButton.layer.cornerRadius = 12.0f;
        _BTregisteredButton.layer.masksToBounds = YES;
        _BTregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _BTregisteredButton.layer.borderWidth = 2.0f;
        [_BTregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_BTregisteredButton addTarget:self action:@selector(BTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTregisteredButton;
}
@end
