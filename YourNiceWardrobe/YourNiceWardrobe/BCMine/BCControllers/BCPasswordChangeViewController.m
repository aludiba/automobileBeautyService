//
//  BCPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCPasswordChangeViewController.h"

@interface BCPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *BCBColdPasswordTextField;
@property(nonatomic, strong)UITextField *BCBCcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *BCBCconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *BCsureButton;
@property(nonatomic, copy)NSString *BColdPassword;
@property(nonatomic, copy)NSString *BCcurrentPassword;
@property(nonatomic, copy)NSString *BCconfirmPassword;
@end

@implementation BCPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"密码修改";
    [self BCsetContent];
}
- (void)BCsetContent{
    [self.view addSubview:self.BCBColdPasswordTextField];
    [self.view addSubview:self.BCBCcurrentPasswordTextField];
    [self.view addSubview:self.BCBCconfirmPasswordTextField];
    [self.view addSubview:self.BCsureButton];
    
    [self.BCBColdPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.BCBCcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.BCBColdPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.BCBCconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.BCBCcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.BCsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.BCBCconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)BCbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.BColdPassword.length) {
        [MBProgressHUD BCshowReminderText:@"请输入旧密码"];
        return;
    }
    if (!self.BCcurrentPassword.length) {
        [MBProgressHUD BCshowReminderText:@"请输入新密码"];
        return;
    }
    if (!self.BCconfirmPassword.length) {
        [MBProgressHUD BCshowReminderText:@"请确认密码"];
        return;
    }
    if (![self.BCcurrentPassword isEqualToString:self.BCconfirmPassword]) {
        [MBProgressHUD BCshowReminderText:@"两次密码输入不一致"];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.BColdPassword newPassword:self.BCconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.BCconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD BCshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD BCshowReminderText:@"密码修改成功"];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD BCshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.BColdPassword = textField.text;
    }else if (textField.tag == 101){
        self.BCcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BCconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BColdPassword = textField.text;
    }else if (textField.tag == 101){
        self.BCcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BCconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BColdPassword = textField.text;
    }else if (textField.tag == 101){
        self.BCcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BCconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)BCBColdPasswordTextField{
    if (!_BCBColdPasswordTextField) {
        _BCBColdPasswordTextField = [[UITextField alloc] init];
        _BCBColdPasswordTextField.secureTextEntry = YES;
        _BCBColdPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BCBColdPasswordTextField.layer.cornerRadius = 16.0f;
        _BCBColdPasswordTextField.layer.masksToBounds = YES;
        _BCBColdPasswordTextField.layer.borderWidth = 1.0f;
        _BCBColdPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BCBColdPasswordTextField.tag = 100;
        _BCBColdPasswordTextField.delegate = self;
        _BCBColdPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入旧密码"];
        _BCBColdPasswordTextField.textColor = [UIColor blackColor];
        _BCBColdPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BCBColdPasswordTextField;
}
- (UITextField *)BCBCcurrentPasswordTextField{
    if (!_BCBCcurrentPasswordTextField) {
        _BCBCcurrentPasswordTextField = [[UITextField alloc] init];
        _BCBCcurrentPasswordTextField.secureTextEntry = YES;
        _BCBCcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _BCBCcurrentPasswordTextField.layer.cornerRadius = 16.0f;
    _BCBCcurrentPasswordTextField.layer.masksToBounds = YES;
        _BCBCcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _BCBCcurrentPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BCBCcurrentPasswordTextField.tag = 101;
        _BCBCcurrentPasswordTextField.delegate = self;
        _BCBCcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"输入新密码"];
        _BCBCcurrentPasswordTextField.textColor = [UIColor blackColor];
        _BCBCcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BCBCcurrentPasswordTextField;
}
- (UITextField *)BCBCconfirmPasswordTextField{
    if (!_BCBCconfirmPasswordTextField) {
        _BCBCconfirmPasswordTextField = [[UITextField alloc] init];
        _BCBCconfirmPasswordTextField.secureTextEntry = YES;
        _BCBCconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BCBCconfirmPasswordTextField.layer.cornerRadius = 16.0f;
        _BCBCconfirmPasswordTextField.layer.masksToBounds = YES;
            _BCBCconfirmPasswordTextField.layer.borderWidth = 1.0f;
            _BCBCconfirmPasswordTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BCBCconfirmPasswordTextField.tag = 102;
        _BCBCconfirmPasswordTextField.delegate = self;
        _BCBCconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",@"确认密码"];
        _BCBCconfirmPasswordTextField.textColor = [UIColor blackColor];
        _BCBCconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BCBCconfirmPasswordTextField;
}
- (UIButton *)BCsureButton{
    if (!_BCsureButton) {
        _BCsureButton = [[UIButton alloc] init];
        _BCsureButton.backgroundColor = [UIColor blueColor];
        _BCsureButton.layer.cornerRadius = 8.0f;
        _BCsureButton.layer.masksToBounds = YES;
        [_BCsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BCsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BCsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_BCsureButton addTarget:self action:@selector(BCbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCsureButton;
}
@end
