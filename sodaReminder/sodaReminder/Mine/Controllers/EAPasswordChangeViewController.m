//
//  EAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAPasswordChangeViewController.h"

@interface EAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *EAEAoldPasswordTextField;
@property(nonatomic, strong)UITextField *EAEAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *EAEAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *EAsureButton;
@property(nonatomic, copy)NSString *EAoldPassword;
@property(nonatomic, copy)NSString *EAcurrentPassword;
@property(nonatomic, copy)NSString *EAconfirmPassword;
@end

@implementation EAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self EAsetContent];
}
- (void)EAsetContent{
    self.view.backgroundColor = EAH_Color(242, 242, 242, 1);
    [self.view addSubview:self.EAEAoldPasswordTextField];
    [self.view addSubview:self.EAEAcurrentPasswordTextField];
    [self.view addSubview:self.EAEAconfirmPasswordTextField];
    [self.view addSubview:self.EAsureButton];
    
    [self.EAEAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.EAEAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.EAEAoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.EAEAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.EAEAcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.EAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.EAEAconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)EAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.EAoldPassword.length) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.EAcurrentPassword.length) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.EAconfirmPassword.length) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.EAcurrentPassword isEqualToString:self.EAconfirmPassword]) {
        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.EAoldPassword newPassword:self.EAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.EAconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD EAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD EAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.EAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.EAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.EAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.EAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.EAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)EAEAoldPasswordTextField{
    if (!_EAEAoldPasswordTextField) {
        _EAEAoldPasswordTextField = [[UITextField alloc] init];
        _EAEAoldPasswordTextField.secureTextEntry = YES;
        _EAEAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAEAoldPasswordTextField.backgroundColor = [UIColor grayColor];
        _EAEAoldPasswordTextField.layer.cornerRadius = 12.0f;
        _EAEAoldPasswordTextField.layer.masksToBounds = YES;
        _EAEAoldPasswordTextField.tag = 100;
        _EAEAoldPasswordTextField.delegate = self;
        _EAEAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _EAEAoldPasswordTextField.textColor = [UIColor blackColor];
        _EAEAoldPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _EAEAoldPasswordTextField;
}
- (UITextField *)EAEAcurrentPasswordTextField{
    if (!_EAEAcurrentPasswordTextField) {
        _EAEAcurrentPasswordTextField = [[UITextField alloc] init];
        _EAEAcurrentPasswordTextField.secureTextEntry = YES;
        _EAEAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAEAcurrentPasswordTextField.backgroundColor = [UIColor grayColor];
        _EAEAcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _EAEAcurrentPasswordTextField.layer.masksToBounds = YES;
        _EAEAcurrentPasswordTextField.tag = 101;
        _EAEAcurrentPasswordTextField.delegate = self;
        _EAEAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _EAEAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _EAEAcurrentPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _EAEAcurrentPasswordTextField;
}
- (UITextField *)EAEAconfirmPasswordTextField{
    if (!_EAEAconfirmPasswordTextField) {
        _EAEAconfirmPasswordTextField = [[UITextField alloc] init];
        _EAEAconfirmPasswordTextField.secureTextEntry = YES;
        _EAEAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAEAconfirmPasswordTextField.backgroundColor = [UIColor grayColor];
        _EAEAconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _EAEAconfirmPasswordTextField.layer.masksToBounds = YES;
        _EAEAconfirmPasswordTextField.tag = 102;
        _EAEAconfirmPasswordTextField.delegate = self;
        _EAEAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _EAEAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _EAEAconfirmPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _EAEAconfirmPasswordTextField;
}
- (UIButton *)EAsureButton{
    if (!_EAsureButton) {
        _EAsureButton = [[UIButton alloc] init];
        _EAsureButton.backgroundColor = [UIColor purpleColor];
        [_EAsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_EAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _EAsureButton.layer.cornerRadius = 8.0f;
        _EAsureButton.layer.masksToBounds = YES;
        [_EAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_EAsureButton addTarget:self action:@selector(EAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAsureButton;
}
@end
