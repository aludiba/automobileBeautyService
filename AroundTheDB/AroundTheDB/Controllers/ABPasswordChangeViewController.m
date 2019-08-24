//
//  ABPasswordChangeViewController.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/24.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABPasswordChangeViewController.h"

@interface ABPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *oldPasswordTextField;
@property(nonatomic, strong)UITextField *currentPasswordTextField;
@property(nonatomic, strong)UITextField *confirmpasswordTextField;
@property(nonatomic, strong)UIButton *sureButton;
@property(nonatomic, copy)NSString *oldPassword;
@property(nonatomic, copy)NSString *currentPassword;
@property(nonatomic, copy)NSString *confirmPassword;
@end

@implementation ABPasswordChangeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"密码修改";
    self.view.backgroundColor = ABH_Color(21, 23, 45, 1);
    [self setContent];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = ABH_Color(32, 37, 54, 1);
}
- (void)setContent{
    [self.view addSubview:self.oldPasswordTextField];
    [self.view addSubview:self.currentPasswordTextField];
    [self.view addSubview:self.confirmpasswordTextField];
    [self.view addSubview:self.sureButton];
    
    [self.oldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.currentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.oldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.confirmpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.currentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.sureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.confirmpasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.oldPassword.length) {
        [MBProgressHUD ABshowReminderText:@"请输入旧密码"];
        return;
    }
    if (!self.currentPassword.length) {
        [MBProgressHUD ABshowReminderText:@"请输入新密码"];
        return;
    }
    if (!self.confirmPassword.length) {
        [MBProgressHUD ABshowReminderText:@"请确认密码"];
        return;
    }
    if (![self.currentPassword isEqualToString:self.confirmPassword]) {
        [MBProgressHUD ABshowReminderText:@"两次密码输入不一致"];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.oldPassword newPassword:self.confirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.confirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.oldPassword = textField.text;
    }else if (textField.tag == 101){
        self.currentPassword = textField.text;
    }else if (textField.tag == 102){
        self.confirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.oldPassword = textField.text;
    }else if (textField.tag == 101){
        self.currentPassword = textField.text;
    }else if (textField.tag == 102){
        self.confirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.oldPassword = textField.text;
    }else if (textField.tag == 101){
        self.currentPassword = textField.text;
    }else if (textField.tag == 102){
        self.confirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)oldPasswordTextField{
    if (!_oldPasswordTextField) {
        _oldPasswordTextField = [[UITextField alloc] init];
        _oldPasswordTextField.secureTextEntry = YES;
        _oldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _oldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _oldPasswordTextField.layer.borderWidth = 1.0f;
        _oldPasswordTextField.layer.cornerRadius = 8.0f;
        _oldPasswordTextField.layer.masksToBounds = YES;
        _oldPasswordTextField.tag = 100;
        _oldPasswordTextField.delegate = self;
        _oldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _oldPasswordTextField.textColor = [UIColor whiteColor];
        [_oldPasswordTextField setValue:[UIColor greenColor] forKeyPath:@"_placeholderLabel.textColor"];
        _oldPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _oldPasswordTextField;
}
- (UITextField *)currentPasswordTextField{
    if (!_currentPasswordTextField) {
        _currentPasswordTextField = [[UITextField alloc] init];
        _currentPasswordTextField.secureTextEntry = YES;
        _currentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _currentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _currentPasswordTextField.layer.borderWidth = 1.0f;
        _currentPasswordTextField.layer.cornerRadius = 8.0f;
        _currentPasswordTextField.layer.masksToBounds = YES;
        _currentPasswordTextField.tag = 101;
        _currentPasswordTextField.delegate = self;
        _currentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _currentPasswordTextField.textColor = [UIColor whiteColor];
        [_currentPasswordTextField setValue:[UIColor greenColor] forKeyPath:@"_placeholderLabel.textColor"];
        _currentPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _currentPasswordTextField;
}
- (UITextField *)confirmpasswordTextField{
    if (!_confirmpasswordTextField) {
        _confirmpasswordTextField = [[UITextField alloc] init];
        _confirmpasswordTextField.secureTextEntry = YES;
        _confirmpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _confirmpasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _confirmpasswordTextField.layer.borderWidth = 1.0f;
        _confirmpasswordTextField.layer.cornerRadius = 8.0f;
        _confirmpasswordTextField.layer.masksToBounds = YES;
        _confirmpasswordTextField.tag = 102;
        _confirmpasswordTextField.delegate = self;
        _confirmpasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"确认密码"];
        [_confirmpasswordTextField setValue:[UIColor greenColor] forKeyPath:@"_placeholderLabel.textColor"];
        _confirmpasswordTextField.textColor = [UIColor whiteColor];
        _confirmpasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _confirmpasswordTextField;
}
- (UIButton *)sureButton{
    if (!_sureButton) {
        _sureButton = [[UIButton alloc] init];
        _sureButton.backgroundColor = [UIColor blueColor];
        [_sureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _sureButton.layer.cornerRadius = 8.0f;
        _sureButton.layer.masksToBounds = YES;
        [_sureButton setTitle:@"确定" forState:UIControlStateNormal];
        [_sureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}
@end
