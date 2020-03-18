//
//  EALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EALoginTableViewCell.h"
#import "EATabBarController.h"
@interface EALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *EAbackView;
@property(nonatomic, strong)UILabel *EAaccountLable;
@property(nonatomic, strong)UITextField *EAaccountTextField;
@property(nonatomic, copy)NSString *EAaccount;
@property(nonatomic, strong)UILabel *EApasswordLable;
@property(nonatomic, strong)UITextField *EAEApasswordTextField;
@property(nonatomic, copy)NSString *EApassword;
@property(nonatomic, strong)UIButton *EAloginButton;
@property(nonatomic, strong)UIButton *EAregisteredButton;
@end
@implementation EALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self EAsetContent];
    }
    return self;
}
- (void)EAsetContent{
    self.contentView.backgroundColor = EAH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.EAbackView];
    [self.EAbackView addSubview:self.EAaccountLable];
    [self.EAbackView addSubview:self.EAaccountTextField];
    [self.EAbackView addSubview:self.EApasswordLable];
    [self.EAbackView addSubview:self.EAEApasswordTextField];
    [self.EAbackView addSubview:self.EAloginButton];
    [self.EAbackView addSubview:self.EAregisteredButton];
    
    [self.EAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(EAHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(EAWIDTH - 40);
        make.height.mas_equalTo(400);
        make.bottom.equalTo(self.contentView).offset(-(EAHEIGHT - EAHeightNavBar - 50 - 400));
    }];
    [self.EAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EAbackView).offset(50);
        make.leading.equalTo(self.EAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.EAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.EAaccountLable);
        make.leading.equalTo(self.EAaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.EAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.EApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.EAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.EAEApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.EApasswordLable);
        make.leading.equalTo(self.EApasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.EAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.EAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.EAbackView).offset(50);
        make.trailing.equalTo(self.EAbackView).offset(-50);
        make.top.equalTo(self.EAEApasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.EAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.EAbackView).offset(50);
        make.trailing.equalTo(self.EAbackView).offset(-50);
        make.top.equalTo(self.EAloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.EAaccount.length) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.EApassword.length) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.EAaccount password:self.EApassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                EATabBarController *tabVC = [EATabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.EAaccount];
        [bUser setPassword:self.EApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.EAaccount password:self.EApassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        EATabBarController *tabVC = [EATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD EAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.EAaccount = textField.text;
    }else if (textField.tag == 99){
        self.EApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.EAaccount = textField.text;
    }else if (textField.tag == 99){
        self.EApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)EAbackView{
    if (!_EAbackView) {
        _EAbackView = [[UIView alloc] init];
        _EAbackView.layer.cornerRadius = 20.0f;
        _EAbackView.layer.masksToBounds = YES;
        _EAbackView.backgroundColor = [UIColor systemBlueColor];
    }
    return _EAbackView;
}
- (UILabel *)EAaccountLable{
    if (!_EAaccountLable) {
        _EAaccountLable = [[UILabel alloc] init];
        _EAaccountLable.text = NSLocalizedString(@"账号", nil);
        _EAaccountLable.textColor = [UIColor grayColor];
        _EAaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _EAaccountLable;
}
- (UITextField *)EAaccountTextField{
    if (!_EAaccountTextField) {
        _EAaccountTextField = [[UITextField alloc] init];
        _EAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAaccountTextField.tag = 98;
        _EAaccountTextField.delegate = self;
        _EAaccountTextField.textColor = [UIColor blackColor];
        _EAaccountTextField.font = [UIFont systemFontOfSize:18];
        _EAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _EAaccountTextField;
}
- (UILabel *)EApasswordLable{
    if (!_EApasswordLable) {
        _EApasswordLable = [[UILabel alloc] init];
        _EApasswordLable.text = NSLocalizedString(@"密码", nil);
        _EApasswordLable.textColor = [UIColor grayColor];
        _EApasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _EApasswordLable;
}
- (UITextField *)EAEApasswordTextField{
    if (!_EAEApasswordTextField) {
        _EAEApasswordTextField = [[UITextField alloc] init];
        _EAEApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAEApasswordTextField.tag = 99;
        _EAEApasswordTextField.delegate = self;
        _EAEApasswordTextField.textColor = [UIColor blackColor];
        _EAEApasswordTextField.font = [UIFont systemFontOfSize:18];
        _EAEApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _EAEApasswordTextField.secureTextEntry = YES;
    }
    return _EAEApasswordTextField;
}
- (UIButton *)EAloginButton{
    if (!_EAloginButton) {
        _EAloginButton = [[UIButton alloc] init];
        _EAloginButton.tag = 100;
        _EAloginButton.backgroundColor = [UIColor orangeColor];
        [_EAloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EAloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _EAloginButton.layer.cornerRadius = 12.0f;
        _EAloginButton.layer.masksToBounds = YES;
        [_EAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_EAloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAloginButton;
}
- (UIButton *)EAregisteredButton{
    if (!_EAregisteredButton) {
        _EAregisteredButton = [[UIButton alloc] init];
        _EAregisteredButton.tag = 101;
        _EAregisteredButton.backgroundColor = [UIColor greenColor];
        [_EAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_EAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _EAregisteredButton.layer.cornerRadius = 12.0f;
        _EAregisteredButton.layer.masksToBounds = YES;
        [_EAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_EAregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAregisteredButton;
}
@end
