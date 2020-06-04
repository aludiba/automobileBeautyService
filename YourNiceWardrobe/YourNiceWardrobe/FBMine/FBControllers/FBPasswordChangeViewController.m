//
//  FBPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBPasswordChangeViewController.h"

@interface FBPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *FBFBoldPasswordTextField;
@property(nonatomic, strong)UITextField *FBFBcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *FBFBconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *FBsureButton;
@property(nonatomic, copy)NSString *FBoldPassword;
@property(nonatomic, copy)NSString *FBcurrentPassword;
@property(nonatomic, copy)NSString *FBconfirmPassword;
@end

@implementation FBPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"密码修改";
    [self FBsetContent];
}
- (void)FBsetContent{
    [self.view addSubview:self.FBFBoldPasswordTextField];
    [self.view addSubview:self.FBFBcurrentPasswordTextField];
    [self.view addSubview:self.FBFBconfirmPasswordTextField];
    [self.view addSubview:self.FBsureButton];
    
    [self.FBFBoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.FBFBcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.FBFBoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.FBFBconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.FBFBcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.FBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.FBFBconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)FBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.FBoldPassword.length) {
        [MBProgressHUD FBshowReminderText:@"请输入旧密码"];
        return;
    }
    if (!self.FBcurrentPassword.length) {
        [MBProgressHUD FBshowReminderText:@"请输入新密码"];
        return;
    }
    if (!self.FBconfirmPassword.length) {
        [MBProgressHUD FBshowReminderText:@"请确认密码"];
        return;
    }
    if (![self.FBcurrentPassword isEqualToString:self.FBconfirmPassword]) {
        [MBProgressHUD FBshowReminderText:@"两次密码输入不一致"];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.FBoldPassword newPassword:self.FBconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.FBconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD FBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD FBshowReminderText:@"密码修改成功"];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD FBshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.FBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.FBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.FBconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.FBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.FBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.FBconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.FBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.FBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.FBconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)FBFBoldPasswordTextField{
    if (!_FBFBoldPasswordTextField) {
        _FBFBoldPasswordTextField = [[UITextField alloc] init];
        _FBFBoldPasswordTextField.secureTextEntry = YES;
        _FBFBoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _FBFBoldPasswordTextField.layer.cornerRadius = 16.0f;
        _FBFBoldPasswordTextField.layer.masksToBounds = YES;
        _FBFBoldPasswordTextField.layer.borderWidth = 1.0f;
        _FBFBoldPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _FBFBoldPasswordTextField.tag = 100;
        _FBFBoldPasswordTextField.delegate = self;
        _FBFBoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _FBFBoldPasswordTextField.textColor = [UIColor blackColor];
        _FBFBoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _FBFBoldPasswordTextField;
}
- (UITextField *)FBFBcurrentPasswordTextField{
    if (!_FBFBcurrentPasswordTextField) {
        _FBFBcurrentPasswordTextField = [[UITextField alloc] init];
        _FBFBcurrentPasswordTextField.secureTextEntry = YES;
        _FBFBcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _FBFBcurrentPasswordTextField.layer.cornerRadius = 16.0f;
    _FBFBcurrentPasswordTextField.layer.masksToBounds = YES;
        _FBFBcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _FBFBcurrentPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _FBFBcurrentPasswordTextField.tag = 101;
        _FBFBcurrentPasswordTextField.delegate = self;
        _FBFBcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _FBFBcurrentPasswordTextField.textColor = [UIColor blackColor];
        _FBFBcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _FBFBcurrentPasswordTextField;
}
- (UITextField *)FBFBconfirmPasswordTextField{
    if (!_FBFBconfirmPasswordTextField) {
        _FBFBconfirmPasswordTextField = [[UITextField alloc] init];
        _FBFBconfirmPasswordTextField.secureTextEntry = YES;
        _FBFBconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _FBFBconfirmPasswordTextField.layer.cornerRadius = 16.0f;
        _FBFBconfirmPasswordTextField.layer.masksToBounds = YES;
            _FBFBconfirmPasswordTextField.layer.borderWidth = 1.0f;
            _FBFBconfirmPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _FBFBconfirmPasswordTextField.tag = 102;
        _FBFBconfirmPasswordTextField.delegate = self;
        _FBFBconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"确认密码"];
        _FBFBconfirmPasswordTextField.textColor = [UIColor blackColor];
        _FBFBconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _FBFBconfirmPasswordTextField;
}
- (UIButton *)FBsureButton{
    if (!_FBsureButton) {
        _FBsureButton = [[UIButton alloc] init];
        _FBsureButton.backgroundColor = [UIColor blueColor];
        _FBsureButton.layer.cornerRadius = 8.0f;
        _FBsureButton.layer.masksToBounds = YES;
        [_FBsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_FBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_FBsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_FBsureButton addTarget:self action:@selector(FBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBsureButton;
}
@end
