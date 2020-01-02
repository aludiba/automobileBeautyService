//
//  PLNLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PLNLoginTableViewCell.h"
#import "PLNTabBarController.h"
#import "PLNLoginViewController.h"
#import "PLNLuckyNumbersViewController.h"
@interface PLNLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PLNbackView;
@property(nonatomic, strong)UILabel *PLNaccountLable;
@property(nonatomic, strong)UITextField *PLNaccountTextField;
@property(nonatomic, copy)NSString *PLNaccount;
@property(nonatomic, strong)UILabel *PLNpasswordLable;
@property(nonatomic, strong)UITextField *PLNPLNpasswordTextField;
@property(nonatomic, copy)NSString *PLNpassword;
@property(nonatomic, strong)UIButton *PLNloginButton;
@property(nonatomic, strong)UIButton *PLNregisteredButton;
@end
@implementation PLNLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PLNsetContent];
    }
    return self;
}
- (void)PLNsetContent{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.PLNbackView];
    [self.PLNbackView addSubview:self.PLNaccountLable];
    [self.PLNbackView addSubview:self.PLNaccountTextField];
    [self.PLNbackView addSubview:self.PLNpasswordLable];
    [self.PLNbackView addSubview:self.PLNPLNpasswordTextField];
    [self.PLNbackView addSubview:self.PLNloginButton];
    [self.PLNbackView addSubview:self.PLNregisteredButton];
    
    [self.PLNbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PLNHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PLNWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PLNHEIGHT - PLNHeightNavBar - 343.5));
    }];
    [self.PLNaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PLNbackView).offset(40);
        make.leading.equalTo(self.PLNbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PLNaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PLNaccountLable);
        make.leading.equalTo(self.PLNaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PLNbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PLNpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PLNaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PLNbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PLNPLNpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PLNpasswordLable);
        make.leading.equalTo(self.PLNpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PLNbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PLNloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PLNbackView).offset(60);
        make.trailing.equalTo(self.PLNbackView).offset(-60);
        make.top.equalTo(self.PLNPLNpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PLNregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PLNbackView).offset(60);
        make.trailing.equalTo(self.PLNbackView).offset(-60);
        make.top.equalTo(self.PLNloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PLNbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PLNaccount.length) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PLNpassword.length) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PLNaccount password:self.PLNpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[PLNLuckyNumbersViewController shareInstance] PLNsaveAction];
                   PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PLNaccount];
        [bUser setPassword:self.PLNpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PLNaccount password:self.PLNpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[PLNLuckyNumbersViewController shareInstance] PLNsaveAction];
                        PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            PLNTabBarController *tabVC = [PLNTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD PLNshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PLNaccount = textField.text;
    }else if (textField.tag == 99){
        self.PLNpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PLNaccount = textField.text;
    }else if (textField.tag == 99){
        self.PLNpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PLNbackView{
    if (!_PLNbackView) {
        _PLNbackView = [[UIView alloc] init];
        _PLNbackView.backgroundColor = [UIColor systemRedColor];
        _PLNbackView.layer.cornerRadius = 6.0f;
        _PLNbackView.layer.masksToBounds = YES;
    }
    return _PLNbackView;
}
- (UILabel *)PLNaccountLable{
    if (!_PLNaccountLable) {
        _PLNaccountLable = [[UILabel alloc] init];
        _PLNaccountLable.text = NSLocalizedString(@"账号", nil);
        _PLNaccountLable.textColor = [UIColor whiteColor];
        _PLNaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _PLNaccountLable;
}
- (UITextField *)PLNaccountTextField{
    if (!_PLNaccountTextField) {
        _PLNaccountTextField = [[UITextField alloc] init];
        _PLNaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PLNaccountTextField.tag = 98;
        _PLNaccountTextField.delegate = self;
        _PLNaccountTextField.textColor = [UIColor blackColor];
        _PLNaccountTextField.font = [UIFont systemFontOfSize:17];
        _PLNaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PLNaccountTextField;
}
- (UILabel *)PLNpasswordLable{
    if (!_PLNpasswordLable) {
        _PLNpasswordLable = [[UILabel alloc] init];
        _PLNpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PLNpasswordLable.textColor = [UIColor whiteColor];
        _PLNpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _PLNpasswordLable;
}
- (UITextField *)PLNPLNpasswordTextField{
    if (!_PLNPLNpasswordTextField) {
        _PLNPLNpasswordTextField = [[UITextField alloc] init];
        _PLNPLNpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PLNPLNpasswordTextField.tag = 99;
        _PLNPLNpasswordTextField.delegate = self;
        _PLNPLNpasswordTextField.textColor = [UIColor blackColor];
        _PLNPLNpasswordTextField.font = [UIFont systemFontOfSize:17];
        _PLNPLNpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PLNPLNpasswordTextField.secureTextEntry = YES;
    }
    return _PLNPLNpasswordTextField;
}
- (UIButton *)PLNloginButton{
    if (!_PLNloginButton) {
        _PLNloginButton = [[UIButton alloc] init];
        _PLNloginButton.tag = 100;
        _PLNloginButton.backgroundColor = [UIColor cyanColor];
        [_PLNloginButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_PLNloginButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _PLNloginButton.layer.cornerRadius = 4.0f;
        _PLNloginButton.layer.masksToBounds = YES;
        [_PLNloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PLNloginButton addTarget:self action:@selector(PLNbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNloginButton;
}
- (UIButton *)PLNregisteredButton{
    if (!_PLNregisteredButton) {
        _PLNregisteredButton = [[UIButton alloc] init];
        _PLNregisteredButton.tag = 101;
        _PLNregisteredButton.backgroundColor = [UIColor cyanColor];
        [_PLNregisteredButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_PLNregisteredButton.titleLabel setFont:[UIFont boldSystemFontOfSize:20]];
        _PLNregisteredButton.layer.cornerRadius = 4.0f;
        _PLNregisteredButton.layer.masksToBounds = YES;
        [_PLNregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PLNregisteredButton addTarget:self action:@selector(PLNbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNregisteredButton;
}
@end
