//
//  BGPasswordChangeViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGPasswordChangeViewController.h"

@interface BGPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *BGBGoldPasswordTextField;
@property(nonatomic, strong)UITextField *BGBGcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *BGBGconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *BGsureButton;
@property(nonatomic, copy)NSString *BGoldPassword;
@property(nonatomic, copy)NSString *BGcurrentPassword;
@property(nonatomic, copy)NSString *BGconfirmPassword;
@end

@implementation BGPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self BGsetContent];
}
- (void)BGsetContent{
    self.view.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.BGBGoldPasswordTextField];
    [self.view addSubview:self.BGBGcurrentPasswordTextField];
    [self.view addSubview:self.BGBGconfirmPasswordTextField];
    [self.view addSubview:self.BGsureButton];
    
    [self.BGBGoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.BGBGcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.BGBGoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.BGBGconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.BGBGcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(50);
    }];
    [self.BGsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.BGBGconfirmPasswordTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)BGbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.BGoldPassword.length) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.BGcurrentPassword.length) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.BGconfirmPassword.length) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.BGcurrentPassword isEqualToString:self.BGconfirmPassword]) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.BGoldPassword newPassword:self.BGconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.BGconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD BGshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD BGshowReminderText:@"请稍后重试"];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.BGoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BGcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BGconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BGoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BGcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BGconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BGoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BGcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BGconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)BGBGoldPasswordTextField{
    if (!_BGBGoldPasswordTextField) {
        _BGBGoldPasswordTextField = [[UITextField alloc] init];
        _BGBGoldPasswordTextField.secureTextEntry = YES;
        _BGBGoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BGBGoldPasswordTextField.layer.cornerRadius = 12.0f;
        _BGBGoldPasswordTextField.layer.masksToBounds = YES;
        _BGBGoldPasswordTextField.layer.borderWidth = 1.5f;
        _BGBGoldPasswordTextField.layer.borderColor = [UIColor greenColor].CGColor;
        _BGBGoldPasswordTextField.tag = 100;
        _BGBGoldPasswordTextField.delegate = self;
        _BGBGoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入旧密码", nil)];
        _BGBGoldPasswordTextField.textColor = [UIColor blackColor];
        _BGBGoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BGBGoldPasswordTextField;
}
- (UITextField *)BGBGcurrentPasswordTextField{
    if (!_BGBGcurrentPasswordTextField) {
        _BGBGcurrentPasswordTextField = [[UITextField alloc] init];
        _BGBGcurrentPasswordTextField.secureTextEntry = YES;
        _BGBGcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _BGBGcurrentPasswordTextField.layer.cornerRadius = 12.0f;
    _BGBGcurrentPasswordTextField.layer.masksToBounds = YES;
        _BGBGcurrentPasswordTextField.layer.borderWidth = 1.5f;
        _BGBGcurrentPasswordTextField.layer.borderColor = [UIColor greenColor].CGColor;
        _BGBGcurrentPasswordTextField.tag = 101;
        _BGBGcurrentPasswordTextField.delegate = self;
        _BGBGcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入新密码", nil)];
        _BGBGcurrentPasswordTextField.textColor = [UIColor blackColor];
        _BGBGcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BGBGcurrentPasswordTextField;
}
- (UITextField *)BGBGconfirmPasswordTextField{
    if (!_BGBGconfirmPasswordTextField) {
        _BGBGconfirmPasswordTextField = [[UITextField alloc] init];
        _BGBGconfirmPasswordTextField.secureTextEntry = YES;
        _BGBGconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BGBGconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _BGBGconfirmPasswordTextField.layer.masksToBounds = YES;
            _BGBGconfirmPasswordTextField.layer.borderWidth = 1.5f;
            _BGBGconfirmPasswordTextField.layer.borderColor = [UIColor greenColor].CGColor;
        _BGBGconfirmPasswordTextField.tag = 102;
        _BGBGconfirmPasswordTextField.delegate = self;
        _BGBGconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _BGBGconfirmPasswordTextField.textColor = [UIColor blackColor];
        _BGBGconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BGBGconfirmPasswordTextField;
}
- (UIButton *)BGsureButton{
    if (!_BGsureButton) {
        _BGsureButton = [[UIButton alloc] init];
        _BGsureButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _BGsureButton.layer.cornerRadius = 12.0f;
        _BGsureButton.layer.masksToBounds = YES;
        _BGsureButton.layer.borderColor = [UIColor greenColor].CGColor;
        _BGsureButton.layer.borderWidth = 1.5f;
        [_BGsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_BGsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BGsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_BGsureButton addTarget:self action:@selector(BGbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGsureButton;
}
@end
