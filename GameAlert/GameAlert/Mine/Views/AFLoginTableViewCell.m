//
//  AFLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFLoginTableViewCell.h"
#import "AFTabBarController.h"
@interface AFLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AFbackView;
@property(nonatomic, strong)UILabel *AFaccountLable;
@property(nonatomic, strong)UITextField *AFaccountTextField;
@property(nonatomic, strong)UIView *AFline;
@property(nonatomic, copy)NSString *AFaccount;
@property(nonatomic, strong)UILabel *AFpasswordLable;
@property(nonatomic, strong)UITextField *AFAFpasswordTextField;
@property(nonatomic, strong)UIView *AFline1;
@property(nonatomic, copy)NSString *AFpassword;
@property(nonatomic, strong)UIButton *AFloginButton;
@property(nonatomic, strong)UIButton *AFregisteredButton;
@end
@implementation AFLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFsetContent];
    }
    return self;
}
- (void)AFsetContent{
    self.contentView.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self.contentView addSubview:self.AFbackView];
    [self.AFbackView addSubview:self.AFaccountLable];
    [self.AFbackView addSubview:self.AFaccountTextField];
    [self.AFbackView addSubview:self.AFline];
    [self.AFbackView addSubview:self.AFpasswordLable];
    [self.AFbackView addSubview:self.AFAFpasswordTextField];
    [self.AFbackView addSubview:self.AFline1];
    [self.AFbackView addSubview:self.AFloginButton];
    [self.AFbackView addSubview:self.AFregisteredButton];
    
    [self.AFbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(AFHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(AFWIDTH - 40);
        make.height.mas_equalTo(400);
        make.bottom.equalTo(self.contentView).offset(-(AFHEIGHT - AFHeightNavBar - 50 - 400));
    }];
    [self.AFaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFbackView).offset(50);
        make.leading.equalTo(self.AFbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AFaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFaccountLable);
        make.leading.equalTo(self.AFaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AFbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AFline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFaccountTextField.mas_bottom);
               make.leading.equalTo(self.AFbackView).offset(16);
               make.trailing.equalTo(self.AFbackView);
               make.height.mas_equalTo(1);
    }];
    [self.AFpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.AFbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AFAFpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFpasswordLable);
        make.leading.equalTo(self.AFpasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AFbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AFline1 mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.AFAFpasswordTextField.mas_bottom);
                  make.leading.equalTo(self.AFbackView).offset(16);
                  make.trailing.equalTo(self.AFbackView);
                  make.height.mas_equalTo(1);
       }];
    [self.AFloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AFbackView).offset(50);
        make.trailing.equalTo(self.AFbackView).offset(-50);
        make.top.equalTo(self.AFAFpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.AFregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AFbackView).offset(50);
        make.trailing.equalTo(self.AFbackView).offset(-50);
        make.top.equalTo(self.AFloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)AFbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.AFaccount.length) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.AFpassword.length) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.AFaccount password:self.AFpassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"登录成功", nil)];
                AFTabBarController *tabVC = [AFTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.AFaccount];
        [bUser setPassword:self.AFpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.AFaccount password:self.AFpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        AFTabBarController *tabVC = [AFTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD AFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.AFaccount = textField.text;
    }else if (textField.tag == 99){
        self.AFpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.AFaccount = textField.text;
    }else if (textField.tag == 99){
        self.AFpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)AFbackView{
    if (!_AFbackView) {
        _AFbackView = [[UIView alloc] init];
        _AFbackView.layer.cornerRadius = 8.0f;
        _AFbackView.layer.masksToBounds = YES;
        _AFbackView.backgroundColor = AFH_Color(44, 77, 93, 1);
    }
    return _AFbackView;
}
- (UILabel *)AFaccountLable{
    if (!_AFaccountLable) {
        _AFaccountLable = [[UILabel alloc] init];
        _AFaccountLable.text = NSLocalizedString(@"账号", nil);
        _AFaccountLable.textColor = [UIColor grayColor];
        _AFaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _AFaccountLable;
}
- (UITextField *)AFaccountTextField{
    if (!_AFaccountTextField) {
        _AFaccountTextField = [[UITextField alloc] init];
        _AFaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFaccountTextField.tag = 98;
        _AFaccountTextField.delegate = self;
        _AFaccountTextField.textColor = [UIColor blackColor];
        _AFaccountTextField.font = [UIFont systemFontOfSize:18];
        _AFaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _AFaccountTextField;
}
- (UIView *)AFline{
    if (!_AFline) {
        _AFline = [[UIView alloc] init];
        _AFline.backgroundColor = AFH_Color(230, 230, 230, 1);
    }
    return _AFline;
}
- (UILabel *)AFpasswordLable{
    if (!_AFpasswordLable) {
        _AFpasswordLable = [[UILabel alloc] init];
        _AFpasswordLable.text = NSLocalizedString(@"密码", nil);
        _AFpasswordLable.textColor = [UIColor grayColor];
        _AFpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _AFpasswordLable;
}
- (UITextField *)AFAFpasswordTextField{
    if (!_AFAFpasswordTextField) {
        _AFAFpasswordTextField = [[UITextField alloc] init];
        _AFAFpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFAFpasswordTextField.tag = 99;
        _AFAFpasswordTextField.delegate = self;
        _AFAFpasswordTextField.textColor = [UIColor blackColor];
        _AFAFpasswordTextField.font = [UIFont systemFontOfSize:18];
        _AFAFpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _AFAFpasswordTextField.secureTextEntry = YES;
    }
    return _AFAFpasswordTextField;
}
- (UIView *)AFline1{
    if (!_AFline1) {
        _AFline1 = [[UIView alloc] init];
        _AFline1.backgroundColor = AFH_Color(230, 230, 230, 1);
    }
    return _AFline1;
}
- (UIButton *)AFloginButton{
    if (!_AFloginButton) {
        _AFloginButton = [[UIButton alloc] init];
        _AFloginButton.tag = 100;
        _AFloginButton.backgroundColor = [UIColor whiteColor];
        [_AFloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AFloginButton.layer.cornerRadius = 6.0f;
        _AFloginButton.layer.masksToBounds = YES;
        [_AFloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_AFloginButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFloginButton;
}
- (UIButton *)AFregisteredButton{
    if (!_AFregisteredButton) {
        _AFregisteredButton = [[UIButton alloc] init];
        _AFregisteredButton.tag = 101;
        _AFregisteredButton.backgroundColor = [UIColor whiteColor];
        [_AFregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AFregisteredButton.layer.cornerRadius = 6.0f;
        _AFregisteredButton.layer.masksToBounds = YES;
        [_AFregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_AFregisteredButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFregisteredButton;
}
@end
