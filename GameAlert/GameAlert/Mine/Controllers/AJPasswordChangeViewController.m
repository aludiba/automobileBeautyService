//
//  AJPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJPasswordChangeViewController.h"

@interface AJPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AJAJoldPasswordTextField;
@property(nonatomic, strong)UITextField *AJAJcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *AJAJconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *AJsureButton;
@property(nonatomic, copy)NSString *AJoldPassword;
@property(nonatomic, copy)NSString *AJcurrentPassword;
@property(nonatomic, copy)NSString *AJconfirmPassword;
@end

@implementation AJPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self AJsetContent];
}
- (void)AJsetContent{
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    [self.view addSubview:self.AJAJoldPasswordTextField];
    [self.view addSubview:self.AJAJcurrentPasswordTextField];
    [self.view addSubview:self.AJAJconfirmPasswordTextField];
    [self.view addSubview:self.AJsureButton];
    
    [self.AJAJoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(75);
        make.height.mas_equalTo(60);
    }];
    [self.AJAJcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AJAJoldPasswordTextField.mas_bottom).offset(35);
        make.height.mas_equalTo(60);
    }];
    [self.AJAJconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AJAJcurrentPasswordTextField.mas_bottom).offset(35);
        make.height.mas_equalTo(60);
    }];
    [self.AJsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AJAJconfirmPasswordTextField.mas_bottom).offset(100);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AJbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.AJoldPassword.length) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.AJcurrentPassword.length) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.AJconfirmPassword.length) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.AJcurrentPassword isEqualToString:self.AJconfirmPassword]) {
        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.AJoldPassword newPassword:self.AJconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.AJconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD AJshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD AJshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.AJoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AJcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AJconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AJoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AJcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AJconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AJoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AJcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AJconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AJAJoldPasswordTextField{
    if (!_AJAJoldPasswordTextField) {
        _AJAJoldPasswordTextField = [[UITextField alloc] init];
        _AJAJoldPasswordTextField.secureTextEntry = YES;
        _AJAJoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AJAJoldPasswordTextField.layer.cornerRadius = 16.0f;
        _AJAJoldPasswordTextField.layer.masksToBounds = YES;
        _AJAJoldPasswordTextField.layer.borderWidth = 2.0f;
        _AJAJoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AJAJoldPasswordTextField.tag = 100;
        _AJAJoldPasswordTextField.delegate = self;
        _AJAJoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _AJAJoldPasswordTextField.textColor = [UIColor blackColor];
        _AJAJoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AJAJoldPasswordTextField;
}
- (UITextField *)AJAJcurrentPasswordTextField{
    if (!_AJAJcurrentPasswordTextField) {
        _AJAJcurrentPasswordTextField = [[UITextField alloc] init];
        _AJAJcurrentPasswordTextField.secureTextEntry = YES;
        _AJAJcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _AJAJcurrentPasswordTextField.layer.cornerRadius = 16.0f;
    _AJAJcurrentPasswordTextField.layer.masksToBounds = YES;
        _AJAJcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _AJAJcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AJAJcurrentPasswordTextField.tag = 101;
        _AJAJcurrentPasswordTextField.delegate = self;
        _AJAJcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _AJAJcurrentPasswordTextField.textColor = [UIColor blackColor];
        _AJAJcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AJAJcurrentPasswordTextField;
}
- (UITextField *)AJAJconfirmPasswordTextField{
    if (!_AJAJconfirmPasswordTextField) {
        _AJAJconfirmPasswordTextField = [[UITextField alloc] init];
        _AJAJconfirmPasswordTextField.secureTextEntry = YES;
        _AJAJconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AJAJconfirmPasswordTextField.layer.cornerRadius = 16.0f;
        _AJAJconfirmPasswordTextField.layer.masksToBounds = YES;
            _AJAJconfirmPasswordTextField.layer.borderWidth = 2.0f;
            _AJAJconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AJAJconfirmPasswordTextField.tag = 102;
        _AJAJconfirmPasswordTextField.delegate = self;
        _AJAJconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _AJAJconfirmPasswordTextField.textColor = [UIColor blackColor];
        _AJAJconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AJAJconfirmPasswordTextField;
}
- (UIButton *)AJsureButton{
    if (!_AJsureButton) {
        _AJsureButton = [[UIButton alloc] init];
        _AJsureButton.backgroundColor = AJH_Color(24, 50, 62, 1);
        [_AJsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
         _AJsureButton.layer.cornerRadius = 16.0f;
        _AJsureButton.layer.masksToBounds = YES;
        _AJsureButton.layer.borderWidth = 2.0f;
        _AJsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AJsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_AJsureButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJsureButton;
}
@end
