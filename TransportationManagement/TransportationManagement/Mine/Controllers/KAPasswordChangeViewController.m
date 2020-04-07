//
//  KAPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAPasswordChangeViewController.h"

@interface KAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *KAKAoldPasswordTextField;
@property(nonatomic, strong)UITextField *KAKAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *KAKAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *KAsureButton;
@property(nonatomic, copy)NSString *KAoldPassword;
@property(nonatomic, copy)NSString *KAcurrentPassword;
@property(nonatomic, copy)NSString *KAconfirmPassword;
@end

@implementation KAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"密码修改";
    [self KAsetContent];
}
- (void)KAsetContent{
    [self.view addSubview:self.KAKAoldPasswordTextField];
    [self.view addSubview:self.KAKAcurrentPasswordTextField];
    [self.view addSubview:self.KAKAconfirmPasswordTextField];
    [self.view addSubview:self.KAsureButton];
    
    [self.KAKAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.KAKAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.KAKAoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.KAKAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.KAKAcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.KAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.KAKAconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)KAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.KAoldPassword.length) {
        [MBProgressHUD KAshowReminderText:@"请输入旧密码"];
        return;
    }
    if (!self.KAcurrentPassword.length) {
        [MBProgressHUD KAshowReminderText:@"请输入新密码"];
        return;
    }
    if (!self.KAconfirmPassword.length) {
        [MBProgressHUD KAshowReminderText:@"请确认密码"];
        return;
    }
    if (![self.KAcurrentPassword isEqualToString:self.KAconfirmPassword]) {
        [MBProgressHUD KAshowReminderText:@"两次密码输入不一致"];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.KAoldPassword newPassword:self.KAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.KAconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD KAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD KAshowReminderText:@"密码修改成功"];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD KAshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.KAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.KAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.KAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)KAKAoldPasswordTextField{
    if (!_KAKAoldPasswordTextField) {
        _KAKAoldPasswordTextField = [[UITextField alloc] init];
        _KAKAoldPasswordTextField.secureTextEntry = YES;
        _KAKAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KAKAoldPasswordTextField.layer.cornerRadius = 2.0f;
        _KAKAoldPasswordTextField.layer.masksToBounds = YES;
        _KAKAoldPasswordTextField.layer.borderWidth = 1.0f;
        _KAKAoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KAKAoldPasswordTextField.tag = 100;
        _KAKAoldPasswordTextField.delegate = self;
        _KAKAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _KAKAoldPasswordTextField.textColor = [UIColor blackColor];
        _KAKAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KAKAoldPasswordTextField;
}
- (UITextField *)KAKAcurrentPasswordTextField{
    if (!_KAKAcurrentPasswordTextField) {
        _KAKAcurrentPasswordTextField = [[UITextField alloc] init];
        _KAKAcurrentPasswordTextField.secureTextEntry = YES;
        _KAKAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _KAKAcurrentPasswordTextField.layer.cornerRadius = 2.0f;
    _KAKAcurrentPasswordTextField.layer.masksToBounds = YES;
        _KAKAcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _KAKAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KAKAcurrentPasswordTextField.tag = 101;
        _KAKAcurrentPasswordTextField.delegate = self;
        _KAKAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _KAKAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _KAKAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KAKAcurrentPasswordTextField;
}
- (UITextField *)KAKAconfirmPasswordTextField{
    if (!_KAKAconfirmPasswordTextField) {
        _KAKAconfirmPasswordTextField = [[UITextField alloc] init];
        _KAKAconfirmPasswordTextField.secureTextEntry = YES;
        _KAKAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KAKAconfirmPasswordTextField.layer.cornerRadius = 2.0f;
        _KAKAconfirmPasswordTextField.layer.masksToBounds = YES;
            _KAKAconfirmPasswordTextField.layer.borderWidth = 1.0f;
            _KAKAconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KAKAconfirmPasswordTextField.tag = 102;
        _KAKAconfirmPasswordTextField.delegate = self;
        _KAKAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"确认密码"];
        _KAKAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _KAKAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KAKAconfirmPasswordTextField;
}
- (UIButton *)KAsureButton{
    if (!_KAsureButton) {
        _KAsureButton = [[UIButton alloc] init];
        _KAsureButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _KAsureButton.layer.cornerRadius = 4.0f;
        _KAsureButton.layer.masksToBounds = YES;
        _KAsureButton.layer.borderColor = KAH_Color(100, 141, 225, 1).CGColor;
        _KAsureButton.layer.borderWidth = 0.5f;
        [_KAsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_KAsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_KAsureButton addTarget:self action:@selector(KAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAsureButton;
}
@end
