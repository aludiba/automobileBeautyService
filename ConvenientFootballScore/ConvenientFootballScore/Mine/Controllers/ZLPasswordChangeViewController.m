//
//  ZLPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "ZLPasswordChangeViewController.h"

@interface ZLPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ZLoldPasswordTextField;
@property(nonatomic, strong)UITextField *ZLcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *ZLconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *ZLsureButton;
@property(nonatomic, copy)NSString *ZLoldPassword;
@property(nonatomic, copy)NSString *ZLcurrentPassword;
@property(nonatomic, copy)NSString *ZLconfirmPassword;
@end

@implementation ZLPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self ZLsetContent];
}
- (void)ZLsetContent{
    [self.view addSubview:self.ZLoldPasswordTextField];
    [self.view addSubview:self.ZLcurrentPasswordTextField];
    [self.view addSubview:self.ZLconfirmPasswordTextField];
    [self.view addSubview:self.ZLsureButton];
    
    [self.ZLoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.ZLcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ZLoldPasswordTextField.mas_bottom).offset(25);
        make.height.mas_equalTo(60);
    }];
    [self.ZLconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.ZLcurrentPasswordTextField.mas_bottom).offset(25);
        make.height.mas_equalTo(60);
    }];
    [self.ZLsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.ZLconfirmPasswordTextField.mas_bottom).offset(35);
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
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.ZLconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (error) {
                        [MBProgressHUD ZLshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD ZLshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
- (UITextField *)ZLoldPasswordTextField{
    if (!_ZLoldPasswordTextField) {
        _ZLoldPasswordTextField = [[UITextField alloc] init];
        _ZLoldPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _ZLoldPasswordTextField.secureTextEntry = YES;
        _ZLoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLoldPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLoldPasswordTextField.layer.masksToBounds = YES;
        _ZLoldPasswordTextField.tag = 100;
        _ZLoldPasswordTextField.delegate = self;
        _ZLoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _ZLoldPasswordTextField.textColor = [UIColor blackColor];
        _ZLoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLoldPasswordTextField;
}
- (UITextField *)ZLcurrentPasswordTextField{
    if (!_ZLcurrentPasswordTextField) {
        _ZLcurrentPasswordTextField = [[UITextField alloc] init];
        _ZLcurrentPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _ZLcurrentPasswordTextField.secureTextEntry = YES;
        _ZLcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ZLcurrentPasswordTextField.layer.masksToBounds = YES;
        _ZLcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLcurrentPasswordTextField.layer.masksToBounds = YES;
        _ZLcurrentPasswordTextField.tag = 101;
        _ZLcurrentPasswordTextField.delegate = self;
        _ZLcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _ZLcurrentPasswordTextField.textColor = [UIColor blackColor];
        _ZLcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLcurrentPasswordTextField;
}
- (UITextField *)ZLconfirmPasswordTextField{
    if (!_ZLconfirmPasswordTextField) {
        _ZLconfirmPasswordTextField = [[UITextField alloc] init];
        _ZLconfirmPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _ZLconfirmPasswordTextField.secureTextEntry = YES;
        _ZLconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ZLconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _ZLconfirmPasswordTextField.layer.masksToBounds = YES;
        _ZLconfirmPasswordTextField.tag = 102;
        _ZLconfirmPasswordTextField.delegate = self;
        _ZLconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _ZLconfirmPasswordTextField.textColor = [UIColor blackColor];
        _ZLconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ZLconfirmPasswordTextField;
}
- (UIButton *)ZLsureButton{
    if (!_ZLsureButton) {
        _ZLsureButton = [[UIButton alloc] init];
        _ZLsureButton.backgroundColor = [UIColor systemGreenColor];
        [_ZLsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ZLsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ZLsureButton.layer.cornerRadius = 8.0f;
        _ZLsureButton.layer.masksToBounds = YES;
        [_ZLsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_ZLsureButton addTarget:self action:@selector(ZLbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLsureButton;
}
@end
