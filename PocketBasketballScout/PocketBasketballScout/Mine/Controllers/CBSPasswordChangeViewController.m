//
//  CBSPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "CBSPasswordChangeViewController.h"

@interface CBSPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CBSCBSoldPasswordTextField;
@property(nonatomic, strong)UITextField *CBSCBScurrentPasswordTextField;
@property(nonatomic, strong)UITextField *CBSCBSconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *CBSsureButton;
@property(nonatomic, copy)NSString *CBSoldPassword;
@property(nonatomic, copy)NSString *CBScurrentPassword;
@property(nonatomic, copy)NSString *CBSconfirmPassword;
@end

@implementation CBSPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self CBSsetContent];
}
- (void)CBSsetContent{
    [self.view addSubview:self.CBSCBSoldPasswordTextField];
    [self.view addSubview:self.CBSCBScurrentPasswordTextField];
    [self.view addSubview:self.CBSCBSconfirmPasswordTextField];
    [self.view addSubview:self.CBSsureButton];
    
    [self.CBSCBSoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.CBSCBScurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CBSCBSoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CBSCBSconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.CBSCBScurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.CBSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.CBSCBSconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CBSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.CBSoldPassword.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.CBScurrentPassword.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.CBSconfirmPassword.length) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.CBScurrentPassword isEqualToString:self.CBSconfirmPassword]) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.CBSoldPassword newPassword:self.CBSconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.CBSconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD CBSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.CBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CBSconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CBSconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CBSoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CBScurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CBSconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CBSCBSoldPasswordTextField{
    if (!_CBSCBSoldPasswordTextField) {
        _CBSCBSoldPasswordTextField = [[UITextField alloc] init];
        _CBSCBSoldPasswordTextField.secureTextEntry = YES;
        _CBSCBSoldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CBSCBSoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CBSCBSoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CBSCBSoldPasswordTextField.layer.borderWidth = 2.0f;
        _CBSCBSoldPasswordTextField.layer.cornerRadius = 12.0f;
        _CBSCBSoldPasswordTextField.layer.masksToBounds = YES;
        _CBSCBSoldPasswordTextField.tag = 100;
        _CBSCBSoldPasswordTextField.delegate = self;
        _CBSCBSoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _CBSCBSoldPasswordTextField.textColor = [UIColor blackColor];
        _CBSCBSoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CBSCBSoldPasswordTextField;
}
- (UITextField *)CBSCBScurrentPasswordTextField{
    if (!_CBSCBScurrentPasswordTextField) {
        _CBSCBScurrentPasswordTextField = [[UITextField alloc] init];
       _CBSCBScurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CBSCBScurrentPasswordTextField.secureTextEntry = YES;
        _CBSCBScurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CBSCBScurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CBSCBScurrentPasswordTextField.layer.borderWidth = 2.0f;
        _CBSCBScurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _CBSCBScurrentPasswordTextField.layer.masksToBounds = YES;
        _CBSCBScurrentPasswordTextField.tag = 101;
        _CBSCBScurrentPasswordTextField.delegate = self;
        _CBSCBScurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _CBSCBScurrentPasswordTextField.textColor = [UIColor blackColor];
        _CBSCBScurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CBSCBScurrentPasswordTextField;
}
- (UITextField *)CBSCBSconfirmPasswordTextField{
    if (!_CBSCBSconfirmPasswordTextField) {
        _CBSCBSconfirmPasswordTextField = [[UITextField alloc] init];
       _CBSCBSconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _CBSCBSconfirmPasswordTextField.secureTextEntry = YES;
        _CBSCBSconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CBSCBSconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CBSCBSconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _CBSCBSconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _CBSCBSconfirmPasswordTextField.layer.masksToBounds = YES;
        _CBSCBSconfirmPasswordTextField.tag = 102;
        _CBSCBSconfirmPasswordTextField.delegate = self;
        _CBSCBSconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _CBSCBSconfirmPasswordTextField.textColor = [UIColor blackColor];
        _CBSCBSconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CBSCBSconfirmPasswordTextField;
}
- (UIButton *)CBSsureButton{
    if (!_CBSsureButton) {
        _CBSsureButton = [[UIButton alloc] init];
        _CBSsureButton.backgroundColor = [UIColor whiteColor];
        [_CBSsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CBSsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _CBSsureButton.layer.cornerRadius = 8.0f;
        _CBSsureButton.layer.masksToBounds = YES;
        _CBSsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _CBSsureButton.layer.borderWidth = 2.0f;
        [_CBSsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CBSsureButton addTarget:self action:@selector(CBSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSsureButton;
}
@end
