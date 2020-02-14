//
//  PVYWKLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKLoginTableViewCell.h"
#import "PVYWKTabBarController.h"
#import "PVYWKLoginViewController.h"
#import "PVYWKScorecardViewController.h"
@interface PVYWKLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PVYWKbackView;
@property(nonatomic, strong)UILabel *PVYWKaccountLable;
@property(nonatomic, strong)UITextField *PVYWKaccountTextField;
@property(nonatomic, copy)NSString *PVYWKaccount;
@property(nonatomic, strong)UILabel *PVYWKpasswordLable;
@property(nonatomic, strong)UITextField *PVYWKPVYWKpasswordTextField;
@property(nonatomic, copy)NSString *PVYWKpassword;
@property(nonatomic, strong)UIButton *PVYWKloginButton;
@property(nonatomic, strong)UIButton *PVYWKregisteredButton;
@end
@implementation PVYWKLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PVYWKsetContent];
    }
    return self;
}
- (void)PVYWKsetContent{
    self.contentView.backgroundColor = PVYWKH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.PVYWKbackView];
    [self.PVYWKbackView addSubview:self.PVYWKaccountLable];
    [self.PVYWKbackView addSubview:self.PVYWKaccountTextField];
    [self.PVYWKbackView addSubview:self.PVYWKpasswordLable];
    [self.PVYWKbackView addSubview:self.PVYWKPVYWKpasswordTextField];
    [self.PVYWKbackView addSubview:self.PVYWKloginButton];
    [self.PVYWKbackView addSubview:self.PVYWKregisteredButton];
    
    [self.PVYWKbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PVYWKHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PVYWKWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PVYWKHEIGHT - PVYWKHeightNavBar - 343.5));
    }];
    [self.PVYWKaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PVYWKbackView).offset(40);
        make.leading.equalTo(self.PVYWKbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PVYWKaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PVYWKaccountLable);
        make.leading.equalTo(self.PVYWKaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PVYWKbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PVYWKpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PVYWKaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PVYWKbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PVYWKPVYWKpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PVYWKpasswordLable);
        make.leading.equalTo(self.PVYWKpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PVYWKbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PVYWKloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PVYWKbackView).offset(60);
        make.trailing.equalTo(self.PVYWKbackView).offset(-60);
        make.top.equalTo(self.PVYWKPVYWKpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PVYWKregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PVYWKbackView).offset(60);
        make.trailing.equalTo(self.PVYWKbackView).offset(-60);
        make.top.equalTo(self.PVYWKloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVYWKbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PVYWKaccount.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PVYWKpassword.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.PVYWKaccount password:self.PVYWKpassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[PVYWKScorecardViewController shareInstance] PVYWKsaveAction];
                   PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.PVYWKaccount];
        [bUser setPassword:self.PVYWKpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.PVYWKaccount password:self.PVYWKpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[PVYWKScorecardViewController shareInstance] PVYWKsaveAction];
                        PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            PVYWKLoginViewController *loginVC = [PVYWKLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            PVYWKTabBarController *tabVC = [PVYWKTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD PVYWKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PVYWKaccount = textField.text;
    }else if (textField.tag == 99){
        self.PVYWKpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PVYWKaccount = textField.text;
    }else if (textField.tag == 99){
        self.PVYWKpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PVYWKbackView{
    if (!_PVYWKbackView) {
        _PVYWKbackView = [[UIView alloc] init];
        _PVYWKbackView.backgroundColor = [UIColor cyanColor];
        _PVYWKbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKbackView.layer.borderWidth = 1.0f;
        _PVYWKbackView.layer.cornerRadius = 8.0f;
        _PVYWKbackView.layer.masksToBounds = YES;
    }
    return _PVYWKbackView;
}
- (UILabel *)PVYWKaccountLable{
    if (!_PVYWKaccountLable) {
        _PVYWKaccountLable = [[UILabel alloc] init];
        _PVYWKaccountLable.text = NSLocalizedString(@"账号", nil);
        _PVYWKaccountLable.textColor = [UIColor blackColor];
        _PVYWKaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PVYWKaccountLable;
}
- (UITextField *)PVYWKaccountTextField{
    if (!_PVYWKaccountTextField) {
        _PVYWKaccountTextField = [[UITextField alloc] init];
        _PVYWKaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKaccountTextField.tag = 98;
        _PVYWKaccountTextField.delegate = self;
        _PVYWKaccountTextField.textColor = [UIColor blackColor];
        _PVYWKaccountTextField.font = [UIFont systemFontOfSize:15];
        _PVYWKaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PVYWKaccountTextField;
}
- (UILabel *)PVYWKpasswordLable{
    if (!_PVYWKpasswordLable) {
        _PVYWKpasswordLable = [[UILabel alloc] init];
        _PVYWKpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PVYWKpasswordLable.textColor = [UIColor blackColor];
        _PVYWKpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PVYWKpasswordLable;
}
- (UITextField *)PVYWKPVYWKpasswordTextField{
    if (!_PVYWKPVYWKpasswordTextField) {
        _PVYWKPVYWKpasswordTextField = [[UITextField alloc] init];
        _PVYWKPVYWKpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKPVYWKpasswordTextField.tag = 99;
        _PVYWKPVYWKpasswordTextField.delegate = self;
        _PVYWKPVYWKpasswordTextField.textColor = [UIColor blackColor];
        _PVYWKPVYWKpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PVYWKPVYWKpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PVYWKPVYWKpasswordTextField.secureTextEntry = YES;
    }
    return _PVYWKPVYWKpasswordTextField;
}
- (UIButton *)PVYWKloginButton{
    if (!_PVYWKloginButton) {
        _PVYWKloginButton = [[UIButton alloc] init];
        _PVYWKloginButton.tag = 100;
        _PVYWKloginButton.backgroundColor = [UIColor cyanColor];
        [_PVYWKloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVYWKloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PVYWKloginButton.layer.cornerRadius = 4.0f;
        _PVYWKloginButton.layer.masksToBounds = YES;
        _PVYWKloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKloginButton.layer.borderWidth = 1.0f;
        [_PVYWKloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PVYWKloginButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVYWKloginButton;
}
- (UIButton *)PVYWKregisteredButton{
    if (!_PVYWKregisteredButton) {
        _PVYWKregisteredButton = [[UIButton alloc] init];
        _PVYWKregisteredButton.tag = 101;
        _PVYWKregisteredButton.backgroundColor = [UIColor cyanColor];
        [_PVYWKregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVYWKregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PVYWKregisteredButton.layer.cornerRadius = 4.0f;
        _PVYWKregisteredButton.layer.masksToBounds = YES;
        _PVYWKregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKregisteredButton.layer.borderWidth = 1.0f;
        [_PVYWKregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PVYWKregisteredButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVYWKregisteredButton;
}
@end
