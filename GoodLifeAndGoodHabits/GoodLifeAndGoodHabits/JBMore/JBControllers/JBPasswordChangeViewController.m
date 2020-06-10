//
//  JBPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBPasswordChangeViewController.h"

@interface JBPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *JBJBoldPasswordTextField;
@property(nonatomic, strong)UITextField *JBJBcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *JBJBconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *JBsureButton;
@property(nonatomic, copy)NSString *JBoldPassword;
@property(nonatomic, copy)NSString *JBcurrentPassword;
@property(nonatomic, copy)NSString *JBconfirmPassword;
@end

@implementation JBPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self JBsetContent];
}
- (void)JBsetContent{
    [self.view addSubview:self.JBJBoldPasswordTextField];
    [self.view addSubview:self.JBJBcurrentPasswordTextField];
    [self.view addSubview:self.JBJBconfirmPasswordTextField];
    [self.view addSubview:self.JBsureButton];
    
    [self.JBJBoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.JBJBcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.JBJBoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.JBJBconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.JBJBcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.JBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.JBJBconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)JBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.JBoldPassword.length) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.JBcurrentPassword.length) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.JBconfirmPassword.length) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.JBcurrentPassword isEqualToString:self.JBconfirmPassword]) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.JBoldPassword newPassword:self.JBconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.JBconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD JBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD JBshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.JBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.JBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.JBconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.JBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.JBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.JBconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.JBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.JBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.JBconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)JBJBoldPasswordTextField{
    if (!_JBJBoldPasswordTextField) {
        _JBJBoldPasswordTextField = [[UITextField alloc] init];
        _JBJBoldPasswordTextField.secureTextEntry = YES;
        _JBJBoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _JBJBoldPasswordTextField.layer.cornerRadius = 12.0f;
        _JBJBoldPasswordTextField.layer.masksToBounds = YES;
        _JBJBoldPasswordTextField.layer.borderWidth = 1.5f;
        _JBJBoldPasswordTextField.layer.borderColor = [UIColor redColor].CGColor;
        _JBJBoldPasswordTextField.tag = 100;
        _JBJBoldPasswordTextField.delegate = self;
        _JBJBoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入旧密码", nil)];
        _JBJBoldPasswordTextField.textColor = [UIColor blackColor];
        _JBJBoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _JBJBoldPasswordTextField;
}
- (UITextField *)JBJBcurrentPasswordTextField{
    if (!_JBJBcurrentPasswordTextField) {
        _JBJBcurrentPasswordTextField = [[UITextField alloc] init];
        _JBJBcurrentPasswordTextField.secureTextEntry = YES;
        _JBJBcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _JBJBcurrentPasswordTextField.layer.cornerRadius = 12.0f;
    _JBJBcurrentPasswordTextField.layer.masksToBounds = YES;
        _JBJBcurrentPasswordTextField.layer.borderWidth = 1.5f;
        _JBJBcurrentPasswordTextField.layer.borderColor = [UIColor redColor].CGColor;
        _JBJBcurrentPasswordTextField.tag = 101;
        _JBJBcurrentPasswordTextField.delegate = self;
        _JBJBcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入新密码", nil)];
        _JBJBcurrentPasswordTextField.textColor = [UIColor blackColor];
        _JBJBcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _JBJBcurrentPasswordTextField;
}
- (UITextField *)JBJBconfirmPasswordTextField{
    if (!_JBJBconfirmPasswordTextField) {
        _JBJBconfirmPasswordTextField = [[UITextField alloc] init];
        _JBJBconfirmPasswordTextField.secureTextEntry = YES;
        _JBJBconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _JBJBconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _JBJBconfirmPasswordTextField.layer.masksToBounds = YES;
            _JBJBconfirmPasswordTextField.layer.borderWidth = 1.5f;
            _JBJBconfirmPasswordTextField.layer.borderColor = [UIColor redColor].CGColor;
        _JBJBconfirmPasswordTextField.tag = 102;
        _JBJBconfirmPasswordTextField.delegate = self;
        _JBJBconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _JBJBconfirmPasswordTextField.textColor = [UIColor blackColor];
        _JBJBconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _JBJBconfirmPasswordTextField;
}
- (UIButton *)JBsureButton{
    if (!_JBsureButton) {
        _JBsureButton = [[UIButton alloc] init];
        _JBsureButton.backgroundColor = [UIColor greenColor];
        _JBsureButton.layer.cornerRadius = 12.0f;
        _JBsureButton.layer.masksToBounds = YES;
        [_JBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_JBsureButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_JBsureButton addTarget:self action:@selector(JBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBsureButton;
}
@end
