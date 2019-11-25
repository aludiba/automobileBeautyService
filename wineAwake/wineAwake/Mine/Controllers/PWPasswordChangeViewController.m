//
//  PWPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWPasswordChangeViewController.h"

@interface PWPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PWPWoldPasswordTextField;
@property(nonatomic, strong)UITextField *PWPWcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PWPWconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PWsureButton;
@property(nonatomic, copy)NSString *PWoldPassword;
@property(nonatomic, copy)NSString *PWcurrentPassword;
@property(nonatomic, copy)NSString *PWconfirmPassword;
@end

@implementation PWPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PWsetContent];
}
- (void)PWsetContent{
    self.view.backgroundColor = PWH_Color(244, 245, 246, 1);
    [self.view addSubview:self.PWPWoldPasswordTextField];
    [self.view addSubview:self.PWPWcurrentPasswordTextField];
    [self.view addSubview:self.PWPWconfirmPasswordTextField];
    [self.view addSubview:self.PWsureButton];
    
    [self.PWPWoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.PWPWcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.PWPWoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PWPWconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.PWPWcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PWsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PWPWconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PWoldPassword.length) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PWcurrentPassword.length) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PWconfirmPassword.length) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PWcurrentPassword isEqualToString:self.PWconfirmPassword]) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PWoldPassword newPassword:self.PWconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PWconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PWshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PWoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PWcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PWconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PWoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PWcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PWconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PWoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PWcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PWconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PWPWoldPasswordTextField{
    if (!_PWPWoldPasswordTextField) {
        _PWPWoldPasswordTextField = [[UITextField alloc] init];
        _PWPWoldPasswordTextField.secureTextEntry = YES;
        _PWPWoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWPWoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PWPWoldPasswordTextField.layer.borderWidth = 1.0f;
        _PWPWoldPasswordTextField.layer.cornerRadius = 12.0f;
        _PWPWoldPasswordTextField.layer.masksToBounds = YES;
        _PWPWoldPasswordTextField.tag = 100;
        _PWPWoldPasswordTextField.delegate = self;
        _PWPWoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PWPWoldPasswordTextField.textColor = [UIColor blackColor];
        _PWPWoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PWPWoldPasswordTextField;
}
- (UITextField *)PWPWcurrentPasswordTextField{
    if (!_PWPWcurrentPasswordTextField) {
        _PWPWcurrentPasswordTextField = [[UITextField alloc] init];
        _PWPWcurrentPasswordTextField.secureTextEntry = YES;
        _PWPWcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWPWcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PWPWcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _PWPWcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _PWPWcurrentPasswordTextField.layer.masksToBounds = YES;
        _PWPWcurrentPasswordTextField.tag = 101;
        _PWPWcurrentPasswordTextField.delegate = self;
        _PWPWcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PWPWcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PWPWcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PWPWcurrentPasswordTextField;
}
- (UITextField *)PWPWconfirmPasswordTextField{
    if (!_PWPWconfirmPasswordTextField) {
        _PWPWconfirmPasswordTextField = [[UITextField alloc] init];
        _PWPWconfirmPasswordTextField.secureTextEntry = YES;
        _PWPWconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWPWconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PWPWconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _PWPWconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _PWPWconfirmPasswordTextField.layer.masksToBounds = YES;
        _PWPWconfirmPasswordTextField.tag = 102;
        _PWPWconfirmPasswordTextField.delegate = self;
        _PWPWconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PWPWconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PWPWconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PWPWconfirmPasswordTextField;
}
- (UIButton *)PWsureButton{
    if (!_PWsureButton) {
        _PWsureButton = [[UIButton alloc] init];
        _PWsureButton.backgroundColor = [UIColor grayColor];
        [_PWsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_PWsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PWsureButton.layer.cornerRadius = 8.0f;
        _PWsureButton.layer.masksToBounds = YES;
        [_PWsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PWsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PWsureButton;
}
@end
