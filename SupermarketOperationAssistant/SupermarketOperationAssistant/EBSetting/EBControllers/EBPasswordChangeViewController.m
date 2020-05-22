//
//  EBPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import "EBPasswordChangeViewController.h"

@interface EBPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *EBBoldPasswordTextField;
@property(nonatomic, strong)UITextField *EBcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *EBconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *EBsureButton;
@property(nonatomic, copy)NSString *EBoldPassword;
@property(nonatomic, copy)NSString *EBcurrentPassword;
@property(nonatomic, copy)NSString *EBconfirmPassword;
@end

@implementation EBPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self EBsetContent];
}
- (void)EBsetContent{
    [self.view addSubview:self.EBBoldPasswordTextField];
    [self.view addSubview:self.EBcurrentPasswordTextField];
    [self.view addSubview:self.EBconfirmPasswordTextField];
    [self.view addSubview:self.EBsureButton];
    
    [self.EBBoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.EBcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.EBBoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.EBconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.EBcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.EBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(64);
        make.trailing.equalTo(self.view).offset(-64);
        make.top.equalTo(self.EBconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)EBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.EBoldPassword.length) {
        [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.EBcurrentPassword.length) {
        [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.EBconfirmPassword.length) {
        [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.EBcurrentPassword isEqualToString:self.EBconfirmPassword]) {
        [MBProgressHUD EBshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.EBoldPassword newPassword:self.EBconfirmPassword block:^(id  _Nullable objEBt, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.EBconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD EBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD EBshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangEBharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.EBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EBconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.EBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EBconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.EBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EBconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)EBBoldPasswordTextField{
    if (!_EBBoldPasswordTextField) {
        _EBBoldPasswordTextField = [[UITextField alloc] init];
        _EBBoldPasswordTextField.secureTextEntry = YES;
        _EBBoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EBBoldPasswordTextField.layer.cornerRadius = 16.0f;
        _EBBoldPasswordTextField.layer.masksToBounds = YES;
        _EBBoldPasswordTextField.layer.borderWidth = 1.0f;
        _EBBoldPasswordTextField.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _EBBoldPasswordTextField.tag = 100;
        _EBBoldPasswordTextField.delegate = self;
        _EBBoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _EBBoldPasswordTextField.textColor = [UIColor blackColor];
        _EBBoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _EBBoldPasswordTextField;
}
- (UITextField *)EBcurrentPasswordTextField{
    if (!_EBcurrentPasswordTextField) {
        _EBcurrentPasswordTextField = [[UITextField alloc] init];
        _EBcurrentPasswordTextField.secureTextEntry = YES;
        _EBcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _EBcurrentPasswordTextField.layer.cornerRadius = 16.0f;
    _EBcurrentPasswordTextField.layer.masksToBounds = YES;
        _EBcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _EBcurrentPasswordTextField.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _EBcurrentPasswordTextField.tag = 101;
        _EBcurrentPasswordTextField.delegate = self;
        _EBcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _EBcurrentPasswordTextField.textColor = [UIColor blackColor];
        _EBcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _EBcurrentPasswordTextField;
}
- (UITextField *)EBconfirmPasswordTextField{
    if (!_EBconfirmPasswordTextField) {
        _EBconfirmPasswordTextField = [[UITextField alloc] init];
        _EBconfirmPasswordTextField.secureTextEntry = YES;
        _EBconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EBconfirmPasswordTextField.layer.cornerRadius = 16.0f;
        _EBconfirmPasswordTextField.layer.masksToBounds = YES;
            _EBconfirmPasswordTextField.layer.borderWidth = 1.0f;
            _EBconfirmPasswordTextField.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _EBconfirmPasswordTextField.tag = 102;
        _EBconfirmPasswordTextField.delegate = self;
        _EBconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _EBconfirmPasswordTextField.textColor = [UIColor blackColor];
        _EBconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _EBconfirmPasswordTextField;
}
- (UIButton *)EBsureButton{
    if (!_EBsureButton) {
        _EBsureButton = [[UIButton alloc] init];
        _EBsureButton.backgroundColor = [UIColor orangeColor];
        _EBsureButton.layer.cornerRadius = 8.0f;
        _EBsureButton.layer.masksToBounds = YES;
        [_EBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_EBsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EBsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_EBsureButton addTarget:self action:@selector(EBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBsureButton;
}
@end
