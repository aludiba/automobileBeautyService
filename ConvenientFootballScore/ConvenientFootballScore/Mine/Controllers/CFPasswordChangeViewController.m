//
//  CFPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CFPasswordChangeViewController.h"

@interface CFPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CFoldPasswordTextField;
@property(nonatomic, strong)UITextField *CFcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *CFconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *CFsureButton;
@property(nonatomic, copy)NSString *CFoldPassword;
@property(nonatomic, copy)NSString *CFcurrentPassword;
@property(nonatomic, copy)NSString *CFconfirmPassword;
@end

@implementation CFPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self CFsetContent];
}
- (void)CFsetContent{
    [self.view addSubview:self.CFoldPasswordTextField];
    [self.view addSubview:self.CFcurrentPasswordTextField];
    [self.view addSubview:self.CFconfirmPasswordTextField];
    [self.view addSubview:self.CFsureButton];
    
    [self.CFoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.CFcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CFoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CFconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CFcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.CFconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.CFoldPassword.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.CFcurrentPassword.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.CFconfirmPassword.length) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.CFcurrentPassword isEqualToString:self.CFconfirmPassword]) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.CFoldPassword newPassword:self.CFconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.CFconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD CFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.CFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CFconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CFconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CFoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CFcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CFconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CFoldPasswordTextField{
    if (!_CFoldPasswordTextField) {
        _CFoldPasswordTextField = [[UITextField alloc] init];
        _CFoldPasswordTextField.secureTextEntry = YES;
        _CFoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CFoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CFoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CFoldPasswordTextField.layer.borderWidth = 2.0f;
        _CFoldPasswordTextField.layer.cornerRadius = 12.0f;
        _CFoldPasswordTextField.layer.masksToBounds = YES;
        _CFoldPasswordTextField.tag = 100;
        _CFoldPasswordTextField.delegate = self;
        _CFoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _CFoldPasswordTextField.textColor = [UIColor blackColor];
        _CFoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CFoldPasswordTextField;
}
- (UITextField *)CFcurrentPasswordTextField{
    if (!_CFcurrentPasswordTextField) {
        _CFcurrentPasswordTextField = [[UITextField alloc] init];
       _CFcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CFcurrentPasswordTextField.secureTextEntry = YES;
        _CFcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CFcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CFcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _CFcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _CFcurrentPasswordTextField.layer.masksToBounds = YES;
        _CFcurrentPasswordTextField.tag = 101;
        _CFcurrentPasswordTextField.delegate = self;
        _CFcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _CFcurrentPasswordTextField.textColor = [UIColor blackColor];
        _CFcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CFcurrentPasswordTextField;
}
- (UITextField *)CFconfirmPasswordTextField{
    if (!_CFconfirmPasswordTextField) {
        _CFconfirmPasswordTextField = [[UITextField alloc] init];
       _CFconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CFconfirmPasswordTextField.secureTextEntry = YES;
        _CFconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CFconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CFconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _CFconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _CFconfirmPasswordTextField.layer.masksToBounds = YES;
        _CFconfirmPasswordTextField.tag = 102;
        _CFconfirmPasswordTextField.delegate = self;
        _CFconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _CFconfirmPasswordTextField.textColor = [UIColor blackColor];
        _CFconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CFconfirmPasswordTextField;
}
- (UIButton *)CFsureButton{
    if (!_CFsureButton) {
        _CFsureButton = [[UIButton alloc] init];
        _CFsureButton.backgroundColor = [UIColor whiteColor];
        [_CFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CFsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _CFsureButton.layer.cornerRadius = 8.0f;
        _CFsureButton.layer.masksToBounds = YES;
        _CFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CFsureButton.layer.borderWidth = 2.0f;
        [_CFsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CFsureButton addTarget:self action:@selector(CFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFsureButton;
}
@end
