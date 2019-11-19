//
//  VTLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "VTLoginTableViewCell.h"
#import "VTTabBarController.h"
#import "VTLoginViewController.h"
#import "VTScorecardViewController.h"
@interface VTLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *VTbackView;
@property(nonatomic, strong)UILabel *VTaccountLable;
@property(nonatomic, strong)UITextField *VTaccountTextField;
@property(nonatomic, copy)NSString *VTaccount;
@property(nonatomic, strong)UILabel *VTpasswordLable;
@property(nonatomic, strong)UITextField *VTVTpasswordTextField;
@property(nonatomic, copy)NSString *VTpassword;
@property(nonatomic, strong)UIButton *VTloginButton;
@property(nonatomic, strong)UIButton *VTregisteredButton;
@end
@implementation VTLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self VTsetContent];
    }
    return self;
}
- (void)VTsetContent{
    self.contentView.backgroundColor = VTH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.VTbackView];
    [self.VTbackView addSubview:self.VTaccountLable];
    [self.VTbackView addSubview:self.VTaccountTextField];
    [self.VTbackView addSubview:self.VTpasswordLable];
    [self.VTbackView addSubview:self.VTVTpasswordTextField];
    [self.VTbackView addSubview:self.VTloginButton];
    [self.VTbackView addSubview:self.VTregisteredButton];
    
    [self.VTbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(VTHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(VTWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(VTHEIGHT - VTHeightNavBar - 343.5));
    }];
    [self.VTaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTbackView).offset(40);
        make.leading.equalTo(self.VTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.VTaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.VTaccountLable);
        make.leading.equalTo(self.VTaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.VTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.VTpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.VTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.VTVTpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.VTpasswordLable);
        make.leading.equalTo(self.VTpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.VTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.VTloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.VTbackView).offset(60);
        make.trailing.equalTo(self.VTbackView).offset(-60);
        make.top.equalTo(self.VTVTpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.VTregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.VTbackView).offset(60);
        make.trailing.equalTo(self.VTbackView).offset(-60);
        make.top.equalTo(self.VTloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)VTbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.VTaccount.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.VTpassword.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.VTaccount password:self.VTpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    VTTabBarController *tabVC = [VTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[VTScorecardViewController shareInstance] VTsaveAction];
                   VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    VTTabBarController *tabVC = [VTTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    VTTabBarController *tabVC = [VTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.VTaccount];
        [bUser setPassword:self.VTpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.VTaccount password:self.VTpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        VTTabBarController *tabVC = [VTTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[VTScorecardViewController shareInstance] VTsaveAction];
                        VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            VTTabBarController *tabVC = [VTTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            VTTabBarController *tabVC = [VTTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD VTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.VTaccount = textField.text;
    }else if (textField.tag == 99){
        self.VTpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.VTaccount = textField.text;
    }else if (textField.tag == 99){
        self.VTpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)VTbackView{
    if (!_VTbackView) {
        _VTbackView = [[UIView alloc] init];
        _VTbackView.backgroundColor = [UIColor systemRedColor];
        _VTbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _VTbackView.layer.borderWidth = 1.5f;
        _VTbackView.layer.cornerRadius = 16.0f;
        _VTbackView.layer.masksToBounds = YES;
    }
    return _VTbackView;
}
- (UILabel *)VTaccountLable{
    if (!_VTaccountLable) {
        _VTaccountLable = [[UILabel alloc] init];
        _VTaccountLable.text = NSLocalizedString(@"账号", nil);
        _VTaccountLable.textColor = [UIColor systemYellowColor];
        _VTaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _VTaccountLable;
}
- (UITextField *)VTaccountTextField{
    if (!_VTaccountTextField) {
        _VTaccountTextField = [[UITextField alloc] init];
        _VTaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _VTaccountTextField.tag = 98;
        _VTaccountTextField.delegate = self;
        _VTaccountTextField.textColor = [UIColor systemYellowColor];
        _VTaccountTextField.font = [UIFont systemFontOfSize:17];
        _VTaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _VTaccountTextField;
}
- (UILabel *)VTpasswordLable{
    if (!_VTpasswordLable) {
        _VTpasswordLable = [[UILabel alloc] init];
        _VTpasswordLable.text = NSLocalizedString(@"密码", nil);
        _VTpasswordLable.textColor = [UIColor systemYellowColor];
        _VTpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _VTpasswordLable;
}
- (UITextField *)VTVTpasswordTextField{
    if (!_VTVTpasswordTextField) {
        _VTVTpasswordTextField = [[UITextField alloc] init];
        _VTVTpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _VTVTpasswordTextField.tag = 99;
        _VTVTpasswordTextField.delegate = self;
        _VTVTpasswordTextField.textColor = [UIColor systemYellowColor];
        _VTVTpasswordTextField.font = [UIFont systemFontOfSize:17];
        _VTVTpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _VTVTpasswordTextField.secureTextEntry = YES;
    }
    return _VTVTpasswordTextField;
}
- (UIButton *)VTloginButton{
    if (!_VTloginButton) {
        _VTloginButton = [[UIButton alloc] init];
        _VTloginButton.tag = 100;
        _VTloginButton.backgroundColor = [UIColor whiteColor];
        [_VTloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_VTloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _VTloginButton.layer.cornerRadius = 12.0f;
        _VTloginButton.layer.masksToBounds = YES;
        _VTloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _VTloginButton.layer.borderWidth = 2.0f;
        [_VTloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_VTloginButton addTarget:self action:@selector(VTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTloginButton;
}
- (UIButton *)VTregisteredButton{
    if (!_VTregisteredButton) {
        _VTregisteredButton = [[UIButton alloc] init];
        _VTregisteredButton.tag = 101;
        _VTregisteredButton.backgroundColor = [UIColor whiteColor];
        [_VTregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_VTregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _VTregisteredButton.layer.cornerRadius = 12.0f;
        _VTregisteredButton.layer.masksToBounds = YES;
        _VTregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _VTregisteredButton.layer.borderWidth = 2.0f;
        [_VTregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_VTregisteredButton addTarget:self action:@selector(VTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTregisteredButton;
}
@end
