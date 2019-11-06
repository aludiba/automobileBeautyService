//
//  YBLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBLoginTableViewCell.h"
#import "YBTabBarController.h"
#import "YBLoginViewController.h"
#import "YBScorecardViewController.h"
@interface YBLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *YBbackView;
@property(nonatomic, strong)UILabel *YBaccountLable;
@property(nonatomic, strong)UITextField *YBaccountTextField;
@property(nonatomic, copy)NSString *YBaccount;
@property(nonatomic, strong)UILabel *YBpasswordLable;
@property(nonatomic, strong)UITextField *YBYBpasswordTextField;
@property(nonatomic, copy)NSString *YBpassword;
@property(nonatomic, strong)UIButton *YBloginButton;
@property(nonatomic, strong)UIButton *YBregisteredButton;
@end
@implementation YBLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self YBsetContent];
    }
    return self;
}
- (void)YBsetContent{
    self.contentView.backgroundColor = YBH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.YBbackView];
    [self.YBbackView addSubview:self.YBaccountLable];
    [self.YBbackView addSubview:self.YBaccountTextField];
    [self.YBbackView addSubview:self.YBpasswordLable];
    [self.YBbackView addSubview:self.YBYBpasswordTextField];
    [self.YBbackView addSubview:self.YBloginButton];
    [self.YBbackView addSubview:self.YBregisteredButton];
    
    [self.YBbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(YBHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(YBWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(YBHEIGHT - YBHeightNavBar - 343.5));
    }];
    [self.YBaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBbackView).offset(40);
        make.leading.equalTo(self.YBbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.YBaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBaccountLable);
        make.leading.equalTo(self.YBaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.YBbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.YBpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.YBbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.YBYBpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBpasswordLable);
        make.leading.equalTo(self.YBpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.YBbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.YBloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YBbackView).offset(60);
        make.trailing.equalTo(self.YBbackView).offset(-60);
        make.top.equalTo(self.YBYBpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.YBregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YBbackView).offset(60);
        make.trailing.equalTo(self.YBbackView).offset(-60);
        make.top.equalTo(self.YBloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)YBbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.YBaccount.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.YBpassword.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.YBaccount password:self.YBpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    YBTabBarController *tabVC = [YBTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[YBScorecardViewController shareInstance] YBsaveAction];
                   YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    YBTabBarController *tabVC = [YBTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    YBTabBarController *tabVC = [YBTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.YBaccount];
        [bUser setPassword:self.YBpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.YBaccount password:self.YBpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        YBTabBarController *tabVC = [YBTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[YBScorecardViewController shareInstance] YBsaveAction];
                        YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            YBTabBarController *tabVC = [YBTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            YBLoginViewController *loginVC = [YBLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            YBTabBarController *tabVC = [YBTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD YBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.YBaccount = textField.text;
    }else if (textField.tag == 99){
        self.YBpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.YBaccount = textField.text;
    }else if (textField.tag == 99){
        self.YBpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)YBbackView{
    if (!_YBbackView) {
        _YBbackView = [[UIView alloc] init];
        _YBbackView.backgroundColor = [UIColor cyanColor];
        _YBbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _YBbackView.layer.borderWidth = 1.0f;
        _YBbackView.layer.cornerRadius = 8.0f;
        _YBbackView.layer.masksToBounds = YES;
    }
    return _YBbackView;
}
- (UILabel *)YBaccountLable{
    if (!_YBaccountLable) {
        _YBaccountLable = [[UILabel alloc] init];
        _YBaccountLable.text = NSLocalizedString(@"账号", nil);
        _YBaccountLable.textColor = [UIColor blackColor];
        _YBaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _YBaccountLable;
}
- (UITextField *)YBaccountTextField{
    if (!_YBaccountTextField) {
        _YBaccountTextField = [[UITextField alloc] init];
        _YBaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBaccountTextField.tag = 98;
        _YBaccountTextField.delegate = self;
        _YBaccountTextField.textColor = [UIColor blackColor];
        _YBaccountTextField.font = [UIFont systemFontOfSize:15];
        _YBaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _YBaccountTextField;
}
- (UILabel *)YBpasswordLable{
    if (!_YBpasswordLable) {
        _YBpasswordLable = [[UILabel alloc] init];
        _YBpasswordLable.text = NSLocalizedString(@"密码", nil);
        _YBpasswordLable.textColor = [UIColor blackColor];
        _YBpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _YBpasswordLable;
}
- (UITextField *)YBYBpasswordTextField{
    if (!_YBYBpasswordTextField) {
        _YBYBpasswordTextField = [[UITextField alloc] init];
        _YBYBpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBYBpasswordTextField.tag = 99;
        _YBYBpasswordTextField.delegate = self;
        _YBYBpasswordTextField.textColor = [UIColor blackColor];
        _YBYBpasswordTextField.font = [UIFont systemFontOfSize:15];
        _YBYBpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _YBYBpasswordTextField.secureTextEntry = YES;
    }
    return _YBYBpasswordTextField;
}
- (UIButton *)YBloginButton{
    if (!_YBloginButton) {
        _YBloginButton = [[UIButton alloc] init];
        _YBloginButton.tag = 100;
        _YBloginButton.backgroundColor = [UIColor cyanColor];
        [_YBloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YBloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _YBloginButton.layer.cornerRadius = 4.0f;
        _YBloginButton.layer.masksToBounds = YES;
        _YBloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YBloginButton.layer.borderWidth = 1.0f;
        [_YBloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_YBloginButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBloginButton;
}
- (UIButton *)YBregisteredButton{
    if (!_YBregisteredButton) {
        _YBregisteredButton = [[UIButton alloc] init];
        _YBregisteredButton.tag = 101;
        _YBregisteredButton.backgroundColor = [UIColor cyanColor];
        [_YBregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YBregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _YBregisteredButton.layer.cornerRadius = 4.0f;
        _YBregisteredButton.layer.masksToBounds = YES;
        _YBregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YBregisteredButton.layer.borderWidth = 1.0f;
        [_YBregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_YBregisteredButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBregisteredButton;
}
@end
