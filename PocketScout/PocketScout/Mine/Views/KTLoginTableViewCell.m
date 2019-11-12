//
//  KTLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "KTLoginTableViewCell.h"
#import "KTTabBarController.h"
#import "KTLoginViewController.h"
#import "KTScorecardViewController.h"
@interface KTLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *KTbackView;
@property(nonatomic, strong)UILabel *KTaccountLable;
@property(nonatomic, strong)UITextField *KTaccountTextField;
@property(nonatomic, copy)NSString *KTaccount;
@property(nonatomic, strong)UILabel *KTpasswordLable;
@property(nonatomic, strong)UITextField *KTKTpasswordTextField;
@property(nonatomic, copy)NSString *KTpassword;
@property(nonatomic, strong)UIButton *KTloginButton;
@property(nonatomic, strong)UIButton *KTregisteredButton;
@end
@implementation KTLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KTsetContent];
    }
    return self;
}
- (void)KTsetContent{
    self.contentView.backgroundColor = KTH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.KTbackView];
    [self.KTbackView addSubview:self.KTaccountLable];
    [self.KTbackView addSubview:self.KTaccountTextField];
    [self.KTbackView addSubview:self.KTpasswordLable];
    [self.KTbackView addSubview:self.KTKTpasswordTextField];
    [self.KTbackView addSubview:self.KTloginButton];
    [self.KTbackView addSubview:self.KTregisteredButton];
    
    [self.KTbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(KTHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(KTWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(KTHEIGHT - KTHeightNavBar - 343.5));
    }];
    [self.KTaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTbackView).offset(40);
        make.leading.equalTo(self.KTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.KTaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.KTaccountLable);
        make.leading.equalTo(self.KTaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.KTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.KTpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.KTbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.KTKTpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.KTpasswordLable);
        make.leading.equalTo(self.KTpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.KTbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.KTloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KTbackView).offset(60);
        make.trailing.equalTo(self.KTbackView).offset(-60);
        make.top.equalTo(self.KTKTpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.KTregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KTbackView).offset(60);
        make.trailing.equalTo(self.KTbackView).offset(-60);
        make.top.equalTo(self.KTloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)KTbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.KTaccount.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.KTpassword.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.KTaccount password:self.KTpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    KTTabBarController *tabVC = [KTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[KTScorecardViewController shareInstance] KTsaveAction];
                   KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    KTTabBarController *tabVC = [KTTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    KTTabBarController *tabVC = [KTTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.KTaccount];
        [bUser setPassword:self.KTpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.KTaccount password:self.KTpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        KTTabBarController *tabVC = [KTTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[KTScorecardViewController shareInstance] KTsaveAction];
                        KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            KTTabBarController *tabVC = [KTTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            KTTabBarController *tabVC = [KTTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD KTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.KTaccount = textField.text;
    }else if (textField.tag == 99){
        self.KTpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.KTaccount = textField.text;
    }else if (textField.tag == 99){
        self.KTpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)KTbackView{
    if (!_KTbackView) {
        _KTbackView = [[UIView alloc] init];
        _KTbackView.backgroundColor = KTH_Color(0, 204, 131, 1);
        _KTbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _KTbackView.layer.borderWidth = 1.0f;
        _KTbackView.layer.cornerRadius = 8.0f;
        _KTbackView.layer.masksToBounds = YES;
    }
    return _KTbackView;
}
- (UILabel *)KTaccountLable{
    if (!_KTaccountLable) {
        _KTaccountLable = [[UILabel alloc] init];
        _KTaccountLable.text = NSLocalizedString(@"账号", nil);
        _KTaccountLable.textColor = [UIColor blackColor];
        _KTaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _KTaccountLable;
}
- (UITextField *)KTaccountTextField{
    if (!_KTaccountTextField) {
        _KTaccountTextField = [[UITextField alloc] init];
        _KTaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KTaccountTextField.tag = 98;
        _KTaccountTextField.delegate = self;
        _KTaccountTextField.textColor = [UIColor blackColor];
        _KTaccountTextField.font = [UIFont systemFontOfSize:17];
        _KTaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _KTaccountTextField;
}
- (UILabel *)KTpasswordLable{
    if (!_KTpasswordLable) {
        _KTpasswordLable = [[UILabel alloc] init];
        _KTpasswordLable.text = NSLocalizedString(@"密码", nil);
        _KTpasswordLable.textColor = [UIColor blackColor];
        _KTpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _KTpasswordLable;
}
- (UITextField *)KTKTpasswordTextField{
    if (!_KTKTpasswordTextField) {
        _KTKTpasswordTextField = [[UITextField alloc] init];
        _KTKTpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KTKTpasswordTextField.tag = 99;
        _KTKTpasswordTextField.delegate = self;
        _KTKTpasswordTextField.textColor = [UIColor blackColor];
        _KTKTpasswordTextField.font = [UIFont systemFontOfSize:17];
        _KTKTpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _KTKTpasswordTextField.secureTextEntry = YES;
    }
    return _KTKTpasswordTextField;
}
- (UIButton *)KTloginButton{
    if (!_KTloginButton) {
        _KTloginButton = [[UIButton alloc] init];
        _KTloginButton.tag = 100;
        _KTloginButton.backgroundColor = [UIColor whiteColor];
        [_KTloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTloginButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _KTloginButton.layer.cornerRadius = 6.0f;
        _KTloginButton.layer.masksToBounds = YES;
        _KTloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTloginButton.layer.borderWidth = 2.0f;
        [_KTloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_KTloginButton addTarget:self action:@selector(KTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTloginButton;
}
- (UIButton *)KTregisteredButton{
    if (!_KTregisteredButton) {
        _KTregisteredButton = [[UIButton alloc] init];
        _KTregisteredButton.tag = 101;
        _KTregisteredButton.backgroundColor = [UIColor whiteColor];
        [_KTregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _KTregisteredButton.layer.cornerRadius = 6.0f;
        _KTregisteredButton.layer.masksToBounds = YES;
        _KTregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTregisteredButton.layer.borderWidth = 2.0f;
        [_KTregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_KTregisteredButton addTarget:self action:@selector(KTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTregisteredButton;
}
@end
