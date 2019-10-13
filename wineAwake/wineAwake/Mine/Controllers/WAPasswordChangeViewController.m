//
//  WAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WAPasswordChangeViewController.h"

@interface WAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *WAWAoldPasswordTextField;
@property(nonatomic, strong)UITextField *WAWAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *WAWAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *WAsureButton;
@property(nonatomic, copy)NSString *WAoldPassword;
@property(nonatomic, copy)NSString *WAcurrentPassword;
@property(nonatomic, copy)NSString *WAconfirmPassword;
@end

@implementation WAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self WAsetContent];
}
- (void)WAsetContent{
    self.view.backgroundColor = WAH_Color(244, 245, 246, 1);
    [self.view addSubview:self.WAWAoldPasswordTextField];
    [self.view addSubview:self.WAWAcurrentPasswordTextField];
    [self.view addSubview:self.WAWAconfirmPasswordTextField];
    [self.view addSubview:self.WAsureButton];
    
    [self.WAWAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.WAWAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.WAWAoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.WAWAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.WAWAcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.WAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.WAWAconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.WAoldPassword.length) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.WAcurrentPassword.length) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.WAconfirmPassword.length) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.WAcurrentPassword isEqualToString:self.WAconfirmPassword]) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.WAoldPassword newPassword:self.WAconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.WAconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD WAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.WAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.WAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.WAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.WAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.WAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)WAWAoldPasswordTextField{
    if (!_WAWAoldPasswordTextField) {
        _WAWAoldPasswordTextField = [[UITextField alloc] init];
        _WAWAoldPasswordTextField.secureTextEntry = YES;
        _WAWAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAWAoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WAWAoldPasswordTextField.layer.borderWidth = 1.0f;
        _WAWAoldPasswordTextField.layer.cornerRadius = 12.0f;
        _WAWAoldPasswordTextField.layer.masksToBounds = YES;
        _WAWAoldPasswordTextField.tag = 100;
        _WAWAoldPasswordTextField.delegate = self;
        _WAWAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _WAWAoldPasswordTextField.textColor = [UIColor blackColor];
        _WAWAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WAWAoldPasswordTextField;
}
- (UITextField *)WAWAcurrentPasswordTextField{
    if (!_WAWAcurrentPasswordTextField) {
        _WAWAcurrentPasswordTextField = [[UITextField alloc] init];
        _WAWAcurrentPasswordTextField.secureTextEntry = YES;
        _WAWAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAWAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WAWAcurrentPasswordTextField.layer.borderWidth = 1.0f;
        _WAWAcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _WAWAcurrentPasswordTextField.layer.masksToBounds = YES;
        _WAWAcurrentPasswordTextField.tag = 101;
        _WAWAcurrentPasswordTextField.delegate = self;
        _WAWAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _WAWAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _WAWAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WAWAcurrentPasswordTextField;
}
- (UITextField *)WAWAconfirmPasswordTextField{
    if (!_WAWAconfirmPasswordTextField) {
        _WAWAconfirmPasswordTextField = [[UITextField alloc] init];
        _WAWAconfirmPasswordTextField.secureTextEntry = YES;
        _WAWAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAWAconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WAWAconfirmPasswordTextField.layer.borderWidth = 1.0f;
        _WAWAconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _WAWAconfirmPasswordTextField.layer.masksToBounds = YES;
        _WAWAconfirmPasswordTextField.tag = 102;
        _WAWAconfirmPasswordTextField.delegate = self;
        _WAWAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _WAWAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _WAWAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _WAWAconfirmPasswordTextField;
}
- (UIButton *)WAsureButton{
    if (!_WAsureButton) {
        _WAsureButton = [[UIButton alloc] init];
        _WAsureButton.backgroundColor = [UIColor grayColor];
        [_WAsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_WAsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _WAsureButton.layer.cornerRadius = 8.0f;
        _WAsureButton.layer.masksToBounds = YES;
        [_WAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_WAsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WAsureButton;
}
@end
