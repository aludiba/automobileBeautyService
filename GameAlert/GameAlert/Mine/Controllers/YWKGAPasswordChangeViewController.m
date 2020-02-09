//
//  YWKGAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAPasswordChangeViewController.h"

@interface YWKGAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YWKGAYWKGAoldPasswordTextField;
@property(nonatomic, strong)UITextField *YWKGAYWKGAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *YWKGAYWKGAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *YWKGAsureButton;
@property(nonatomic, copy)NSString *YWKGAoldPassword;
@property(nonatomic, copy)NSString *YWKGAcurrentPassword;
@property(nonatomic, copy)NSString *YWKGAconfirmPassword;
@end

@implementation YWKGAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self YWKGAsetContent];
}
- (void)YWKGAsetContent{
    [self.view addSubview:self.YWKGAYWKGAoldPasswordTextField];
    [self.view addSubview:self.YWKGAYWKGAcurrentPasswordTextField];
    [self.view addSubview:self.YWKGAYWKGAconfirmPasswordTextField];
    [self.view addSubview:self.YWKGAsureButton];
    
    [self.YWKGAYWKGAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAYWKGAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.YWKGAYWKGAoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAYWKGAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.YWKGAYWKGAcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.YWKGAYWKGAconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)YWKGAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.YWKGAoldPassword.length) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.YWKGAcurrentPassword.length) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.YWKGAconfirmPassword.length) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.YWKGAcurrentPassword isEqualToString:self.YWKGAconfirmPassword]) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.YWKGAoldPassword newPassword:self.YWKGAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.YWKGAconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD YWKGAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.YWKGAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YWKGAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YWKGAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YWKGAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YWKGAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YWKGAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YWKGAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YWKGAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YWKGAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)YWKGAYWKGAoldPasswordTextField{
    if (!_YWKGAYWKGAoldPasswordTextField) {
        _YWKGAYWKGAoldPasswordTextField = [[UITextField alloc] init];
        _YWKGAYWKGAoldPasswordTextField.secureTextEntry = YES;
        _YWKGAYWKGAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YWKGAYWKGAoldPasswordTextField.layer.cornerRadius = 8.0f;
        _YWKGAYWKGAoldPasswordTextField.layer.masksToBounds = YES;
        _YWKGAYWKGAoldPasswordTextField.layer.borderWidth = 2.0f;
        _YWKGAYWKGAoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAYWKGAoldPasswordTextField.tag = 100;
        _YWKGAYWKGAoldPasswordTextField.delegate = self;
        _YWKGAYWKGAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _YWKGAYWKGAoldPasswordTextField.textColor = [UIColor blackColor];
        _YWKGAYWKGAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YWKGAYWKGAoldPasswordTextField;
}
- (UITextField *)YWKGAYWKGAcurrentPasswordTextField{
    if (!_YWKGAYWKGAcurrentPasswordTextField) {
        _YWKGAYWKGAcurrentPasswordTextField = [[UITextField alloc] init];
        _YWKGAYWKGAcurrentPasswordTextField.secureTextEntry = YES;
        _YWKGAYWKGAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _YWKGAYWKGAcurrentPasswordTextField.layer.cornerRadius = 8.0f;
    _YWKGAYWKGAcurrentPasswordTextField.layer.masksToBounds = YES;
        _YWKGAYWKGAcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _YWKGAYWKGAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAYWKGAcurrentPasswordTextField.tag = 101;
        _YWKGAYWKGAcurrentPasswordTextField.delegate = self;
        _YWKGAYWKGAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _YWKGAYWKGAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _YWKGAYWKGAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YWKGAYWKGAcurrentPasswordTextField;
}
- (UITextField *)YWKGAYWKGAconfirmPasswordTextField{
    if (!_YWKGAYWKGAconfirmPasswordTextField) {
        _YWKGAYWKGAconfirmPasswordTextField = [[UITextField alloc] init];
        _YWKGAYWKGAconfirmPasswordTextField.secureTextEntry = YES;
        _YWKGAYWKGAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YWKGAYWKGAconfirmPasswordTextField.layer.cornerRadius = 8.0f;
        _YWKGAYWKGAconfirmPasswordTextField.layer.masksToBounds = YES;
            _YWKGAYWKGAconfirmPasswordTextField.layer.borderWidth = 2.0f;
            _YWKGAYWKGAconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAYWKGAconfirmPasswordTextField.tag = 102;
        _YWKGAYWKGAconfirmPasswordTextField.delegate = self;
        _YWKGAYWKGAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _YWKGAYWKGAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _YWKGAYWKGAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YWKGAYWKGAconfirmPasswordTextField;
}
- (UIButton *)YWKGAsureButton{
    if (!_YWKGAsureButton) {
        _YWKGAsureButton = [[UIButton alloc] init];
        _YWKGAsureButton.backgroundColor = [UIColor cyanColor];
        [_YWKGAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YWKGAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
         _YWKGAsureButton.layer.cornerRadius = 8.0f;
        _YWKGAsureButton.layer.masksToBounds = YES;
        _YWKGAsureButton.layer.borderWidth = 2.0f;
        _YWKGAsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_YWKGAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_YWKGAsureButton addTarget:self action:@selector(YWKGAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAsureButton;
}
@end
