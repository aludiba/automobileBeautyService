//
//  PVYWKPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKPasswordChangeViewController.h"

@interface PVYWKPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVYWKPVYWKoldPasswordTextField;
@property(nonatomic, strong)UITextField *PVYWKPVYWKcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PVYWKPVYWKconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PVYWKsureButton;
@property(nonatomic, copy)NSString *PVYWKoldPassword;
@property(nonatomic, copy)NSString *PVYWKcurrentPassword;
@property(nonatomic, copy)NSString *PVYWKconfirmPassword;
@end

@implementation PVYWKPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PVYWKsetContent];
}
- (void)PVYWKsetContent{
    [self.view addSubview:self.PVYWKPVYWKoldPasswordTextField];
    [self.view addSubview:self.PVYWKPVYWKcurrentPasswordTextField];
    [self.view addSubview:self.PVYWKPVYWKconfirmPasswordTextField];
    [self.view addSubview:self.PVYWKsureButton];
    
    [self.PVYWKPVYWKoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PVYWKPVYWKcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PVYWKPVYWKoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PVYWKPVYWKconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PVYWKPVYWKcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PVYWKsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(150);
        make.trailing.equalTo(self.view).offset(-150);
        make.top.equalTo(self.PVYWKPVYWKconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVYWKbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PVYWKoldPassword.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PVYWKcurrentPassword.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PVYWKconfirmPassword.length) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PVYWKcurrentPassword isEqualToString:self.PVYWKconfirmPassword]) {
        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.PVYWKoldPassword newPassword:self.PVYWKconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.PVYWKconfirmPassword block:^(AVUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PVYWKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PVYWKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVYWKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVYWKconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PVYWKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVYWKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVYWKconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PVYWKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVYWKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVYWKconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PVYWKPVYWKoldPasswordTextField{
    if (!_PVYWKPVYWKoldPasswordTextField) {
        _PVYWKPVYWKoldPasswordTextField = [[UITextField alloc] init];
        _PVYWKPVYWKoldPasswordTextField.secureTextEntry = YES;
        _PVYWKPVYWKoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVYWKPVYWKoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKPVYWKoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKPVYWKoldPasswordTextField.layer.borderWidth = 1.0f;
        _PVYWKPVYWKoldPasswordTextField.layer.cornerRadius = 12.0f;
        _PVYWKPVYWKoldPasswordTextField.layer.masksToBounds = YES;
        _PVYWKPVYWKoldPasswordTextField.tag = 100;
        _PVYWKPVYWKoldPasswordTextField.delegate = self;
        _PVYWKPVYWKoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PVYWKPVYWKoldPasswordTextField.textColor = [UIColor blackColor];
        _PVYWKPVYWKoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVYWKPVYWKoldPasswordTextField;
}
- (UITextField *)PVYWKPVYWKcurrentPasswordTextField{
    if (!_PVYWKPVYWKcurrentPasswordTextField) {
        _PVYWKPVYWKcurrentPasswordTextField = [[UITextField alloc] init];
       _PVYWKPVYWKcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVYWKPVYWKcurrentPasswordTextField.secureTextEntry = YES;
        _PVYWKPVYWKcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKPVYWKcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKPVYWKcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _PVYWKPVYWKcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _PVYWKPVYWKcurrentPasswordTextField.layer.masksToBounds = YES;
        _PVYWKPVYWKcurrentPasswordTextField.tag = 101;
        _PVYWKPVYWKcurrentPasswordTextField.delegate = self;
        _PVYWKPVYWKcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PVYWKPVYWKcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PVYWKPVYWKcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVYWKPVYWKcurrentPasswordTextField;
}
- (UITextField *)PVYWKPVYWKconfirmPasswordTextField{
    if (!_PVYWKPVYWKconfirmPasswordTextField) {
        _PVYWKPVYWKconfirmPasswordTextField = [[UITextField alloc] init];
       _PVYWKPVYWKconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVYWKPVYWKconfirmPasswordTextField.secureTextEntry = YES;
        _PVYWKPVYWKconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKPVYWKconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKPVYWKconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _PVYWKPVYWKconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _PVYWKPVYWKconfirmPasswordTextField.layer.masksToBounds = YES;
        _PVYWKPVYWKconfirmPasswordTextField.tag = 102;
        _PVYWKPVYWKconfirmPasswordTextField.delegate = self;
        _PVYWKPVYWKconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PVYWKPVYWKconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PVYWKPVYWKconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVYWKPVYWKconfirmPasswordTextField;
}
- (UIButton *)PVYWKsureButton{
    if (!_PVYWKsureButton) {
        _PVYWKsureButton = [[UIButton alloc] init];
        _PVYWKsureButton.backgroundColor = [UIColor cyanColor];
        [_PVYWKsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVYWKsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKsureButton.layer.cornerRadius = 8.0f;
        _PVYWKsureButton.layer.masksToBounds = YES;
        _PVYWKsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKsureButton.layer.borderWidth = 1.0f;
        [_PVYWKsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PVYWKsureButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVYWKsureButton;
}
@end
