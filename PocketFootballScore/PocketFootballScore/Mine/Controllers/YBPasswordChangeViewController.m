//
//  YBPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBPasswordChangeViewController.h"

@interface YBPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YBYBoldPasswordTextField;
@property(nonatomic, strong)UITextField *YBYBcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *YBYBconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *YBsureButton;
@property(nonatomic, copy)NSString *YBoldPassword;
@property(nonatomic, copy)NSString *YBcurrentPassword;
@property(nonatomic, copy)NSString *YBconfirmPassword;
@end

@implementation YBPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self YBsetContent];
}
- (void)YBsetContent{
    [self.view addSubview:self.YBYBoldPasswordTextField];
    [self.view addSubview:self.YBYBcurrentPasswordTextField];
    [self.view addSubview:self.YBYBconfirmPasswordTextField];
    [self.view addSubview:self.YBsureButton];
    
    [self.YBYBoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.YBYBcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.YBYBoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YBYBconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.YBYBcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.YBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.YBYBconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)YBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.YBoldPassword.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.YBcurrentPassword.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.YBconfirmPassword.length) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.YBcurrentPassword isEqualToString:self.YBconfirmPassword]) {
        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.YBoldPassword newPassword:self.YBconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.YBconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD YBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD YBshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.YBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.YBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.YBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.YBconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)YBYBoldPasswordTextField{
    if (!_YBYBoldPasswordTextField) {
        _YBYBoldPasswordTextField = [[UITextField alloc] init];
        _YBYBoldPasswordTextField.secureTextEntry = YES;
        _YBYBoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _YBYBoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBYBoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBYBoldPasswordTextField.layer.borderWidth = 1.0f;
        _YBYBoldPasswordTextField.layer.cornerRadius = 12.0f;
        _YBYBoldPasswordTextField.layer.masksToBounds = YES;
        _YBYBoldPasswordTextField.tag = 100;
        _YBYBoldPasswordTextField.delegate = self;
        _YBYBoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _YBYBoldPasswordTextField.textColor = [UIColor blackColor];
        _YBYBoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBYBoldPasswordTextField;
}
- (UITextField *)YBYBcurrentPasswordTextField{
    if (!_YBYBcurrentPasswordTextField) {
        _YBYBcurrentPasswordTextField = [[UITextField alloc] init];
       _YBYBcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _YBYBcurrentPasswordTextField.secureTextEntry = YES;
        _YBYBcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBYBcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBYBcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _YBYBcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _YBYBcurrentPasswordTextField.layer.masksToBounds = YES;
        _YBYBcurrentPasswordTextField.tag = 101;
        _YBYBcurrentPasswordTextField.delegate = self;
        _YBYBcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _YBYBcurrentPasswordTextField.textColor = [UIColor blackColor];
        _YBYBcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBYBcurrentPasswordTextField;
}
- (UITextField *)YBYBconfirmPasswordTextField{
    if (!_YBYBconfirmPasswordTextField) {
        _YBYBconfirmPasswordTextField = [[UITextField alloc] init];
       _YBYBconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _YBYBconfirmPasswordTextField.secureTextEntry = YES;
        _YBYBconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBYBconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBYBconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _YBYBconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _YBYBconfirmPasswordTextField.layer.masksToBounds = YES;
        _YBYBconfirmPasswordTextField.tag = 102;
        _YBYBconfirmPasswordTextField.delegate = self;
        _YBYBconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _YBYBconfirmPasswordTextField.textColor = [UIColor blackColor];
        _YBYBconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _YBYBconfirmPasswordTextField;
}
- (UIButton *)YBsureButton{
    if (!_YBsureButton) {
        _YBsureButton = [[UIButton alloc] init];
        _YBsureButton.backgroundColor = [UIColor cyanColor];
        [_YBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YBsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBsureButton.layer.cornerRadius = 8.0f;
        _YBsureButton.layer.masksToBounds = YES;
        _YBsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YBsureButton.layer.borderWidth = 1.0f;
        [_YBsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_YBsureButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBsureButton;
}
@end
