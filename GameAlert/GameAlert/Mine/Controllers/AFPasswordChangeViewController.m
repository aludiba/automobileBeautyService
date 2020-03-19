//
//  AFPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFPasswordChangeViewController.h"

@interface AFPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AFAFoldPasswordTextField;
@property(nonatomic, strong)UITextField *AFAFcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *AFAFconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *AFsureButton;
@property(nonatomic, copy)NSString *AFoldPassword;
@property(nonatomic, copy)NSString *AFcurrentPassword;
@property(nonatomic, copy)NSString *AFconfirmPassword;
@end

@implementation AFPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self AFsetContent];
}
- (void)AFsetContent{
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self.view addSubview:self.AFAFoldPasswordTextField];
    [self.view addSubview:self.AFAFcurrentPasswordTextField];
    [self.view addSubview:self.AFAFconfirmPasswordTextField];
    [self.view addSubview:self.AFsureButton];
    
    [self.AFAFoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(75);
        make.height.mas_equalTo(60);
    }];
    [self.AFAFcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AFAFoldPasswordTextField.mas_bottom).offset(35);
        make.height.mas_equalTo(60);
    }];
    [self.AFAFconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AFAFcurrentPasswordTextField.mas_bottom).offset(35);
        make.height.mas_equalTo(60);
    }];
    [self.AFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AFAFconfirmPasswordTextField.mas_bottom).offset(100);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.AFoldPassword.length) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.AFcurrentPassword.length) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.AFconfirmPassword.length) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.AFcurrentPassword isEqualToString:self.AFconfirmPassword]) {
        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.AFoldPassword newPassword:self.AFconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.AFconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD AFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD AFshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.AFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.AFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.AFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.AFconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AFAFoldPasswordTextField{
    if (!_AFAFoldPasswordTextField) {
        _AFAFoldPasswordTextField = [[UITextField alloc] init];
        _AFAFoldPasswordTextField.secureTextEntry = YES;
        _AFAFoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFAFoldPasswordTextField.layer.cornerRadius = 16.0f;
        _AFAFoldPasswordTextField.layer.masksToBounds = YES;
        _AFAFoldPasswordTextField.layer.borderWidth = 2.0f;
        _AFAFoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AFAFoldPasswordTextField.tag = 100;
        _AFAFoldPasswordTextField.delegate = self;
        _AFAFoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _AFAFoldPasswordTextField.textColor = [UIColor blackColor];
        _AFAFoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFAFoldPasswordTextField;
}
- (UITextField *)AFAFcurrentPasswordTextField{
    if (!_AFAFcurrentPasswordTextField) {
        _AFAFcurrentPasswordTextField = [[UITextField alloc] init];
        _AFAFcurrentPasswordTextField.secureTextEntry = YES;
        _AFAFcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _AFAFcurrentPasswordTextField.layer.cornerRadius = 16.0f;
    _AFAFcurrentPasswordTextField.layer.masksToBounds = YES;
        _AFAFcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _AFAFcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AFAFcurrentPasswordTextField.tag = 101;
        _AFAFcurrentPasswordTextField.delegate = self;
        _AFAFcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _AFAFcurrentPasswordTextField.textColor = [UIColor blackColor];
        _AFAFcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFAFcurrentPasswordTextField;
}
- (UITextField *)AFAFconfirmPasswordTextField{
    if (!_AFAFconfirmPasswordTextField) {
        _AFAFconfirmPasswordTextField = [[UITextField alloc] init];
        _AFAFconfirmPasswordTextField.secureTextEntry = YES;
        _AFAFconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFAFconfirmPasswordTextField.layer.cornerRadius = 16.0f;
        _AFAFconfirmPasswordTextField.layer.masksToBounds = YES;
            _AFAFconfirmPasswordTextField.layer.borderWidth = 2.0f;
            _AFAFconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AFAFconfirmPasswordTextField.tag = 102;
        _AFAFconfirmPasswordTextField.delegate = self;
        _AFAFconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _AFAFconfirmPasswordTextField.textColor = [UIColor blackColor];
        _AFAFconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _AFAFconfirmPasswordTextField;
}
- (UIButton *)AFsureButton{
    if (!_AFsureButton) {
        _AFsureButton = [[UIButton alloc] init];
        _AFsureButton.backgroundColor = AFH_Color(24, 50, 62, 1);
        [_AFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
         _AFsureButton.layer.cornerRadius = 16.0f;
        _AFsureButton.layer.masksToBounds = YES;
        _AFsureButton.layer.borderWidth = 2.0f;
        _AFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AFsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_AFsureButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFsureButton;
}
@end
