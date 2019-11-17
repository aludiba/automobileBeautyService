//
//  AKPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKPasswordChangeViewController.h"

@interface AKPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AKAKoldPasswordTextField;
@property(nonatomic, strong)UITextField *AKAKcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *AKAKconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *AKsureButton;
@property(nonatomic, copy)NSString *AKoldPassword;
@property(nonatomic, copy)NSString *AKcurrentPassword;
@property(nonatomic, copy)NSString *AKconfirmPassword;
@end

@implementation AKPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self AKsetContent];
}
- (void)AKsetContent{
    self.view.backgroundColor = AKH_Color(244, 245, 246, 1);
    [self.view addSubview:self.AKAKoldPasswordTextField];
    [self.view addSubview:self.AKAKcurrentPasswordTextField];
    [self.view addSubview:self.AKAKconfirmPasswordTextField];
    [self.view addSubview:self.AKsureButton];
    
    [self.AKAKoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.AKAKcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.AKAKoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.AKAKconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.AKAKcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.AKsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AKAKconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.AKoldPassword.length) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.AKcurrentPassword.length) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.AKconfirmPassword.length) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.AKcurrentPassword isEqualToString:self.AKconfirmPassword]) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.AKoldPassword newPassword:self.AKconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.AKconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD AKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.AKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AKconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AKconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AKoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AKcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AKconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AKAKoldPasswordTextField{
    if (!_AKAKoldPasswordTextField) {
        _AKAKoldPasswordTextField = [[UITextField alloc] init];
        _AKAKoldPasswordTextField.secureTextEntry = YES;
        _AKAKoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKAKoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AKAKoldPasswordTextField.layer.borderWidth = 1.0f;
        _AKAKoldPasswordTextField.layer.cornerRadius = 12.0f;
        _AKAKoldPasswordTextField.layer.masksToBounds = YES;
        _AKAKoldPasswordTextField.tag = 100;
        _AKAKoldPasswordTextField.delegate = self;
        _AKAKoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _AKAKoldPasswordTextField.textColor = [UIColor blackColor];
        _AKAKoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AKAKoldPasswordTextField;
}
- (UITextField *)AKAKcurrentPasswordTextField{
    if (!_AKAKcurrentPasswordTextField) {
        _AKAKcurrentPasswordTextField = [[UITextField alloc] init];
        _AKAKcurrentPasswordTextField.secureTextEntry = YES;
        _AKAKcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKAKcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AKAKcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _AKAKcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _AKAKcurrentPasswordTextField.layer.masksToBounds = YES;
        _AKAKcurrentPasswordTextField.tag = 101;
        _AKAKcurrentPasswordTextField.delegate = self;
        _AKAKcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _AKAKcurrentPasswordTextField.textColor = [UIColor blackColor];
        _AKAKcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AKAKcurrentPasswordTextField;
}
- (UITextField *)AKAKconfirmPasswordTextField{
    if (!_AKAKconfirmPasswordTextField) {
        _AKAKconfirmPasswordTextField = [[UITextField alloc] init];
        _AKAKconfirmPasswordTextField.secureTextEntry = YES;
        _AKAKconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKAKconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AKAKconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _AKAKconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _AKAKconfirmPasswordTextField.layer.masksToBounds = YES;
        _AKAKconfirmPasswordTextField.tag = 102;
        _AKAKconfirmPasswordTextField.delegate = self;
        _AKAKconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _AKAKconfirmPasswordTextField.textColor = [UIColor blackColor];
        _AKAKconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AKAKconfirmPasswordTextField;
}
- (UIButton *)AKsureButton{
    if (!_AKsureButton) {
        _AKsureButton = [[UIButton alloc] init];
        _AKsureButton.backgroundColor = [UIColor grayColor];
        [_AKsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_AKsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _AKsureButton.layer.cornerRadius = 8.0f;
        _AKsureButton.layer.masksToBounds = YES;
        [_AKsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_AKsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AKsureButton;
}
@end
