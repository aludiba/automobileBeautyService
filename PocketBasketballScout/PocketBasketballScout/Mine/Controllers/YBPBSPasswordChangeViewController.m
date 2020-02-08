//
//  YBPBSPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPBSPasswordChangeViewController.h"

@interface YBPBSPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YBPBSYBPBSoldPasswordTextField;
@property(nonatomic, strong)UITextField *YBPBSYBPBScurrentPasswordTextField;
@property(nonatomic, strong)UITextField *YBPBSYBPBSconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *YBPBSsureButton;
@property(nonatomic, copy)NSString *YBPBSoldPassword;
@property(nonatomic, copy)NSString *YBPBScurrentPassword;
@property(nonatomic, copy)NSString *YBPBSconfirmPassword;
@end

@implementation YBPBSPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self YBPBSsetContent];
}
- (void)YBPBSsetContent{
    [self.view addSubview:self.YBPBSYBPBSoldPasswordTextField];
    [self.view addSubview:self.YBPBSYBPBScurrentPasswordTextField];
    [self.view addSubview:self.YBPBSYBPBSconfirmPasswordTextField];
    [self.view addSubview:self.YBPBSsureButton];
    
    [self.YBPBSYBPBSoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSYBPBScurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.YBPBSYBPBSoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSYBPBSconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.YBPBSYBPBScurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YBPBSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.YBPBSYBPBSconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)YBPBSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.YBPBSoldPassword.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.YBPBScurrentPassword.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.YBPBSconfirmPassword.length) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.YBPBScurrentPassword isEqualToString:self.YBPBSconfirmPassword]) {
        [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
     AVUser *user = [AVUser currentUser];
     NSString *name = user.username;
     [user updatePassword:self.YBPBSoldPassword newPassword:self.YBPBSconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
        if (error) {
            [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            //用新密码登录
            [AVUser logInWithUsernameInBackground:name password:name block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (error) {
                    [MBProgressHUD YBPBSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                } else {
                    [MBProgressHUD YBPBSshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                    [self.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.YBPBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBPBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBPBSconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YBPBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBPBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBPBSconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YBPBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBPBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBPBSconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)YBPBSYBPBSoldPasswordTextField{
    if (!_YBPBSYBPBSoldPasswordTextField) {
        _YBPBSYBPBSoldPasswordTextField = [[UITextField alloc] init];
        _YBPBSYBPBSoldPasswordTextField.secureTextEntry = YES;
        _YBPBSYBPBSoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _YBPBSYBPBSoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBPBSYBPBSoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBPBSYBPBSoldPasswordTextField.layer.borderWidth = 2.0f;
        _YBPBSYBPBSoldPasswordTextField.layer.cornerRadius = 12.0f;
        _YBPBSYBPBSoldPasswordTextField.layer.masksToBounds = YES;
        _YBPBSYBPBSoldPasswordTextField.tag = 100;
        _YBPBSYBPBSoldPasswordTextField.delegate = self;
        _YBPBSYBPBSoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _YBPBSYBPBSoldPasswordTextField.textColor = [UIColor blackColor];
        _YBPBSYBPBSoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBPBSYBPBSoldPasswordTextField;
}
- (UITextField *)YBPBSYBPBScurrentPasswordTextField{
    if (!_YBPBSYBPBScurrentPasswordTextField) {
        _YBPBSYBPBScurrentPasswordTextField = [[UITextField alloc] init];
       _YBPBSYBPBScurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _YBPBSYBPBScurrentPasswordTextField.secureTextEntry = YES;
        _YBPBSYBPBScurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBPBSYBPBScurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBPBSYBPBScurrentPasswordTextField.layer.borderWidth = 2.0f;
        _YBPBSYBPBScurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _YBPBSYBPBScurrentPasswordTextField.layer.masksToBounds = YES;
        _YBPBSYBPBScurrentPasswordTextField.tag = 101;
        _YBPBSYBPBScurrentPasswordTextField.delegate = self;
        _YBPBSYBPBScurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _YBPBSYBPBScurrentPasswordTextField.textColor = [UIColor blackColor];
        _YBPBSYBPBScurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBPBSYBPBScurrentPasswordTextField;
}
- (UITextField *)YBPBSYBPBSconfirmPasswordTextField{
    if (!_YBPBSYBPBSconfirmPasswordTextField) {
        _YBPBSYBPBSconfirmPasswordTextField = [[UITextField alloc] init];
       _YBPBSYBPBSconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _YBPBSYBPBSconfirmPasswordTextField.secureTextEntry = YES;
        _YBPBSYBPBSconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBPBSYBPBSconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBPBSYBPBSconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _YBPBSYBPBSconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _YBPBSYBPBSconfirmPasswordTextField.layer.masksToBounds = YES;
        _YBPBSYBPBSconfirmPasswordTextField.tag = 102;
        _YBPBSYBPBSconfirmPasswordTextField.delegate = self;
        _YBPBSYBPBSconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _YBPBSYBPBSconfirmPasswordTextField.textColor = [UIColor blackColor];
        _YBPBSYBPBSconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBPBSYBPBSconfirmPasswordTextField;
}
- (UIButton *)YBPBSsureButton{
    if (!_YBPBSsureButton) {
        _YBPBSsureButton = [[UIButton alloc] init];
        _YBPBSsureButton.backgroundColor = [UIColor whiteColor];
        [_YBPBSsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YBPBSsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _YBPBSsureButton.layer.cornerRadius = 8.0f;
        _YBPBSsureButton.layer.masksToBounds = YES;
        _YBPBSsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YBPBSsureButton.layer.borderWidth = 2.0f;
        [_YBPBSsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_YBPBSsureButton addTarget:self action:@selector(YBPBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSsureButton;
}
@end
