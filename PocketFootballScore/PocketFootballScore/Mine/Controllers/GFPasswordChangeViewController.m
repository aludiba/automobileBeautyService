//
//  GFPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFPasswordChangeViewController.h"

@interface GFPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GFGFoldPasswordTextField;
@property(nonatomic, strong)UITextField *GFGFcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *GFGFconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *GFsureButton;
@property(nonatomic, copy)NSString *GFoldPassword;
@property(nonatomic, copy)NSString *GFcurrentPassword;
@property(nonatomic, copy)NSString *GFconfirmPassword;
@end

@implementation GFPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self GFsetContent];
}
- (void)GFsetContent{
    [self.view addSubview:self.GFGFoldPasswordTextField];
    [self.view addSubview:self.GFGFcurrentPasswordTextField];
    [self.view addSubview:self.GFGFconfirmPasswordTextField];
    [self.view addSubview:self.GFsureButton];
    
    [self.GFGFoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.GFGFcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.GFGFoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.GFGFconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.GFGFcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.GFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.GFGFconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)GFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.GFoldPassword.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.GFcurrentPassword.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.GFconfirmPassword.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.GFcurrentPassword isEqualToString:self.GFconfirmPassword]) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.GFoldPassword newPassword:self.GFconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.GFconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD GFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.GFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GFconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GFconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GFconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)GFGFoldPasswordTextField{
    if (!_GFGFoldPasswordTextField) {
        _GFGFoldPasswordTextField = [[UITextField alloc] init];
        _GFGFoldPasswordTextField.secureTextEntry = YES;
        _GFGFoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _GFGFoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFGFoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GFGFoldPasswordTextField.layer.borderWidth = 1.0f;
        _GFGFoldPasswordTextField.layer.cornerRadius = 12.0f;
        _GFGFoldPasswordTextField.layer.masksToBounds = YES;
        _GFGFoldPasswordTextField.tag = 100;
        _GFGFoldPasswordTextField.delegate = self;
        _GFGFoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _GFGFoldPasswordTextField.textColor = [UIColor blackColor];
        _GFGFoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GFGFoldPasswordTextField;
}
- (UITextField *)GFGFcurrentPasswordTextField{
    if (!_GFGFcurrentPasswordTextField) {
        _GFGFcurrentPasswordTextField = [[UITextField alloc] init];
       _GFGFcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _GFGFcurrentPasswordTextField.secureTextEntry = YES;
        _GFGFcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFGFcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GFGFcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _GFGFcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _GFGFcurrentPasswordTextField.layer.masksToBounds = YES;
        _GFGFcurrentPasswordTextField.tag = 101;
        _GFGFcurrentPasswordTextField.delegate = self;
        _GFGFcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _GFGFcurrentPasswordTextField.textColor = [UIColor blackColor];
        _GFGFcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GFGFcurrentPasswordTextField;
}
- (UITextField *)GFGFconfirmPasswordTextField{
    if (!_GFGFconfirmPasswordTextField) {
        _GFGFconfirmPasswordTextField = [[UITextField alloc] init];
       _GFGFconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _GFGFconfirmPasswordTextField.secureTextEntry = YES;
        _GFGFconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFGFconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GFGFconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _GFGFconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _GFGFconfirmPasswordTextField.layer.masksToBounds = YES;
        _GFGFconfirmPasswordTextField.tag = 102;
        _GFGFconfirmPasswordTextField.delegate = self;
        _GFGFconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _GFGFconfirmPasswordTextField.textColor = [UIColor blackColor];
        _GFGFconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GFGFconfirmPasswordTextField;
}
- (UIButton *)GFsureButton{
    if (!_GFsureButton) {
        _GFsureButton = [[UIButton alloc] init];
        _GFsureButton.backgroundColor = [UIColor cyanColor];
        [_GFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GFsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFsureButton.layer.cornerRadius = 8.0f;
        _GFsureButton.layer.masksToBounds = YES;
        _GFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _GFsureButton.layer.borderWidth = 1.0f;
        [_GFsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_GFsureButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GFsureButton;
}
@end
