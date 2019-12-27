//
//  AFSPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFSPasswordChangeViewController.h"

@interface AFSPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AFSoldPasswordTextField;
@property(nonatomic, strong)UITextField *AFScurrentPasswordTextField;
@property(nonatomic, strong)UITextField *AFSconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *AFSsureButton;
@property(nonatomic, copy)NSString *AFSoldPassword;
@property(nonatomic, copy)NSString *AFScurrentPassword;
@property(nonatomic, copy)NSString *AFSconfirmPassword;
@end

@implementation AFSPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self AFSsetContent];
}
- (void)AFSsetContent{
    [self.view addSubview:self.AFSoldPasswordTextField];
    [self.view addSubview:self.AFScurrentPasswordTextField];
    [self.view addSubview:self.AFSconfirmPasswordTextField];
    [self.view addSubview:self.AFSsureButton];
    
    [self.AFSoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.AFScurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.AFSoldPasswordTextField.mas_bottom).offset(25);
        make.height.mas_equalTo(60);
    }];
    [self.AFSconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.AFScurrentPasswordTextField.mas_bottom).offset(25);
        make.height.mas_equalTo(60);
    }];
    [self.AFSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AFSconfirmPasswordTextField.mas_bottom).offset(35);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)AFSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.AFSoldPassword.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.AFScurrentPassword.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.AFSconfirmPassword.length) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.AFScurrentPassword isEqualToString:self.AFSconfirmPassword]) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.AFSoldPassword newPassword:self.AFSconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.AFSconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD AFSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.AFSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFSconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AFSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFSconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AFSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFSconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AFSoldPasswordTextField{
    if (!_AFSoldPasswordTextField) {
        _AFSoldPasswordTextField = [[UITextField alloc] init];
        _AFSoldPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _AFSoldPasswordTextField.secureTextEntry = YES;
        _AFSoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFSoldPasswordTextField.layer.cornerRadius = 12.0f;
        _AFSoldPasswordTextField.layer.masksToBounds = YES;
        _AFSoldPasswordTextField.tag = 100;
        _AFSoldPasswordTextField.delegate = self;
        _AFSoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _AFSoldPasswordTextField.textColor = [UIColor blackColor];
        _AFSoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFSoldPasswordTextField;
}
- (UITextField *)AFScurrentPasswordTextField{
    if (!_AFScurrentPasswordTextField) {
        _AFScurrentPasswordTextField = [[UITextField alloc] init];
        _AFScurrentPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _AFScurrentPasswordTextField.secureTextEntry = YES;
        _AFScurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFScurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AFScurrentPasswordTextField.layer.masksToBounds = YES;
        _AFScurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _AFScurrentPasswordTextField.layer.masksToBounds = YES;
        _AFScurrentPasswordTextField.tag = 101;
        _AFScurrentPasswordTextField.delegate = self;
        _AFScurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _AFScurrentPasswordTextField.textColor = [UIColor blackColor];
        _AFScurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFScurrentPasswordTextField;
}
- (UITextField *)AFSconfirmPasswordTextField{
    if (!_AFSconfirmPasswordTextField) {
        _AFSconfirmPasswordTextField = [[UITextField alloc] init];
        _AFSconfirmPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _AFSconfirmPasswordTextField.secureTextEntry = YES;
        _AFSconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFSconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _AFSconfirmPasswordTextField.layer.masksToBounds = YES;
        _AFSconfirmPasswordTextField.tag = 102;
        _AFSconfirmPasswordTextField.delegate = self;
        _AFSconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _AFSconfirmPasswordTextField.textColor = [UIColor blackColor];
        _AFSconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFSconfirmPasswordTextField;
}
- (UIButton *)AFSsureButton{
    if (!_AFSsureButton) {
        _AFSsureButton = [[UIButton alloc] init];
        _AFSsureButton.backgroundColor = [UIColor systemGreenColor];
        [_AFSsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFSsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AFSsureButton.layer.cornerRadius = 8.0f;
        _AFSsureButton.layer.masksToBounds = YES;
        [_AFSsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_AFSsureButton addTarget:self action:@selector(AFSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSsureButton;
}
@end
