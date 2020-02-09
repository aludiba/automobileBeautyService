//
//  WBYBKOKPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WBYBKOKPasswordChangeViewController.h"

@interface WBYBKOKPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *WBYBKOKWBYBKOKoldPasswordTextField;
@property(nonatomic, strong)UITextField *WBYBKOKWBYBKOKcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *WBYBKOKWBYBKOKconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *WBYBKOKsureButton;
@property(nonatomic, copy)NSString *WBYBKOKoldPassword;
@property(nonatomic, copy)NSString *WBYBKOKcurrentPassword;
@property(nonatomic, copy)NSString *WBYBKOKconfirmPassword;
@end

@implementation WBYBKOKPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self WBYBKOKsetContent];
}
- (void)WBYBKOKsetContent{
    [self.view addSubview:self.WBYBKOKWBYBKOKoldPasswordTextField];
    [self.view addSubview:self.WBYBKOKWBYBKOKcurrentPasswordTextField];
    [self.view addSubview:self.WBYBKOKWBYBKOKconfirmPasswordTextField];
    [self.view addSubview:self.WBYBKOKsureButton];
    
    [self.WBYBKOKWBYBKOKoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKWBYBKOKcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.WBYBKOKWBYBKOKoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKWBYBKOKconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.WBYBKOKWBYBKOKcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.WBYBKOKsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.WBYBKOKWBYBKOKconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)WBYBKOKbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.WBYBKOKoldPassword.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.WBYBKOKcurrentPassword.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.WBYBKOKconfirmPassword.length) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.WBYBKOKcurrentPassword isEqualToString:self.WBYBKOKconfirmPassword]) {
        [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
     AVUser *user = [AVUser currentUser];
     NSString *name = user.username;
     [user updatePassword:self.WBYBKOKoldPassword newPassword:self.WBYBKOKconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
        if (error) {
            [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            //用新密码登录
            [AVUser logInWithUsernameInBackground:name password:name block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (error) {
                    [MBProgressHUD WBYBKOKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                } else {
                    [MBProgressHUD WBYBKOKshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                    [self.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.WBYBKOKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WBYBKOKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WBYBKOKconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.WBYBKOKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WBYBKOKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WBYBKOKconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.WBYBKOKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WBYBKOKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WBYBKOKconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)WBYBKOKWBYBKOKoldPasswordTextField{
    if (!_WBYBKOKWBYBKOKoldPasswordTextField) {
        _WBYBKOKWBYBKOKoldPasswordTextField = [[UITextField alloc] init];
        _WBYBKOKWBYBKOKoldPasswordTextField.secureTextEntry = YES;
        _WBYBKOKWBYBKOKoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _WBYBKOKWBYBKOKoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WBYBKOKWBYBKOKoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WBYBKOKWBYBKOKoldPasswordTextField.layer.borderWidth = 2.0f;
        _WBYBKOKWBYBKOKoldPasswordTextField.layer.cornerRadius = 12.0f;
        _WBYBKOKWBYBKOKoldPasswordTextField.layer.masksToBounds = YES;
        _WBYBKOKWBYBKOKoldPasswordTextField.tag = 100;
        _WBYBKOKWBYBKOKoldPasswordTextField.delegate = self;
        _WBYBKOKWBYBKOKoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _WBYBKOKWBYBKOKoldPasswordTextField.textColor = [UIColor blackColor];
        _WBYBKOKWBYBKOKoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WBYBKOKWBYBKOKoldPasswordTextField;
}
- (UITextField *)WBYBKOKWBYBKOKcurrentPasswordTextField{
    if (!_WBYBKOKWBYBKOKcurrentPasswordTextField) {
        _WBYBKOKWBYBKOKcurrentPasswordTextField = [[UITextField alloc] init];
       _WBYBKOKWBYBKOKcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _WBYBKOKWBYBKOKcurrentPasswordTextField.secureTextEntry = YES;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.layer.masksToBounds = YES;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.tag = 101;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.delegate = self;
        _WBYBKOKWBYBKOKcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _WBYBKOKWBYBKOKcurrentPasswordTextField.textColor = [UIColor blackColor];
        _WBYBKOKWBYBKOKcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WBYBKOKWBYBKOKcurrentPasswordTextField;
}
- (UITextField *)WBYBKOKWBYBKOKconfirmPasswordTextField{
    if (!_WBYBKOKWBYBKOKconfirmPasswordTextField) {
        _WBYBKOKWBYBKOKconfirmPasswordTextField = [[UITextField alloc] init];
       _WBYBKOKWBYBKOKconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _WBYBKOKWBYBKOKconfirmPasswordTextField.secureTextEntry = YES;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.layer.masksToBounds = YES;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.tag = 102;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.delegate = self;
        _WBYBKOKWBYBKOKconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _WBYBKOKWBYBKOKconfirmPasswordTextField.textColor = [UIColor blackColor];
        _WBYBKOKWBYBKOKconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WBYBKOKWBYBKOKconfirmPasswordTextField;
}
- (UIButton *)WBYBKOKsureButton{
    if (!_WBYBKOKsureButton) {
        _WBYBKOKsureButton = [[UIButton alloc] init];
        _WBYBKOKsureButton.backgroundColor = [UIColor whiteColor];
        [_WBYBKOKsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_WBYBKOKsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _WBYBKOKsureButton.layer.cornerRadius = 8.0f;
        _WBYBKOKsureButton.layer.masksToBounds = YES;
        _WBYBKOKsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _WBYBKOKsureButton.layer.borderWidth = 2.0f;
        [_WBYBKOKsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_WBYBKOKsureButton addTarget:self action:@selector(WBYBKOKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKsureButton;
}
@end
