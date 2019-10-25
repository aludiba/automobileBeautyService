//
//  QSPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSPasswordChangeViewController.h"

@interface QSPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *QSQSoldPasswordTextField;
@property(nonatomic, strong)UITextField *QSQScurrentPasswordTextField;
@property(nonatomic, strong)UITextField *QSQSconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *QSsureButton;
@property(nonatomic, copy)NSString *QSoldPassword;
@property(nonatomic, copy)NSString *QScurrentPassword;
@property(nonatomic, copy)NSString *QSconfirmPassword;
@end

@implementation QSPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self QSsetContent];
}
- (void)QSsetContent{
    [self.view addSubview:self.QSQSoldPasswordTextField];
    [self.view addSubview:self.QSQScurrentPasswordTextField];
    [self.view addSubview:self.QSQSconfirmPasswordTextField];
    [self.view addSubview:self.QSsureButton];
    
    [self.QSQSoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.QSQScurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.QSQSoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.QSQSconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.QSQScurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.QSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.QSQSconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)QSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.QSoldPassword.length) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.QScurrentPassword.length) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.QSconfirmPassword.length) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.QScurrentPassword isEqualToString:self.QSconfirmPassword]) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.QSoldPassword newPassword:self.QSconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.QSconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD QSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.QSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.QScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.QSconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.QSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.QScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.QSconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.QSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.QScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.QSconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)QSQSoldPasswordTextField{
    if (!_QSQSoldPasswordTextField) {
        _QSQSoldPasswordTextField = [[UITextField alloc] init];
        _QSQSoldPasswordTextField.secureTextEntry = YES;
        _QSQSoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSQSoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _QSQSoldPasswordTextField.layer.borderWidth = 1.0f;
        _QSQSoldPasswordTextField.layer.cornerRadius = 12.0f;
        _QSQSoldPasswordTextField.layer.masksToBounds = YES;
        _QSQSoldPasswordTextField.tag = 100;
        _QSQSoldPasswordTextField.delegate = self;
        _QSQSoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _QSQSoldPasswordTextField.textColor = [UIColor blackColor];
        _QSQSoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _QSQSoldPasswordTextField;
}
- (UITextField *)QSQScurrentPasswordTextField{
    if (!_QSQScurrentPasswordTextField) {
        _QSQScurrentPasswordTextField = [[UITextField alloc] init];
        _QSQScurrentPasswordTextField.secureTextEntry = YES;
        _QSQScurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSQScurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _QSQScurrentPasswordTextField.layer.borderWidth = 1.0f;
        _QSQScurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _QSQScurrentPasswordTextField.layer.masksToBounds = YES;
        _QSQScurrentPasswordTextField.tag = 101;
        _QSQScurrentPasswordTextField.delegate = self;
        _QSQScurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _QSQScurrentPasswordTextField.textColor = [UIColor blackColor];
        _QSQScurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _QSQScurrentPasswordTextField;
}
- (UITextField *)QSQSconfirmPasswordTextField{
    if (!_QSQSconfirmPasswordTextField) {
        _QSQSconfirmPasswordTextField = [[UITextField alloc] init];
        _QSQSconfirmPasswordTextField.secureTextEntry = YES;
        _QSQSconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSQSconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _QSQSconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _QSQSconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _QSQSconfirmPasswordTextField.layer.masksToBounds = YES;
        _QSQSconfirmPasswordTextField.tag = 102;
        _QSQSconfirmPasswordTextField.delegate = self;
        _QSQSconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _QSQSconfirmPasswordTextField.textColor = [UIColor blackColor];
        _QSQSconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _QSQSconfirmPasswordTextField;
}
- (UIButton *)QSsureButton{
    if (!_QSsureButton) {
        _QSsureButton = [[UIButton alloc] init];
        _QSsureButton.backgroundColor = [UIColor grayColor];
        [_QSsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_QSsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _QSsureButton.layer.cornerRadius = 8.0f;
        _QSsureButton.layer.masksToBounds = YES;
        [_QSsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_QSsureButton addTarget:self action:@selector(QSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QSsureButton;
}
@end
