//
//  CFLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CFLoginTableViewCell.h"
#import "CFTabBarController.h"
#import "CFLoginViewController.h"
#import "CFScorecardViewController.h"
@interface CFLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CFbackView;
@property(nonatomic, strong)UILabel *CFaccountLable;
@property(nonatomic, strong)UITextField *CFaccountTextField;
@property(nonatomic, copy)NSString *CFaccount;
@property(nonatomic, strong)UILabel *CFpasswordLable;
@property(nonatomic, strong)UITextField *CFCFpasswordTextField;
@property(nonatomic, copy)NSString *CFpassword;
@property(nonatomic, strong)UIButton *CFloginButton;
@property(nonatomic, strong)UIButton *CFregisteredButton;
@end
@implementation CFLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CFsetContent];
    }
    return self;
}
- (void)CFsetContent{
    self.contentView.backgroundColor = CFH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.CFbackView];
    [self.CFbackView addSubview:self.CFaccountLable];
    [self.CFbackView addSubview:self.CFaccountTextField];
    [self.CFbackView addSubview:self.CFpasswordLable];
    [self.CFbackView addSubview:self.CFCFpasswordTextField];
    [self.CFbackView addSubview:self.CFloginButton];
    [self.CFbackView addSubview:self.CFregisteredButton];
    
    [self.CFbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(CFHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(CFWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(CFHEIGHT - CFHeightNavBar - 343.5));
    }];
    [self.CFaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFbackView).offset(40);
        make.leading.equalTo(self.CFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CFaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CFaccountLable);
        make.leading.equalTo(self.CFaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CFpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.CFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.CFCFpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CFpasswordLable);
        make.leading.equalTo(self.CFpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.CFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.CFloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CFbackView).offset(60);
        make.trailing.equalTo(self.CFbackView).offset(-60);
        make.top.equalTo(self.CFCFpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.CFregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CFbackView).offset(60);
        make.trailing.equalTo(self.CFbackView).offset(-60);
        make.top.equalTo(self.CFloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CFbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.CFaccount.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.CFpassword.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.CFaccount password:self.CFpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    CFTabBarController *tabVC = [CFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[CFScorecardViewController shareInstance] CFsaveAction];
                   CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    CFTabBarController *tabVC = [CFTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    CFTabBarController *tabVC = [CFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.CFaccount];
        [bUser setPassword:self.CFpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.CFaccount password:self.CFpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        CFTabBarController *tabVC = [CFTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[CFScorecardViewController shareInstance] CFsaveAction];
                        CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            CFTabBarController *tabVC = [CFTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            CFTabBarController *tabVC = [CFTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD CFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.CFaccount = textField.text;
    }else if (textField.tag == 99){
        self.CFpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.CFaccount = textField.text;
    }else if (textField.tag == 99){
        self.CFpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)CFbackView{
    if (!_CFbackView) {
        _CFbackView = [[UIView alloc] init];
        _CFbackView.backgroundColor = CFH_Color(0, 204, 131, 1);
        _CFbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _CFbackView.layer.borderWidth = 1.0f;
        _CFbackView.layer.cornerRadius = 8.0f;
        _CFbackView.layer.masksToBounds = YES;
    }
    return _CFbackView;
}
- (UILabel *)CFaccountLable{
    if (!_CFaccountLable) {
        _CFaccountLable = [[UILabel alloc] init];
        _CFaccountLable.text = NSLocalizedString(@"账号", nil);
        _CFaccountLable.textColor = [UIColor blackColor];
        _CFaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _CFaccountLable;
}
- (UITextField *)CFaccountTextField{
    if (!_CFaccountTextField) {
        _CFaccountTextField = [[UITextField alloc] init];
        _CFaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CFaccountTextField.tag = 98;
        _CFaccountTextField.delegate = self;
        _CFaccountTextField.textColor = [UIColor blackColor];
        _CFaccountTextField.font = [UIFont systemFontOfSize:17];
        _CFaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _CFaccountTextField;
}
- (UILabel *)CFpasswordLable{
    if (!_CFpasswordLable) {
        _CFpasswordLable = [[UILabel alloc] init];
        _CFpasswordLable.text = NSLocalizedString(@"密码", nil);
        _CFpasswordLable.textColor = [UIColor blackColor];
        _CFpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _CFpasswordLable;
}
- (UITextField *)CFCFpasswordTextField{
    if (!_CFCFpasswordTextField) {
        _CFCFpasswordTextField = [[UITextField alloc] init];
        _CFCFpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CFCFpasswordTextField.tag = 99;
        _CFCFpasswordTextField.delegate = self;
        _CFCFpasswordTextField.textColor = [UIColor blackColor];
        _CFCFpasswordTextField.font = [UIFont systemFontOfSize:17];
        _CFCFpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _CFCFpasswordTextField.secureTextEntry = YES;
    }
    return _CFCFpasswordTextField;
}
- (UIButton *)CFloginButton{
    if (!_CFloginButton) {
        _CFloginButton = [[UIButton alloc] init];
        _CFloginButton.tag = 100;
        _CFloginButton.backgroundColor = [UIColor whiteColor];
        [_CFloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CFloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CFloginButton.layer.cornerRadius = 6.0f;
        _CFloginButton.layer.masksToBounds = YES;
        _CFloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFloginButton.layer.borderWidth = 2.0f;
        [_CFloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_CFloginButton addTarget:self action:@selector(CFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFloginButton;
}
- (UIButton *)CFregisteredButton{
    if (!_CFregisteredButton) {
        _CFregisteredButton = [[UIButton alloc] init];
        _CFregisteredButton.tag = 101;
        _CFregisteredButton.backgroundColor = [UIColor whiteColor];
        [_CFregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CFregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _CFregisteredButton.layer.cornerRadius = 6.0f;
        _CFregisteredButton.layer.masksToBounds = YES;
        _CFregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFregisteredButton.layer.borderWidth = 2.0f;
        [_CFregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_CFregisteredButton addTarget:self action:@selector(CFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFregisteredButton;
}
@end
