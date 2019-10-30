//
//  PVLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVLoginTableViewCell.h"
#import "PVTabBarController.h"
#import "PVLoginViewController.h"
#import "PVScorecardViewController.h"
@interface PVLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PVbackView;
@property(nonatomic, strong)UILabel *PVaccountLable;
@property(nonatomic, strong)UITextField *PVaccountTextField;
@property(nonatomic, copy)NSString *PVaccount;
@property(nonatomic, strong)UILabel *PVpasswordLable;
@property(nonatomic, strong)UITextField *PVPVpasswordTextField;
@property(nonatomic, copy)NSString *PVpassword;
@property(nonatomic, strong)UIButton *PVloginButton;
@property(nonatomic, strong)UIButton *PVregisteredButton;
@end
@implementation PVLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PVsetContent];
    }
    return self;
}
- (void)PVsetContent{
    self.contentView.backgroundColor = PVH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.PVbackView];
    [self.PVbackView addSubview:self.PVaccountLable];
    [self.PVbackView addSubview:self.PVaccountTextField];
    [self.PVbackView addSubview:self.PVpasswordLable];
    [self.PVbackView addSubview:self.PVPVpasswordTextField];
    [self.PVbackView addSubview:self.PVloginButton];
    [self.PVbackView addSubview:self.PVregisteredButton];
    
    [self.PVbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PVHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PVWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PVHEIGHT - PVHeightNavBar - 343.5));
    }];
    [self.PVaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PVbackView).offset(40);
        make.leading.equalTo(self.PVbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PVaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PVaccountLable);
        make.leading.equalTo(self.PVaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PVbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PVpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PVaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PVbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PVPVpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PVpasswordLable);
        make.leading.equalTo(self.PVpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PVbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PVloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PVbackView).offset(60);
        make.trailing.equalTo(self.PVbackView).offset(-60);
        make.top.equalTo(self.PVPVpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PVregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PVbackView).offset(60);
        make.trailing.equalTo(self.PVbackView).offset(-60);
        make.top.equalTo(self.PVloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PVaccount.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PVpassword.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PVaccount password:self.PVpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    PVTabBarController *tabVC = [PVTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[PVScorecardViewController shareInstance] PVsaveAction];
                   PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    PVTabBarController *tabVC = [PVTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    PVTabBarController *tabVC = [PVTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PVaccount];
        [bUser setPassword:self.PVpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PVaccount password:self.PVpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        PVTabBarController *tabVC = [PVTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[PVScorecardViewController shareInstance] PVsaveAction];
                        PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            PVTabBarController *tabVC = [PVTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            PVLoginViewController *loginVC = [PVLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            PVTabBarController *tabVC = [PVTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD PVshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PVaccount = textField.text;
    }else if (textField.tag == 99){
        self.PVpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PVaccount = textField.text;
    }else if (textField.tag == 99){
        self.PVpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PVbackView{
    if (!_PVbackView) {
        _PVbackView = [[UIView alloc] init];
        _PVbackView.backgroundColor = [UIColor cyanColor];
        _PVbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _PVbackView.layer.borderWidth = 1.0f;
        _PVbackView.layer.cornerRadius = 8.0f;
        _PVbackView.layer.masksToBounds = YES;
    }
    return _PVbackView;
}
- (UILabel *)PVaccountLable{
    if (!_PVaccountLable) {
        _PVaccountLable = [[UILabel alloc] init];
        _PVaccountLable.text = NSLocalizedString(@"账号", nil);
        _PVaccountLable.textColor = [UIColor blackColor];
        _PVaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PVaccountLable;
}
- (UITextField *)PVaccountTextField{
    if (!_PVaccountTextField) {
        _PVaccountTextField = [[UITextField alloc] init];
        _PVaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVaccountTextField.tag = 98;
        _PVaccountTextField.delegate = self;
        _PVaccountTextField.textColor = [UIColor blackColor];
        _PVaccountTextField.font = [UIFont systemFontOfSize:15];
        _PVaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PVaccountTextField;
}
- (UILabel *)PVpasswordLable{
    if (!_PVpasswordLable) {
        _PVpasswordLable = [[UILabel alloc] init];
        _PVpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PVpasswordLable.textColor = [UIColor blackColor];
        _PVpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PVpasswordLable;
}
- (UITextField *)PVPVpasswordTextField{
    if (!_PVPVpasswordTextField) {
        _PVPVpasswordTextField = [[UITextField alloc] init];
        _PVPVpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVPVpasswordTextField.tag = 99;
        _PVPVpasswordTextField.delegate = self;
        _PVPVpasswordTextField.textColor = [UIColor blackColor];
        _PVPVpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PVPVpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PVPVpasswordTextField.secureTextEntry = YES;
    }
    return _PVPVpasswordTextField;
}
- (UIButton *)PVloginButton{
    if (!_PVloginButton) {
        _PVloginButton = [[UIButton alloc] init];
        _PVloginButton.tag = 100;
        _PVloginButton.backgroundColor = [UIColor cyanColor];
        [_PVloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PVloginButton.layer.cornerRadius = 4.0f;
        _PVloginButton.layer.masksToBounds = YES;
        _PVloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVloginButton.layer.borderWidth = 1.0f;
        [_PVloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PVloginButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVloginButton;
}
- (UIButton *)PVregisteredButton{
    if (!_PVregisteredButton) {
        _PVregisteredButton = [[UIButton alloc] init];
        _PVregisteredButton.tag = 101;
        _PVregisteredButton.backgroundColor = [UIColor cyanColor];
        [_PVregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PVregisteredButton.layer.cornerRadius = 4.0f;
        _PVregisteredButton.layer.masksToBounds = YES;
        _PVregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVregisteredButton.layer.borderWidth = 1.0f;
        [_PVregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PVregisteredButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVregisteredButton;
}
@end
