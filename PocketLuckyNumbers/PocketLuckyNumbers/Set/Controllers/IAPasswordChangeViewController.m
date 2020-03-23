//
//  IAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "IAPasswordChangeViewController.h"

@interface IAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *IAoldPasswordTextField;
@property(nonatomic, strong)UITextField *IAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *IAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *IAsureButton;
@property(nonatomic, copy)NSString *IAoldPassword;
@property(nonatomic, copy)NSString *IAcurrentPassword;
@property(nonatomic, copy)NSString *IAconfirmPassword;
@end

@implementation IAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self IAsetContent];
}
- (void)IAsetContent{
    [self.view addSubview:self.IAoldPasswordTextField];
    [self.view addSubview:self.IAcurrentPasswordTextField];
    [self.view addSubview:self.IAconfirmPasswordTextField];
    [self.view addSubview:self.IAsureButton];
    
    [self.IAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(120);
        make.height.mas_equalTo(60);
    }];
    [self.IAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.IAoldPasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(60);
    }];
    [self.IAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.IAcurrentPasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(60);
    }];
    [self.IAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.IAconfirmPasswordTextField.mas_bottom).offset(55);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)IAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.IAoldPassword.length) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.IAcurrentPassword.length) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.IAconfirmPassword.length) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.IAcurrentPassword isEqualToString:self.IAconfirmPassword]) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.IAoldPassword newPassword:self.IAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.IAconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD IAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.IAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.IAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.IAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.IAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.IAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.IAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.IAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.IAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.IAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)IAoldPasswordTextField{
    if (!_IAoldPasswordTextField) {
        _IAoldPasswordTextField = [[UITextField alloc] init];
        _IAoldPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _IAoldPasswordTextField.secureTextEntry = YES;
        _IAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _IAoldPasswordTextField.layer.cornerRadius = 4.0f;
        _IAoldPasswordTextField.layer.masksToBounds = YES;
        _IAoldPasswordTextField.tag = 100;
        _IAoldPasswordTextField.delegate = self;
        _IAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _IAoldPasswordTextField.textColor = [UIColor blackColor];
        _IAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _IAoldPasswordTextField;
}
- (UITextField *)IAcurrentPasswordTextField{
    if (!_IAcurrentPasswordTextField) {
        _IAcurrentPasswordTextField = [[UITextField alloc] init];
        _IAcurrentPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _IAcurrentPasswordTextField.secureTextEntry = YES;
        _IAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _IAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _IAcurrentPasswordTextField.layer.masksToBounds = YES;
        _IAcurrentPasswordTextField.layer.cornerRadius = 4.0f;
        _IAcurrentPasswordTextField.layer.masksToBounds = YES;
        _IAcurrentPasswordTextField.tag = 101;
        _IAcurrentPasswordTextField.delegate = self;
        _IAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _IAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _IAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _IAcurrentPasswordTextField;
}
- (UITextField *)IAconfirmPasswordTextField{
    if (!_IAconfirmPasswordTextField) {
        _IAconfirmPasswordTextField = [[UITextField alloc] init];
        _IAconfirmPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _IAconfirmPasswordTextField.secureTextEntry = YES;
        _IAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _IAconfirmPasswordTextField.layer.cornerRadius = 4.0f;
        _IAconfirmPasswordTextField.layer.masksToBounds = YES;
        _IAconfirmPasswordTextField.tag = 102;
        _IAconfirmPasswordTextField.delegate = self;
        _IAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _IAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _IAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _IAconfirmPasswordTextField;
}
- (UIButton *)IAsureButton{
    if (!_IAsureButton) {
        _IAsureButton = [[UIButton alloc] init];
        _IAsureButton.backgroundColor = [UIColor systemGreenColor];
        [_IAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_IAsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _IAsureButton.layer.cornerRadius = 4.0f;
        _IAsureButton.layer.masksToBounds = YES;
        [_IAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_IAsureButton addTarget:self action:@selector(IAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IAsureButton;
}
@end
