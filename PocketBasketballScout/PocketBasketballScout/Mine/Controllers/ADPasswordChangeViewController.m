//
//  ADPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ADPasswordChangeViewController.h"

@interface ADPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ADADoldPasswordTextField;
@property(nonatomic, strong)UITextField *ADADcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *ADADconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *ADsureButton;
@property(nonatomic, copy)NSString *ADoldPassword;
@property(nonatomic, copy)NSString *ADcurrentPassword;
@property(nonatomic, copy)NSString *ADconfirmPassword;
@end

@implementation ADPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = @"Password change";
    [self ADsetContent];
}
- (void)ADsetContent{
    [self.view addSubview:self.ADADoldPasswordTextField];
    [self.view addSubview:self.ADADcurrentPasswordTextField];
    [self.view addSubview:self.ADADconfirmPasswordTextField];
    [self.view addSubview:self.ADsureButton];
    
    [self.ADADoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.ADADcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ADADoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.ADADconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ADADcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.ADsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.ADADconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)ADbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.ADoldPassword.length) {
        [MBProgressHUD ADshowReminderText:@"Please enter old password"];
        return;
    }
    if (!self.ADcurrentPassword.length) {
        [MBProgressHUD ADshowReminderText:@"Please enter new password"];
        return;
    }
    if (!self.ADconfirmPassword.length) {
        [MBProgressHUD ADshowReminderText:@"Please confirm password"];
        return;
    }
    if (![self.ADcurrentPassword isEqualToString:self.ADconfirmPassword]) {
        [MBProgressHUD ADshowReminderText:@"Inconsistent password input"];
        return;
    }
     AVUser *user = [AVUser currentUser];
     NSString *name = user.username;
     [user updatePassword:self.ADoldPassword newPassword:self.ADconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
        if (error) {
            [MBProgressHUD ADshowReminderText:@"Please try again later"];
        } else {
            //用新密码登录
            [AVUser logInWithUsernameInBackground:name password:self.ADconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (error) {
                    [MBProgressHUD ADshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                } else {
                    [MBProgressHUD ADshowReminderText:@"Password changed successfully"];
                    [self.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.ADoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ADcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ADconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ADoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ADcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ADconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ADoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ADcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ADconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)ADADoldPasswordTextField{
    if (!_ADADoldPasswordTextField) {
        _ADADoldPasswordTextField = [[UITextField alloc] init];
        _ADADoldPasswordTextField.secureTextEntry = YES;
        _ADADoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ADADoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ADADoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ADADoldPasswordTextField.layer.borderWidth = 2.0f;
        _ADADoldPasswordTextField.layer.cornerRadius = 12.0f;
        _ADADoldPasswordTextField.layer.masksToBounds = YES;
        _ADADoldPasswordTextField.tag = 100;
        _ADADoldPasswordTextField.delegate = self;
        _ADADoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"Enter old password"];
        _ADADoldPasswordTextField.textColor = [UIColor blackColor];
        _ADADoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ADADoldPasswordTextField;
}
- (UITextField *)ADADcurrentPasswordTextField{
    if (!_ADADcurrentPasswordTextField) {
        _ADADcurrentPasswordTextField = [[UITextField alloc] init];
       _ADADcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ADADcurrentPasswordTextField.secureTextEntry = YES;
        _ADADcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ADADcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ADADcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _ADADcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _ADADcurrentPasswordTextField.layer.masksToBounds = YES;
        _ADADcurrentPasswordTextField.tag = 101;
        _ADADcurrentPasswordTextField.delegate = self;
        _ADADcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"Enter new password"];
        _ADADcurrentPasswordTextField.textColor = [UIColor blackColor];
        _ADADcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ADADcurrentPasswordTextField;
}
- (UITextField *)ADADconfirmPasswordTextField{
    if (!_ADADconfirmPasswordTextField) {
        _ADADconfirmPasswordTextField = [[UITextField alloc] init];
       _ADADconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ADADconfirmPasswordTextField.secureTextEntry = YES;
        _ADADconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ADADconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ADADconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _ADADconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _ADADconfirmPasswordTextField.layer.masksToBounds = YES;
        _ADADconfirmPasswordTextField.tag = 102;
        _ADADconfirmPasswordTextField.delegate = self;
        _ADADconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"Confirm password"];
        _ADADconfirmPasswordTextField.textColor = [UIColor blackColor];
        _ADADconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ADADconfirmPasswordTextField;
}
- (UIButton *)ADsureButton{
    if (!_ADsureButton) {
        _ADsureButton = [[UIButton alloc] init];
        _ADsureButton.backgroundColor = [UIColor whiteColor];
        [_ADsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ADsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ADsureButton.layer.cornerRadius = 8.0f;
        _ADsureButton.layer.masksToBounds = YES;
        _ADsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _ADsureButton.layer.borderWidth = 2.0f;
        [_ADsureButton setTitle:@"Confirm" forState:UIControlStateNormal];
        [_ADsureButton addTarget:self action:@selector(ADbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADsureButton;
}
@end
