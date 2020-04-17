//
//  ALPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALPasswordChangeViewController.h"

@interface ALPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ALALoldPasswordTextField;
@property(nonatomic, strong)UITextField *ALALcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *ALALconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *ALsureButton;
@property(nonatomic, copy)NSString *ALoldPassword;
@property(nonatomic, copy)NSString *ALcurrentPassword;
@property(nonatomic, copy)NSString *ALconfirmPassword;
@end

@implementation ALPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"密码修改";
    [self ALsetContent];
}
- (void)ALsetContent{
    [self.view addSubview:self.ALALoldPasswordTextField];
    [self.view addSubview:self.ALALcurrentPasswordTextField];
    [self.view addSubview:self.ALALconfirmPasswordTextField];
    [self.view addSubview:self.ALsureButton];
    
    [self.ALALoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.ALALcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.ALALoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.ALALconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.ALALcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.ALsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.ALALconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)ALbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.ALoldPassword.length) {
        [MBProgressHUD ALshowReminderText:@"请输入旧密码"];
        return;
    }
    if (!self.ALcurrentPassword.length) {
        [MBProgressHUD ALshowReminderText:@"请输入新密码"];
        return;
    }
    if (!self.ALconfirmPassword.length) {
        [MBProgressHUD ALshowReminderText:@"请确认密码"];
        return;
    }
    if (![self.ALcurrentPassword isEqualToString:self.ALconfirmPassword]) {
        [MBProgressHUD ALshowReminderText:@"两次密码输入不一致"];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.ALoldPassword newPassword:self.ALconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.ALconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD ALshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD ALshowReminderText:@"密码修改成功"];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD ALshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.ALoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ALcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ALconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ALoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ALcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ALconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ALoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ALcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ALconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)ALALoldPasswordTextField{
    if (!_ALALoldPasswordTextField) {
        _ALALoldPasswordTextField = [[UITextField alloc] init];
        _ALALoldPasswordTextField.secureTextEntry = YES;
        _ALALoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ALALoldPasswordTextField.layer.cornerRadius = 2.0f;
        _ALALoldPasswordTextField.layer.masksToBounds = YES;
        _ALALoldPasswordTextField.layer.borderWidth = 1.0f;
        _ALALoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ALALoldPasswordTextField.tag = 100;
        _ALALoldPasswordTextField.delegate = self;
        _ALALoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _ALALoldPasswordTextField.textColor = [UIColor blackColor];
        _ALALoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ALALoldPasswordTextField;
}
- (UITextField *)ALALcurrentPasswordTextField{
    if (!_ALALcurrentPasswordTextField) {
        _ALALcurrentPasswordTextField = [[UITextField alloc] init];
        _ALALcurrentPasswordTextField.secureTextEntry = YES;
        _ALALcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _ALALcurrentPasswordTextField.layer.cornerRadius = 2.0f;
    _ALALcurrentPasswordTextField.layer.masksToBounds = YES;
        _ALALcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _ALALcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ALALcurrentPasswordTextField.tag = 101;
        _ALALcurrentPasswordTextField.delegate = self;
        _ALALcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _ALALcurrentPasswordTextField.textColor = [UIColor blackColor];
        _ALALcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ALALcurrentPasswordTextField;
}
- (UITextField *)ALALconfirmPasswordTextField{
    if (!_ALALconfirmPasswordTextField) {
        _ALALconfirmPasswordTextField = [[UITextField alloc] init];
        _ALALconfirmPasswordTextField.secureTextEntry = YES;
        _ALALconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ALALconfirmPasswordTextField.layer.cornerRadius = 2.0f;
        _ALALconfirmPasswordTextField.layer.masksToBounds = YES;
            _ALALconfirmPasswordTextField.layer.borderWidth = 1.0f;
            _ALALconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ALALconfirmPasswordTextField.tag = 102;
        _ALALconfirmPasswordTextField.delegate = self;
        _ALALconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"确认密码"];
        _ALALconfirmPasswordTextField.textColor = [UIColor blackColor];
        _ALALconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ALALconfirmPasswordTextField;
}
- (UIButton *)ALsureButton{
    if (!_ALsureButton) {
        _ALsureButton = [[UIButton alloc] init];
        _ALsureButton.backgroundColor = [UIColor greenColor];
        _ALsureButton.layer.cornerRadius = 4.0f;
        _ALsureButton.layer.masksToBounds = YES;
        _ALsureButton.layer.borderColor = ALH_Color(100, 141, 225, 1).CGColor;
        _ALsureButton.layer.borderWidth = 0.5f;
        [_ALsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_ALsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ALsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_ALsureButton addTarget:self action:@selector(ALbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALsureButton;
}
@end
