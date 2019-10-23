//
//  PBPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBPasswordChangeViewController.h"

@interface PBPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PBPBoldPasswordTextField;
@property(nonatomic, strong)UITextField *PBPBcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PBPBconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PBsureButton;
@property(nonatomic, copy)NSString *PBoldPassword;
@property(nonatomic, copy)NSString *PBcurrentPassword;
@property(nonatomic, copy)NSString *PBconfirmPassword;
@end

@implementation PBPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PBsetContent];
}
- (void)PBsetContent{
    [self.view addSubview:self.PBPBoldPasswordTextField];
    [self.view addSubview:self.PBPBcurrentPasswordTextField];
    [self.view addSubview:self.PBPBconfirmPasswordTextField];
    [self.view addSubview:self.PBsureButton];
    
    [self.PBPBoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PBPBcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PBPBoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PBPBconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PBPBcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.PBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PBPBconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PBoldPassword.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PBcurrentPassword.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PBconfirmPassword.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PBcurrentPassword isEqualToString:self.PBconfirmPassword]) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PBoldPassword newPassword:self.PBconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PBconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PBconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PBconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PBoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PBcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PBconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PBPBoldPasswordTextField{
    if (!_PBPBoldPasswordTextField) {
        _PBPBoldPasswordTextField = [[UITextField alloc] init];
        _PBPBoldPasswordTextField.secureTextEntry = YES;
        _PBPBoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PBPBoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBPBoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PBPBoldPasswordTextField.layer.borderWidth = 1.0f;
        _PBPBoldPasswordTextField.layer.cornerRadius = 12.0f;
        _PBPBoldPasswordTextField.layer.masksToBounds = YES;
        _PBPBoldPasswordTextField.tag = 100;
        _PBPBoldPasswordTextField.delegate = self;
        _PBPBoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PBPBoldPasswordTextField.textColor = [UIColor blackColor];
        _PBPBoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PBPBoldPasswordTextField;
}
- (UITextField *)PBPBcurrentPasswordTextField{
    if (!_PBPBcurrentPasswordTextField) {
        _PBPBcurrentPasswordTextField = [[UITextField alloc] init];
       _PBPBcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PBPBcurrentPasswordTextField.secureTextEntry = YES;
        _PBPBcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBPBcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PBPBcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _PBPBcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _PBPBcurrentPasswordTextField.layer.masksToBounds = YES;
        _PBPBcurrentPasswordTextField.tag = 101;
        _PBPBcurrentPasswordTextField.delegate = self;
        _PBPBcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PBPBcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PBPBcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PBPBcurrentPasswordTextField;
}
- (UITextField *)PBPBconfirmPasswordTextField{
    if (!_PBPBconfirmPasswordTextField) {
        _PBPBconfirmPasswordTextField = [[UITextField alloc] init];
       _PBPBconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _PBPBconfirmPasswordTextField.secureTextEntry = YES;
        _PBPBconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBPBconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PBPBconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _PBPBconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _PBPBconfirmPasswordTextField.layer.masksToBounds = YES;
        _PBPBconfirmPasswordTextField.tag = 102;
        _PBPBconfirmPasswordTextField.delegate = self;
        _PBPBconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PBPBconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PBPBconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PBPBconfirmPasswordTextField;
}
- (UIButton *)PBsureButton{
    if (!_PBsureButton) {
        _PBsureButton = [[UIButton alloc] init];
        _PBsureButton.backgroundColor = [UIColor cyanColor];
        [_PBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PBsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBsureButton.layer.cornerRadius = 8.0f;
        _PBsureButton.layer.masksToBounds = YES;
        _PBsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PBsureButton.layer.borderWidth = 1.0f;
        [_PBsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PBsureButton addTarget:self action:@selector(PBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PBsureButton;
}
@end
