//
//  ZLPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ZLPasswordChangeViewController.h"

@interface ZLPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ZLZLoldPasswordTextField;
@property(nonatomic, strong)UITextField *ZLZLcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *ZLZLconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *ZLsureButton;
@property(nonatomic, copy)NSString *ZLoldPassword;
@property(nonatomic, copy)NSString *ZLcurrentPassword;
@property(nonatomic, copy)NSString *ZLconfirmPassword;
@end

@implementation ZLPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self ZLsetContent];
}
- (void)ZLsetContent{
    [self.view addSubview:self.ZLZLoldPasswordTextField];
    [self.view addSubview:self.ZLZLcurrentPasswordTextField];
    [self.view addSubview:self.ZLZLconfirmPasswordTextField];
    [self.view addSubview:self.ZLsureButton];
    
    [self.ZLZLoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.ZLZLcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ZLZLoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.ZLZLconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ZLZLcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.ZLsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.ZLZLconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)ZLbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.ZLoldPassword.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.ZLcurrentPassword.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.ZLconfirmPassword.length) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.ZLcurrentPassword isEqualToString:self.ZLconfirmPassword]) {
        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
     AVUser *user = [AVUser currentUser];
     NSString *name = user.username;
     [user updatePassword:self.ZLoldPassword newPassword:self.ZLconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
        if (error) {
            [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        } else {
            //用新密码登录
            [AVUser logInWithUsernameInBackground:name password:self.ZLconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (error) {
                    [MBProgressHUD ZLshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                } else {
                    [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                    [self.navigationController popViewControllerAnimated:YES];
                }
            }];
        }
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.ZLoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ZLcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ZLconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ZLoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ZLcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ZLconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ZLoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ZLcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ZLconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)ZLZLoldPasswordTextField{
    if (!_ZLZLoldPasswordTextField) {
        _ZLZLoldPasswordTextField = [[UITextField alloc] init];
        _ZLZLoldPasswordTextField.secureTextEntry = YES;
        _ZLZLoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ZLZLoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLZLoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ZLZLoldPasswordTextField.layer.borderWidth = 2.0f;
        _ZLZLoldPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLZLoldPasswordTextField.layer.masksToBounds = YES;
        _ZLZLoldPasswordTextField.tag = 100;
        _ZLZLoldPasswordTextField.delegate = self;
        _ZLZLoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _ZLZLoldPasswordTextField.textColor = [UIColor blackColor];
        _ZLZLoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLZLoldPasswordTextField;
}
- (UITextField *)ZLZLcurrentPasswordTextField{
    if (!_ZLZLcurrentPasswordTextField) {
        _ZLZLcurrentPasswordTextField = [[UITextField alloc] init];
       _ZLZLcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ZLZLcurrentPasswordTextField.secureTextEntry = YES;
        _ZLZLcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLZLcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ZLZLcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _ZLZLcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLZLcurrentPasswordTextField.layer.masksToBounds = YES;
        _ZLZLcurrentPasswordTextField.tag = 101;
        _ZLZLcurrentPasswordTextField.delegate = self;
        _ZLZLcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _ZLZLcurrentPasswordTextField.textColor = [UIColor blackColor];
        _ZLZLcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLZLcurrentPasswordTextField;
}
- (UITextField *)ZLZLconfirmPasswordTextField{
    if (!_ZLZLconfirmPasswordTextField) {
        _ZLZLconfirmPasswordTextField = [[UITextField alloc] init];
       _ZLZLconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _ZLZLconfirmPasswordTextField.secureTextEntry = YES;
        _ZLZLconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLZLconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ZLZLconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _ZLZLconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLZLconfirmPasswordTextField.layer.masksToBounds = YES;
        _ZLZLconfirmPasswordTextField.tag = 102;
        _ZLZLconfirmPasswordTextField.delegate = self;
        _ZLZLconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _ZLZLconfirmPasswordTextField.textColor = [UIColor blackColor];
        _ZLZLconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLZLconfirmPasswordTextField;
}
- (UIButton *)ZLsureButton{
    if (!_ZLsureButton) {
        _ZLsureButton = [[UIButton alloc] init];
        _ZLsureButton.backgroundColor = [UIColor whiteColor];
        [_ZLsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ZLsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ZLsureButton.layer.cornerRadius = 8.0f;
        _ZLsureButton.layer.masksToBounds = YES;
        _ZLsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _ZLsureButton.layer.borderWidth = 2.0f;
        [_ZLsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_ZLsureButton addTarget:self action:@selector(ZLbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLsureButton;
}
@end
