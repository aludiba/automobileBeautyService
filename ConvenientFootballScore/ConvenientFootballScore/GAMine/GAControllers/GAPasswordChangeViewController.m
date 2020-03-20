//
//  GAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAPasswordChangeViewController.h"

@interface GAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GAoldPasswordTextField;
@property(nonatomic, strong)UITextField *GAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *GAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *GAsureButton;
@property(nonatomic, copy)NSString *GAoldPassword;
@property(nonatomic, copy)NSString *GAcurrentPassword;
@property(nonatomic, copy)NSString *GAconfirmPassword;
@end

@implementation GAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self GAsetContent];
}
- (void)GAsetContent{
    [self.view addSubview:self.GAoldPasswordTextField];
    [self.view addSubview:self.GAcurrentPasswordTextField];
    [self.view addSubview:self.GAconfirmPasswordTextField];
    [self.view addSubview:self.GAsureButton];
    
    [self.GAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(80);
        make.height.mas_equalTo(60);
    }];
    [self.GAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.GAoldPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.GAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.GAcurrentPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.GAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.GAconfirmPasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)GAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.GAoldPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.GAcurrentPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.GAconfirmPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.GAcurrentPassword isEqualToString:self.GAconfirmPassword]) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.GAoldPassword newPassword:self.GAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.GAconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD GAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)GAoldPasswordTextField{
    if (!_GAoldPasswordTextField) {
        _GAoldPasswordTextField = [[UITextField alloc] init];
        _GAoldPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _GAoldPasswordTextField.secureTextEntry = YES;
        _GAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAoldPasswordTextField.layer.cornerRadius = 12.0f;
        _GAoldPasswordTextField.layer.masksToBounds = YES;
        _GAoldPasswordTextField.tag = 100;
        _GAoldPasswordTextField.delegate = self;
        _GAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _GAoldPasswordTextField.textColor = [UIColor blackColor];
        _GAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAoldPasswordTextField;
}
- (UITextField *)GAcurrentPasswordTextField{
    if (!_GAcurrentPasswordTextField) {
        _GAcurrentPasswordTextField = [[UITextField alloc] init];
        _GAcurrentPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _GAcurrentPasswordTextField.secureTextEntry = YES;
        _GAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GAcurrentPasswordTextField.layer.masksToBounds = YES;
        _GAcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _GAcurrentPasswordTextField.layer.masksToBounds = YES;
        _GAcurrentPasswordTextField.tag = 101;
        _GAcurrentPasswordTextField.delegate = self;
        _GAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _GAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _GAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAcurrentPasswordTextField;
}
- (UITextField *)GAconfirmPasswordTextField{
    if (!_GAconfirmPasswordTextField) {
        _GAconfirmPasswordTextField = [[UITextField alloc] init];
        _GAconfirmPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _GAconfirmPasswordTextField.secureTextEntry = YES;
        _GAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _GAconfirmPasswordTextField.layer.masksToBounds = YES;
        _GAconfirmPasswordTextField.tag = 102;
        _GAconfirmPasswordTextField.delegate = self;
        _GAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _GAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _GAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAconfirmPasswordTextField;
}
- (UIButton *)GAsureButton{
    if (!_GAsureButton) {
        _GAsureButton = [[UIButton alloc] init];
        _GAsureButton.backgroundColor = [UIColor blackColor];
        [_GAsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_GAsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _GAsureButton.layer.cornerRadius = 4.0f;
        _GAsureButton.layer.masksToBounds = YES;
        [_GAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_GAsureButton addTarget:self action:@selector(GAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAsureButton;
}
@end
