//
//  AHPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHPasswordChangeViewController.h"

@interface AHPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AHAHoldPasswordTextField;
@property(nonatomic, strong)UITextField *AHAHcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *AHAHconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *AHsureButton;
@property(nonatomic, copy)NSString *AHoldPassword;
@property(nonatomic, copy)NSString *AHcurrentPassword;
@property(nonatomic, copy)NSString *AHconfirmPassword;
@end

@implementation AHPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self AHsetContent];
}
- (void)AHsetContent{
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    [self.view addSubview:self.AHAHoldPasswordTextField];
    [self.view addSubview:self.AHAHcurrentPasswordTextField];
    [self.view addSubview:self.AHAHconfirmPasswordTextField];
    [self.view addSubview:self.AHsureButton];
    
    [self.AHAHoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.AHAHcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AHAHoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.AHAHconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AHAHcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.AHsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AHAHconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AHbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.AHoldPassword.length) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.AHcurrentPassword.length) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.AHconfirmPassword.length) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.AHcurrentPassword isEqualToString:self.AHconfirmPassword]) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.AHoldPassword newPassword:self.AHconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.AHconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD AHshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.AHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AHconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AHconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AHconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AHAHoldPasswordTextField{
    if (!_AHAHoldPasswordTextField) {
        _AHAHoldPasswordTextField = [[UITextField alloc] init];
        _AHAHoldPasswordTextField.secureTextEntry = YES;
        _AHAHoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHAHoldPasswordTextField.backgroundColor = [UIColor grayColor];
        _AHAHoldPasswordTextField.layer.cornerRadius = 12.0f;
        _AHAHoldPasswordTextField.layer.masksToBounds = YES;
        _AHAHoldPasswordTextField.tag = 100;
        _AHAHoldPasswordTextField.delegate = self;
        _AHAHoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _AHAHoldPasswordTextField.textColor = [UIColor blackColor];
        _AHAHoldPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _AHAHoldPasswordTextField;
}
- (UITextField *)AHAHcurrentPasswordTextField{
    if (!_AHAHcurrentPasswordTextField) {
        _AHAHcurrentPasswordTextField = [[UITextField alloc] init];
        _AHAHcurrentPasswordTextField.secureTextEntry = YES;
        _AHAHcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHAHcurrentPasswordTextField.backgroundColor = [UIColor grayColor];
        _AHAHcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _AHAHcurrentPasswordTextField.layer.masksToBounds = YES;
        _AHAHcurrentPasswordTextField.tag = 101;
        _AHAHcurrentPasswordTextField.delegate = self;
        _AHAHcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _AHAHcurrentPasswordTextField.textColor = [UIColor blackColor];
        _AHAHcurrentPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _AHAHcurrentPasswordTextField;
}
- (UITextField *)AHAHconfirmPasswordTextField{
    if (!_AHAHconfirmPasswordTextField) {
        _AHAHconfirmPasswordTextField = [[UITextField alloc] init];
        _AHAHconfirmPasswordTextField.secureTextEntry = YES;
        _AHAHconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHAHconfirmPasswordTextField.backgroundColor = [UIColor grayColor];
        _AHAHconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _AHAHconfirmPasswordTextField.layer.masksToBounds = YES;
        _AHAHconfirmPasswordTextField.tag = 102;
        _AHAHconfirmPasswordTextField.delegate = self;
        _AHAHconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _AHAHconfirmPasswordTextField.textColor = [UIColor blackColor];
        _AHAHconfirmPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _AHAHconfirmPasswordTextField;
}
- (UIButton *)AHsureButton{
    if (!_AHsureButton) {
        _AHsureButton = [[UIButton alloc] init];
        _AHsureButton.backgroundColor = [UIColor purpleColor];
        [_AHsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_AHsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _AHsureButton.layer.cornerRadius = 8.0f;
        _AHsureButton.layer.masksToBounds = YES;
        [_AHsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_AHsureButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHsureButton;
}
@end
