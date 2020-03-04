//
//  ABLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ABLoginTableViewCell.h"
#import "ABTabBarController.h"
#import "ABLoginViewController.h"
#import "ABScorecardViewController.h"
@interface ABLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ABbackView;
@property(nonatomic, strong)UILabel *ABaccountLable;
@property(nonatomic, strong)UITextField *ABaccountTextField;
@property(nonatomic, copy)NSString *ABaccount;
@property(nonatomic, strong)UILabel *ABpasswordLable;
@property(nonatomic, strong)UITextField *ABABpasswordTextField;
@property(nonatomic, copy)NSString *ABpassword;
@property(nonatomic, strong)UIButton *ABloginButton;
@property(nonatomic, strong)UIButton *ABregisteredButton;
@end
@implementation ABLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ABsetContent];
    }
    return self;
}
- (void)ABsetContent{
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.ABbackView];
    [self.ABbackView addSubview:self.ABaccountLable];
    [self.ABbackView addSubview:self.ABaccountTextField];
    [self.ABbackView addSubview:self.ABpasswordLable];
    [self.ABbackView addSubview:self.ABABpasswordTextField];
    [self.ABbackView addSubview:self.ABloginButton];
    [self.ABbackView addSubview:self.ABregisteredButton];
    
    [self.ABbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(ABHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(ABWIDTH - 30);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(ABHEIGHT - ABHeightNavBar - 343.5));
    }];
    [self.ABaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABbackView).offset(40);
        make.leading.equalTo(self.ABbackView).offset(15);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ABaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ABaccountLable);
        make.leading.equalTo(self.ABaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.ABbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ABpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.ABbackView).offset(15);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ABABpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ABpasswordLable);
        make.leading.equalTo(self.ABpasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.ABbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ABloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ABbackView).offset(60);
        make.trailing.equalTo(self.ABbackView).offset(-60);
        make.top.equalTo(self.ABABpasswordTextField.mas_bottom).offset(55);
        make.height.mas_equalTo(44);
    }];
    [self.ABregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ABbackView).offset(60);
        make.trailing.equalTo(self.ABbackView).offset(-60);
        make.top.equalTo(self.ABloginButton.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)ABbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.ABaccount.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.ABpassword.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.ABaccount password:self.ABpassword   block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    ABTabBarController *tabVC = [ABTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[ABScorecardViewController shareInstance] ABsaveAction];
                   ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    ABTabBarController *tabVC = [ABTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    ABTabBarController *tabVC = [ABTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.ABaccount];
        [bUser setPassword:self.ABpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.ABaccount password:self.ABpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        ABTabBarController *tabVC = [ABTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[ABScorecardViewController shareInstance] ABsaveAction];
                        ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            ABTabBarController *tabVC = [ABTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            ABTabBarController *tabVC = [ABTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.ABaccount = textField.text;
    }else if (textField.tag == 99){
        self.ABpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.ABaccount = textField.text;
    }else if (textField.tag == 99){
        self.ABpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)ABbackView{
    if (!_ABbackView) {
        _ABbackView = [[UIView alloc] init];
        _ABbackView.backgroundColor = ABH_Color(180, 177, 158, 1);
        _ABbackView.layer.cornerRadius = 8.0f;
        _ABbackView.layer.masksToBounds = YES;
    }
    return _ABbackView;
}
- (UILabel *)ABaccountLable{
    if (!_ABaccountLable) {
        _ABaccountLable = [[UILabel alloc] init];
        _ABaccountLable.text = NSLocalizedString(@"账号", nil);
        _ABaccountLable.textColor = [UIColor whiteColor];
        _ABaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _ABaccountLable;
}
- (UITextField *)ABaccountTextField{
    if (!_ABaccountTextField) {
        _ABaccountTextField = [[UITextField alloc] init];
        _ABaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ABaccountTextField.tag = 98;
        _ABaccountTextField.delegate = self;
        _ABaccountTextField.textColor = [UIColor blackColor];
        _ABaccountTextField.font = [UIFont systemFontOfSize:17];
        _ABaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _ABaccountTextField;
}
- (UILabel *)ABpasswordLable{
    if (!_ABpasswordLable) {
        _ABpasswordLable = [[UILabel alloc] init];
        _ABpasswordLable.text = NSLocalizedString(@"密码", nil);
        _ABpasswordLable.textColor = [UIColor whiteColor];
        _ABpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _ABpasswordLable;
}
- (UITextField *)ABABpasswordTextField{
    if (!_ABABpasswordTextField) {
        _ABABpasswordTextField = [[UITextField alloc] init];
        _ABABpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ABABpasswordTextField.tag = 99;
        _ABABpasswordTextField.delegate = self;
        _ABABpasswordTextField.textColor = [UIColor blackColor];
        _ABABpasswordTextField.font = [UIFont systemFontOfSize:17];
        _ABABpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _ABABpasswordTextField.secureTextEntry = YES;
    }
    return _ABABpasswordTextField;
}
- (UIButton *)ABloginButton{
    if (!_ABloginButton) {
        _ABloginButton = [[UIButton alloc] init];
        _ABloginButton.tag = 100;
        _ABloginButton.backgroundColor = [UIColor whiteColor];
        [_ABloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ABloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _ABloginButton.layer.cornerRadius = 8.0f;
        _ABloginButton.layer.masksToBounds = YES;
        [_ABloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_ABloginButton addTarget:self action:@selector(ABbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABloginButton;
}
- (UIButton *)ABregisteredButton{
    if (!_ABregisteredButton) {
        _ABregisteredButton = [[UIButton alloc] init];
        _ABregisteredButton.tag = 101;
        _ABregisteredButton.backgroundColor = [UIColor whiteColor];
        [_ABregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ABregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _ABregisteredButton.layer.cornerRadius = 8.0f;
        _ABregisteredButton.layer.masksToBounds = YES;
        [_ABregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_ABregisteredButton addTarget:self action:@selector(ABbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABregisteredButton;
}
@end
