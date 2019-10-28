//
//  PFPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFPasswordChangeViewController.h"

@interface PFPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PFPFoldPasswordTextField;
@property(nonatomic, strong)UITextField *PFPFcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PFPFconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PFsureButton;
@property(nonatomic, copy)NSString *PFoldPassword;
@property(nonatomic, copy)NSString *PFcurrentPassword;
@property(nonatomic, copy)NSString *PFconfirmPassword;
@end

@implementation PFPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PFsetContent];
}
- (void)PFsetContent{
    [self.view addSubview:self.PFPFoldPasswordTextField];
    [self.view addSubview:self.PFPFcurrentPasswordTextField];
    [self.view addSubview:self.PFPFconfirmPasswordTextField];
    [self.view addSubview:self.PFsureButton];
    
    [self.PFPFoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PFPFcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PFPFoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PFPFconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PFPFcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PFPFconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PFoldPassword.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PFcurrentPassword.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PFconfirmPassword.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PFcurrentPassword isEqualToString:self.PFconfirmPassword]) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PFoldPassword newPassword:self.PFconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PFconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PFconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PFconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PFconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PFPFoldPasswordTextField{
    if (!_PFPFoldPasswordTextField) {
        _PFPFoldPasswordTextField = [[UITextField alloc] init];
        _PFPFoldPasswordTextField.secureTextEntry = YES;
        _PFPFoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PFPFoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFPFoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PFPFoldPasswordTextField.layer.borderWidth = 1.0f;
        _PFPFoldPasswordTextField.layer.cornerRadius = 12.0f;
        _PFPFoldPasswordTextField.layer.masksToBounds = YES;
        _PFPFoldPasswordTextField.tag = 100;
        _PFPFoldPasswordTextField.delegate = self;
        _PFPFoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PFPFoldPasswordTextField.textColor = [UIColor blackColor];
        _PFPFoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PFPFoldPasswordTextField;
}
- (UITextField *)PFPFcurrentPasswordTextField{
    if (!_PFPFcurrentPasswordTextField) {
        _PFPFcurrentPasswordTextField = [[UITextField alloc] init];
       _PFPFcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PFPFcurrentPasswordTextField.secureTextEntry = YES;
        _PFPFcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFPFcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PFPFcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _PFPFcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _PFPFcurrentPasswordTextField.layer.masksToBounds = YES;
        _PFPFcurrentPasswordTextField.tag = 101;
        _PFPFcurrentPasswordTextField.delegate = self;
        _PFPFcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PFPFcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PFPFcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PFPFcurrentPasswordTextField;
}
- (UITextField *)PFPFconfirmPasswordTextField{
    if (!_PFPFconfirmPasswordTextField) {
        _PFPFconfirmPasswordTextField = [[UITextField alloc] init];
       _PFPFconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PFPFconfirmPasswordTextField.secureTextEntry = YES;
        _PFPFconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFPFconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PFPFconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _PFPFconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _PFPFconfirmPasswordTextField.layer.masksToBounds = YES;
        _PFPFconfirmPasswordTextField.tag = 102;
        _PFPFconfirmPasswordTextField.delegate = self;
        _PFPFconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PFPFconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PFPFconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PFPFconfirmPasswordTextField;
}
- (UIButton *)PFsureButton{
    if (!_PFsureButton) {
        _PFsureButton = [[UIButton alloc] init];
        _PFsureButton.backgroundColor = [UIColor cyanColor];
        [_PFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PFsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFsureButton.layer.cornerRadius = 8.0f;
        _PFsureButton.layer.masksToBounds = YES;
        _PFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PFsureButton.layer.borderWidth = 1.0f;
        [_PFsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PFsureButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PFsureButton;
}
@end
