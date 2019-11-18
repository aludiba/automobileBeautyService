//
//  BTPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "BTPasswordChangeViewController.h"

@interface BTPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *BTBToldPasswordTextField;
@property(nonatomic, strong)UITextField *BTBTcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *BTBTconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *BTsureButton;
@property(nonatomic, copy)NSString *BToldPassword;
@property(nonatomic, copy)NSString *BTcurrentPassword;
@property(nonatomic, copy)NSString *BTconfirmPassword;
@end

@implementation BTPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self BTsetContent];
}
- (void)BTsetContent{
    [self.view addSubview:self.BTBToldPasswordTextField];
    [self.view addSubview:self.BTBTcurrentPasswordTextField];
    [self.view addSubview:self.BTBTconfirmPasswordTextField];
    [self.view addSubview:self.BTsureButton];
    
    [self.BTBToldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.BTBTcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.BTBToldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.BTBTconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.BTBTcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.BTsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.BTBTconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)BTbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.BToldPassword.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.BTcurrentPassword.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.BTconfirmPassword.length) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.BTcurrentPassword isEqualToString:self.BTconfirmPassword]) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.BToldPassword newPassword:self.BTconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.BTconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD BTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.BToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BTconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BTconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.BToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.BTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.BTconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)BTBToldPasswordTextField{
    if (!_BTBToldPasswordTextField) {
        _BTBToldPasswordTextField = [[UITextField alloc] init];
        _BTBToldPasswordTextField.secureTextEntry = YES;
        _BTBToldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _BTBToldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BTBToldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _BTBToldPasswordTextField.layer.borderWidth = 2.0f;
        _BTBToldPasswordTextField.layer.cornerRadius = 12.0f;
        _BTBToldPasswordTextField.layer.masksToBounds = YES;
        _BTBToldPasswordTextField.tag = 100;
        _BTBToldPasswordTextField.delegate = self;
        _BTBToldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _BTBToldPasswordTextField.textColor = [UIColor blackColor];
        _BTBToldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BTBToldPasswordTextField;
}
- (UITextField *)BTBTcurrentPasswordTextField{
    if (!_BTBTcurrentPasswordTextField) {
        _BTBTcurrentPasswordTextField = [[UITextField alloc] init];
       _BTBTcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _BTBTcurrentPasswordTextField.secureTextEntry = YES;
        _BTBTcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BTBTcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _BTBTcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _BTBTcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _BTBTcurrentPasswordTextField.layer.masksToBounds = YES;
        _BTBTcurrentPasswordTextField.tag = 101;
        _BTBTcurrentPasswordTextField.delegate = self;
        _BTBTcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _BTBTcurrentPasswordTextField.textColor = [UIColor blackColor];
        _BTBTcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BTBTcurrentPasswordTextField;
}
- (UITextField *)BTBTconfirmPasswordTextField{
    if (!_BTBTconfirmPasswordTextField) {
        _BTBTconfirmPasswordTextField = [[UITextField alloc] init];
       _BTBTconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _BTBTconfirmPasswordTextField.secureTextEntry = YES;
        _BTBTconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BTBTconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _BTBTconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _BTBTconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _BTBTconfirmPasswordTextField.layer.masksToBounds = YES;
        _BTBTconfirmPasswordTextField.tag = 102;
        _BTBTconfirmPasswordTextField.delegate = self;
        _BTBTconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _BTBTconfirmPasswordTextField.textColor = [UIColor blackColor];
        _BTBTconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _BTBTconfirmPasswordTextField;
}
- (UIButton *)BTsureButton{
    if (!_BTsureButton) {
        _BTsureButton = [[UIButton alloc] init];
        _BTsureButton.backgroundColor = [UIColor whiteColor];
        [_BTsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BTsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _BTsureButton.layer.cornerRadius = 8.0f;
        _BTsureButton.layer.masksToBounds = YES;
        _BTsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _BTsureButton.layer.borderWidth = 2.0f;
        [_BTsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_BTsureButton addTarget:self action:@selector(BTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTsureButton;
}
@end
