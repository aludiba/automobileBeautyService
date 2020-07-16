//
//  CDPasswordChangeViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDPasswordChangeViewController.h"

@interface CDPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CDCDoldPasswordTextField;
@property(nonatomic, strong)UITextField *CDCDcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *CDconfirmpasswordTextField;
@property(nonatomic, strong)UIButton *CDsureButton;
@property(nonatomic, copy)NSString *CDoldPassword;
@property(nonatomic, copy)NSString *CDcurrentPassword;
@property(nonatomic, copy)NSString *CDconfirmPassword;
@end

@implementation CDPasswordChangeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self CDsetContent];
}
- (void)CDsetContent{
    self.view.backgroundColor = CDH_Color(244, 245, 246, 1);
    [self.view addSubview:self.CDCDoldPasswordTextField];
    [self.view addSubview:self.CDCDcurrentPasswordTextField];
    [self.view addSubview:self.CDconfirmpasswordTextField];
    [self.view addSubview:self.CDsureButton];
    
    [self.CDCDoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.CDCDcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.CDCDoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.CDconfirmpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.CDCDcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.CDsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.CDconfirmpasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CDbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.CDoldPassword.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.CDcurrentPassword.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.CDconfirmPassword.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.CDcurrentPassword isEqualToString:self.CDconfirmPassword]) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
    AVUser *CDuser = [AVUser currentUser];
    NSString *CDname = CDuser.username;
    [CDuser updatePassword:self.CDoldPassword newPassword:self.CDconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
        if (!error) {
            //用新密码登录
            [AVUser logInWithUsernameInBackground:CDname password:self.CDconfirmPassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                if (error) {
                    [MBProgressHUD CDshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                } else {
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                    [self.navigationController popViewControllerAnimated:YES];
                }
            }];
        } else {
            [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.CDoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CDcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CDconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CDoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CDcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CDconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CDoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CDcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CDconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CDCDoldPasswordTextField{
    if (!_CDCDoldPasswordTextField) {
        _CDCDoldPasswordTextField = [[UITextField alloc] init];
        _CDCDoldPasswordTextField.secureTextEntry = YES;
        _CDCDoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CDCDoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CDCDoldPasswordTextField.layer.borderWidth = 0.5f;
        _CDCDoldPasswordTextField.layer.cornerRadius = 4.0f;
        _CDCDoldPasswordTextField.layer.masksToBounds = YES;
        _CDCDoldPasswordTextField.tag = 100;
        _CDCDoldPasswordTextField.delegate = self;
        _CDCDoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _CDCDoldPasswordTextField.textColor = [UIColor blackColor];
        _CDCDoldPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _CDCDoldPasswordTextField;
}
- (UITextField *)CDCDcurrentPasswordTextField{
    if (!_CDCDcurrentPasswordTextField) {
        _CDCDcurrentPasswordTextField = [[UITextField alloc] init];
        _CDCDcurrentPasswordTextField.secureTextEntry = YES;
        _CDCDcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CDCDcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CDCDcurrentPasswordTextField.layer.borderWidth = 0.5f;
        _CDCDcurrentPasswordTextField.layer.cornerRadius = 4.0f;
        _CDCDcurrentPasswordTextField.layer.masksToBounds = YES;
        _CDCDcurrentPasswordTextField.tag = 101;
        _CDCDcurrentPasswordTextField.delegate = self;
        _CDCDcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _CDCDcurrentPasswordTextField.textColor = [UIColor blackColor];
        _CDCDcurrentPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _CDCDcurrentPasswordTextField;
}
- (UITextField *)CDconfirmpasswordTextField{
    if (!_CDconfirmpasswordTextField) {
        _CDconfirmpasswordTextField = [[UITextField alloc] init];
        _CDconfirmpasswordTextField.secureTextEntry = YES;
        _CDconfirmpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CDconfirmpasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CDconfirmpasswordTextField.layer.borderWidth = 0.5f;
        _CDconfirmpasswordTextField.layer.cornerRadius = 4.0f;
        _CDconfirmpasswordTextField.layer.masksToBounds = YES;
        _CDconfirmpasswordTextField.tag = 102;
        _CDconfirmpasswordTextField.delegate = self;
        _CDconfirmpasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _CDconfirmpasswordTextField.textColor = [UIColor blackColor];
        _CDconfirmpasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _CDconfirmpasswordTextField;
}
- (UIButton *)CDsureButton{
    if (!_CDsureButton) {
        _CDsureButton = [[UIButton alloc] init];
        _CDsureButton.backgroundColor = [UIColor blueColor];
        [_CDsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_CDsureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _CDsureButton.layer.cornerRadius = 4.0f;
        _CDsureButton.layer.masksToBounds = YES;
        [_CDsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CDsureButton addTarget:self action:@selector(CDbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDsureButton;
}
@end
