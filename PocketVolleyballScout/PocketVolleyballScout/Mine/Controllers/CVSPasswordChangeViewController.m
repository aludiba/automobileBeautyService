//
//  CVSPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CVSPasswordChangeViewController.h"

@interface CVSPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CVSCVSoldPasswordTextField;
@property(nonatomic, strong)UITextField *CVSCVScurrentPasswordTextField;
@property(nonatomic, strong)UITextField *CVSCVSconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *CVSsureButton;
@property(nonatomic, copy)NSString *CVSoldPassword;
@property(nonatomic, copy)NSString *CVScurrentPassword;
@property(nonatomic, copy)NSString *CVSconfirmPassword;
@end

@implementation CVSPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self CVSsetContent];
}
- (void)CVSsetContent{
    [self.view addSubview:self.CVSCVSoldPasswordTextField];
    [self.view addSubview:self.CVSCVScurrentPasswordTextField];
    [self.view addSubview:self.CVSCVSconfirmPasswordTextField];
    [self.view addSubview:self.CVSsureButton];
    
    [self.CVSCVSoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.CVSCVScurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CVSCVSoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CVSCVSconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CVSCVScurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CVSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.CVSCVSconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CVSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.CVSoldPassword.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.CVScurrentPassword.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.CVSconfirmPassword.length) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.CVScurrentPassword isEqualToString:self.CVSconfirmPassword]) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.CVSoldPassword newPassword:self.CVSconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.CVSconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD CVSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.CVSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CVScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CVSconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CVSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CVScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CVSconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CVSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CVScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CVSconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CVSCVSoldPasswordTextField{
    if (!_CVSCVSoldPasswordTextField) {
        _CVSCVSoldPasswordTextField = [[UITextField alloc] init];
        _CVSCVSoldPasswordTextField.secureTextEntry = YES;
        _CVSCVSoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CVSCVSoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CVSCVSoldPasswordTextField.layer.cornerRadius = 12.0f;
        _CVSCVSoldPasswordTextField.layer.masksToBounds = YES;
        _CVSCVSoldPasswordTextField.tag = 100;
        _CVSCVSoldPasswordTextField.delegate = self;
        _CVSCVSoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _CVSCVSoldPasswordTextField.textColor = [UIColor blackColor];
        _CVSCVSoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CVSCVSoldPasswordTextField;
}
- (UITextField *)CVSCVScurrentPasswordTextField{
    if (!_CVSCVScurrentPasswordTextField) {
        _CVSCVScurrentPasswordTextField = [[UITextField alloc] init];
       _CVSCVScurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CVSCVScurrentPasswordTextField.secureTextEntry = YES;
        _CVSCVScurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CVSCVScurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _CVSCVScurrentPasswordTextField.layer.masksToBounds = YES;
        _CVSCVScurrentPasswordTextField.tag = 101;
        _CVSCVScurrentPasswordTextField.delegate = self;
        _CVSCVScurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _CVSCVScurrentPasswordTextField.textColor = [UIColor blackColor];
        _CVSCVScurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CVSCVScurrentPasswordTextField;
}
- (UITextField *)CVSCVSconfirmPasswordTextField{
    if (!_CVSCVSconfirmPasswordTextField) {
        _CVSCVSconfirmPasswordTextField = [[UITextField alloc] init];
       _CVSCVSconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CVSCVSconfirmPasswordTextField.secureTextEntry = YES;
        _CVSCVSconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CVSCVSconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _CVSCVSconfirmPasswordTextField.layer.masksToBounds = YES;
        _CVSCVSconfirmPasswordTextField.tag = 102;
        _CVSCVSconfirmPasswordTextField.delegate = self;
        _CVSCVSconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _CVSCVSconfirmPasswordTextField.textColor = [UIColor blackColor];
        _CVSCVSconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CVSCVSconfirmPasswordTextField;
}
- (UIButton *)CVSsureButton{
    if (!_CVSsureButton) {
        _CVSsureButton = [[UIButton alloc] init];
        _CVSsureButton.backgroundColor = [UIColor cyanColor];
        [_CVSsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CVSsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _CVSsureButton.layer.cornerRadius = 8.0f;
        _CVSsureButton.layer.masksToBounds = YES;
        [_CVSsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CVSsureButton addTarget:self action:@selector(CVSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSsureButton;
}
@end
