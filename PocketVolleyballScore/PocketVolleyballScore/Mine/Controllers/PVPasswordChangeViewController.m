//
//  PVPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVPasswordChangeViewController.h"

@interface PVPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVPVoldPasswordTextField;
@property(nonatomic, strong)UITextField *PVPVcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PVPVconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PVsureButton;
@property(nonatomic, copy)NSString *PVoldPassword;
@property(nonatomic, copy)NSString *PVcurrentPassword;
@property(nonatomic, copy)NSString *PVconfirmPassword;
@end

@implementation PVPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PVsetContent];
}
- (void)PVsetContent{
    [self.view addSubview:self.PVPVoldPasswordTextField];
    [self.view addSubview:self.PVPVcurrentPasswordTextField];
    [self.view addSubview:self.PVPVconfirmPasswordTextField];
    [self.view addSubview:self.PVsureButton];
    
    [self.PVPVoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PVPVcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PVPVoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PVPVconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PVPVcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PVsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PVPVconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PVoldPassword.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PVcurrentPassword.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PVconfirmPassword.length) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PVcurrentPassword isEqualToString:self.PVconfirmPassword]) {
        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PVoldPassword newPassword:self.PVconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PVconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PVshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PVshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PVoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PVoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PVoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PVcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PVconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PVPVoldPasswordTextField{
    if (!_PVPVoldPasswordTextField) {
        _PVPVoldPasswordTextField = [[UITextField alloc] init];
        _PVPVoldPasswordTextField.secureTextEntry = YES;
        _PVPVoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVPVoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVPVoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVPVoldPasswordTextField.layer.borderWidth = 1.0f;
        _PVPVoldPasswordTextField.layer.cornerRadius = 12.0f;
        _PVPVoldPasswordTextField.layer.masksToBounds = YES;
        _PVPVoldPasswordTextField.tag = 100;
        _PVPVoldPasswordTextField.delegate = self;
        _PVPVoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PVPVoldPasswordTextField.textColor = [UIColor blackColor];
        _PVPVoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVPVoldPasswordTextField;
}
- (UITextField *)PVPVcurrentPasswordTextField{
    if (!_PVPVcurrentPasswordTextField) {
        _PVPVcurrentPasswordTextField = [[UITextField alloc] init];
       _PVPVcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVPVcurrentPasswordTextField.secureTextEntry = YES;
        _PVPVcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVPVcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVPVcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _PVPVcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _PVPVcurrentPasswordTextField.layer.masksToBounds = YES;
        _PVPVcurrentPasswordTextField.tag = 101;
        _PVPVcurrentPasswordTextField.delegate = self;
        _PVPVcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PVPVcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PVPVcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVPVcurrentPasswordTextField;
}
- (UITextField *)PVPVconfirmPasswordTextField{
    if (!_PVPVconfirmPasswordTextField) {
        _PVPVconfirmPasswordTextField = [[UITextField alloc] init];
       _PVPVconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PVPVconfirmPasswordTextField.secureTextEntry = YES;
        _PVPVconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVPVconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVPVconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _PVPVconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _PVPVconfirmPasswordTextField.layer.masksToBounds = YES;
        _PVPVconfirmPasswordTextField.tag = 102;
        _PVPVconfirmPasswordTextField.delegate = self;
        _PVPVconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PVPVconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PVPVconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PVPVconfirmPasswordTextField;
}
- (UIButton *)PVsureButton{
    if (!_PVsureButton) {
        _PVsureButton = [[UIButton alloc] init];
        _PVsureButton.backgroundColor = [UIColor cyanColor];
        [_PVsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVsureButton.layer.cornerRadius = 8.0f;
        _PVsureButton.layer.masksToBounds = YES;
        _PVsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVsureButton.layer.borderWidth = 1.0f;
        [_PVsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PVsureButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVsureButton;
}
@end
