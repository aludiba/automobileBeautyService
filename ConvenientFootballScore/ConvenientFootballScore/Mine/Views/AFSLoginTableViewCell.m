//
//  AFSLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFSLoginTableViewCell.h"
#import "AFSTabBarController.h"
#import "AFSLoginViewController.h"
#import "AFSScorecardViewController.h"
@interface AFSLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AFSbackView;
@property(nonatomic, strong)UILabel *AFSaccountLable;
@property(nonatomic, strong)UITextField *AFSaccountTextField;
@property(nonatomic, copy)NSString *AFSaccount;
@property(nonatomic, strong)UILabel *AFSpasswordLable;
@property(nonatomic, strong)UITextField *AFSAFSpasswordTextField;
@property(nonatomic, copy)NSString *AFSpassword;
@property(nonatomic, strong)UIButton *AFSloginButton;
@property(nonatomic, strong)UIButton *AFSregisteredButton;
@end
@implementation AFSLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSsetContent];
    }
    return self;
}
- (void)AFSsetContent{
    self.contentView.backgroundColor = AFSH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.AFSbackView];
    [self.AFSbackView addSubview:self.AFSaccountLable];
    [self.AFSbackView addSubview:self.AFSaccountTextField];
    [self.AFSbackView addSubview:self.AFSpasswordLable];
    [self.AFSbackView addSubview:self.AFSAFSpasswordTextField];
    [self.AFSbackView addSubview:self.AFSloginButton];
    [self.AFSbackView addSubview:self.AFSregisteredButton];
    
    [self.AFSbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(AFSHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(AFSWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(AFSHEIGHT - AFSHeightNavBar - 343.5));
    }];
    [self.AFSaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSbackView).offset(40);
        make.leading.equalTo(self.AFSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.AFSaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFSaccountLable);
        make.leading.equalTo(self.AFSaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.AFSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.AFSpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.AFSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.AFSAFSpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFSpasswordLable);
        make.leading.equalTo(self.AFSpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.AFSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.AFSloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AFSbackView).offset(60);
        make.trailing.equalTo(self.AFSbackView).offset(-60);
        make.top.equalTo(self.AFSAFSpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.AFSregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AFSbackView).offset(60);
        make.trailing.equalTo(self.AFSbackView).offset(-60);
        make.top.equalTo(self.AFSloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)AFSbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.AFSaccount.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.AFSpassword.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.AFSaccount password:self.AFSpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[AFSScorecardViewController shareInstance] AFSsaveAction];
                   AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.AFSaccount];
        [bUser setPassword:self.AFSpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.AFSaccount password:self.AFSpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[AFSScorecardViewController shareInstance] AFSsaveAction];
                        AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            AFSTabBarController *tabVC = [AFSTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD AFSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.AFSaccount = textField.text;
    }else if (textField.tag == 99){
        self.AFSpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.AFSaccount = textField.text;
    }else if (textField.tag == 99){
        self.AFSpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)AFSbackView{
    if (!_AFSbackView) {
        _AFSbackView = [[UIView alloc] init];
        _AFSbackView.backgroundColor = AFSH_Color(0, 204, 131, 1);
        _AFSbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSbackView.layer.borderWidth = 1.0f;
        _AFSbackView.layer.cornerRadius = 8.0f;
        _AFSbackView.layer.masksToBounds = YES;
    }
    return _AFSbackView;
}
- (UILabel *)AFSaccountLable{
    if (!_AFSaccountLable) {
        _AFSaccountLable = [[UILabel alloc] init];
        _AFSaccountLable.text = NSLocalizedString(@"账号", nil);
        _AFSaccountLable.textColor = [UIColor blackColor];
        _AFSaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _AFSaccountLable;
}
- (UITextField *)AFSaccountTextField{
    if (!_AFSaccountTextField) {
        _AFSaccountTextField = [[UITextField alloc] init];
        _AFSaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFSaccountTextField.tag = 98;
        _AFSaccountTextField.delegate = self;
        _AFSaccountTextField.textColor = [UIColor blackColor];
        _AFSaccountTextField.font = [UIFont systemFontOfSize:17];
        _AFSaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _AFSaccountTextField;
}
- (UILabel *)AFSpasswordLable{
    if (!_AFSpasswordLable) {
        _AFSpasswordLable = [[UILabel alloc] init];
        _AFSpasswordLable.text = NSLocalizedString(@"密码", nil);
        _AFSpasswordLable.textColor = [UIColor blackColor];
        _AFSpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _AFSpasswordLable;
}
- (UITextField *)AFSAFSpasswordTextField{
    if (!_AFSAFSpasswordTextField) {
        _AFSAFSpasswordTextField = [[UITextField alloc] init];
        _AFSAFSpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFSAFSpasswordTextField.tag = 99;
        _AFSAFSpasswordTextField.delegate = self;
        _AFSAFSpasswordTextField.textColor = [UIColor blackColor];
        _AFSAFSpasswordTextField.font = [UIFont systemFontOfSize:17];
        _AFSAFSpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _AFSAFSpasswordTextField.secureTextEntry = YES;
    }
    return _AFSAFSpasswordTextField;
}
- (UIButton *)AFSloginButton{
    if (!_AFSloginButton) {
        _AFSloginButton = [[UIButton alloc] init];
        _AFSloginButton.tag = 100;
        _AFSloginButton.backgroundColor = [UIColor whiteColor];
        [_AFSloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFSloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _AFSloginButton.layer.cornerRadius = 6.0f;
        _AFSloginButton.layer.masksToBounds = YES;
        _AFSloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSloginButton.layer.borderWidth = 2.0f;
        [_AFSloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_AFSloginButton addTarget:self action:@selector(AFSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSloginButton;
}
- (UIButton *)AFSregisteredButton{
    if (!_AFSregisteredButton) {
        _AFSregisteredButton = [[UIButton alloc] init];
        _AFSregisteredButton.tag = 101;
        _AFSregisteredButton.backgroundColor = [UIColor whiteColor];
        [_AFSregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFSregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _AFSregisteredButton.layer.cornerRadius = 6.0f;
        _AFSregisteredButton.layer.masksToBounds = YES;
        _AFSregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFSregisteredButton.layer.borderWidth = 2.0f;
        [_AFSregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_AFSregisteredButton addTarget:self action:@selector(AFSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSregisteredButton;
}
@end
