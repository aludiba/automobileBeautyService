//
//  ADLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ADLoginTableViewCell.h"
#import "ADTabBarController.h"
#import "ADLoginViewController.h"
#import "ADScorecardViewController.h"
@interface ADLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ADbackView;
@property(nonatomic, strong)UILabel *ADaccountLable;
@property(nonatomic, strong)UITextField *ADaccountTextField;
@property(nonatomic, copy)NSString *ADaccount;
@property(nonatomic, strong)UILabel *ADpasswordLable;
@property(nonatomic, strong)UITextField *ADADpasswordTextField;
@property(nonatomic, copy)NSString *ADpassword;
@property(nonatomic, strong)UIButton *ADloginButton;
@property(nonatomic, strong)UIButton *ADregisteredButton;
@end
@implementation ADLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ADsetContent];
    }
    return self;
}
- (void)ADsetContent{
    self.contentView.backgroundColor = ADH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.ADbackView];
    [self.ADbackView addSubview:self.ADaccountLable];
    [self.ADbackView addSubview:self.ADaccountTextField];
    [self.ADbackView addSubview:self.ADpasswordLable];
    [self.ADbackView addSubview:self.ADADpasswordTextField];
    [self.ADbackView addSubview:self.ADloginButton];
    [self.ADbackView addSubview:self.ADregisteredButton];
    
    [self.ADbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(ADHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(ADWIDTH);
        make.height.mas_equalTo(360);
        make.bottom.equalTo(self.contentView).offset(-(ADHEIGHT - ADHeightNavBar - 360));
    }];
    [self.ADaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADbackView).offset(40);
        make.leading.equalTo(self.ADbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ADaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ADaccountLable);
        make.leading.equalTo(self.ADaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.ADbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ADpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.ADbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.ADADpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ADpasswordLable);
        make.leading.equalTo(self.ADpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.ADbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.ADloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ADbackView).offset(60);
        make.trailing.equalTo(self.ADbackView).offset(-60);
        make.top.equalTo(self.ADADpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.ADregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ADbackView).offset(60);
        make.trailing.equalTo(self.ADbackView).offset(-60);
        make.top.equalTo(self.ADloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)ADbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.ADaccount.length) {
        [MBProgressHUD ADshowReminderText:@"Please enter account number"];
        return;
    }
    if (!self.ADpassword.length) {
        [MBProgressHUD ADshowReminderText:@"Please enter password"];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.ADaccount password:self.ADpassword block:^(AVUser *user, NSError *error) {
            if (user != nil) {
                // 登录成功
                [MBProgressHUD ADshowReminderText:@"Login successful"];
                if (self.type == 1) {
                    ADTabBarController *tabVC = [ADTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[ADScorecardViewController shareInstance] ADsaveAction];
                   ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    ADTabBarController *tabVC = [ADTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    ADTabBarController *tabVC = [ADTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            } else {
                // 登录失败（可能是密码错误）
                [MBProgressHUD ADshowReminderText:@"Please try again later"];
            }
        }];
    }else if(sender.tag == 101){
        // 创建实例
        AVUser *user = [AVUser user];
        // 等同于 [user setObject:@"Tom" forKey:@"username"]
        user.username = self.ADaccount;
        user.password = self.ADpassword;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (succeeded) {
                // 注册成功
                [MBProgressHUD ADshowReminderText:@"Registered successfully"];
                [AVUser logInWithUsernameInBackground:self.ADaccount password:self.ADpassword block:^(AVUser *user, NSError *error) {
                    if (user != nil) {
                        // 登录成功
                        if (self.type == 1) {
                        ADTabBarController *tabVC = [ADTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[ADScorecardViewController shareInstance] ADsaveAction];
                        ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            ADTabBarController *tabVC = [ADTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            ADTabBarController *tabVC = [ADTabBarController shareInstance];
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
        self.ADaccount = textField.text;
    }else if (textField.tag == 99){
        self.ADpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.ADaccount = textField.text;
    }else if (textField.tag == 99){
        self.ADpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)ADbackView{
    if (!_ADbackView) {
        _ADbackView = [[UIView alloc] init];
        _ADbackView.backgroundColor = [UIColor systemPurpleColor];
        _ADbackView.layer.borderColor = [UIColor systemGreenColor].CGColor;
        _ADbackView.layer.borderWidth = 1.5f;
        _ADbackView.layer.cornerRadius = 16.0f;
        _ADbackView.layer.masksToBounds = YES;
    }
    return _ADbackView;
}
- (UILabel *)ADaccountLable{
    if (!_ADaccountLable) {
        _ADaccountLable = [[UILabel alloc] init];
        _ADaccountLable.text = @"Account";
        _ADaccountLable.textColor = [UIColor systemYellowColor];
        _ADaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _ADaccountLable;
}
- (UITextField *)ADaccountTextField{
    if (!_ADaccountTextField) {
        _ADaccountTextField = [[UITextField alloc] init];
        _ADaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ADaccountTextField.tag = 98;
        _ADaccountTextField.delegate = self;
        _ADaccountTextField.textColor = [UIColor systemYellowColor];
        _ADaccountTextField.font = [UIFont systemFontOfSize:17];
        _ADaccountTextField.placeholder = @"Please enter account number";
    }
    return _ADaccountTextField;
}
- (UILabel *)ADpasswordLable{
    if (!_ADpasswordLable) {
        _ADpasswordLable = [[UILabel alloc] init];
        _ADpasswordLable.text = @"Password";
        _ADpasswordLable.textColor = [UIColor systemYellowColor];
        _ADpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _ADpasswordLable;
}
- (UITextField *)ADADpasswordTextField{
    if (!_ADADpasswordTextField) {
        _ADADpasswordTextField = [[UITextField alloc] init];
        _ADADpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ADADpasswordTextField.tag = 99;
        _ADADpasswordTextField.delegate = self;
        _ADADpasswordTextField.textColor = [UIColor systemYellowColor];
        _ADADpasswordTextField.font = [UIFont systemFontOfSize:17];
        _ADADpasswordTextField.placeholder = @"Please enter password";
        _ADADpasswordTextField.secureTextEntry = YES;
    }
    return _ADADpasswordTextField;
}
- (UIButton *)ADloginButton{
    if (!_ADloginButton) {
        _ADloginButton = [[UIButton alloc] init];
        _ADloginButton.tag = 100;
        _ADloginButton.backgroundColor = [UIColor whiteColor];
        [_ADloginButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_ADloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _ADloginButton.layer.cornerRadius = 12.0f;
        _ADloginButton.layer.masksToBounds = YES;
        _ADloginButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _ADloginButton.layer.borderWidth = 2.0f;
        [_ADloginButton setTitle:@"Login" forState:UIControlStateNormal];
        [_ADloginButton addTarget:self action:@selector(ADbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADloginButton;
}
- (UIButton *)ADregisteredButton{
    if (!_ADregisteredButton) {
        _ADregisteredButton = [[UIButton alloc] init];
        _ADregisteredButton.tag = 101;
        _ADregisteredButton.backgroundColor = [UIColor whiteColor];
        [_ADregisteredButton setTitleColor:[UIColor systemYellowColor] forState:UIControlStateNormal];
        [_ADregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _ADregisteredButton.layer.cornerRadius = 12.0f;
        _ADregisteredButton.layer.masksToBounds = YES;
        _ADregisteredButton.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _ADregisteredButton.layer.borderWidth = 2.0f;
        [_ADregisteredButton setTitle:@"Registration" forState:UIControlStateNormal];
        [_ADregisteredButton addTarget:self action:@selector(ADbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADregisteredButton;
}
@end
