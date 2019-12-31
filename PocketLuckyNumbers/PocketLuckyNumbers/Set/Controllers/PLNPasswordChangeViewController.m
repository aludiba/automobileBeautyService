//
//  PLNPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PLNPasswordChangeViewController.h"

@interface PLNPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PLNoldPasswordTextField;
@property(nonatomic, strong)UITextField *PLNcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PLNconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *PLNsureButton;
@property(nonatomic, copy)NSString *PLNoldPassword;
@property(nonatomic, copy)NSString *PLNcurrentPassword;
@property(nonatomic, copy)NSString *PLNconfirmPassword;
@end

@implementation PLNPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PLNsetContent];
}
- (void)PLNsetContent{
    [self.view addSubview:self.PLNoldPasswordTextField];
    [self.view addSubview:self.PLNcurrentPasswordTextField];
    [self.view addSubview:self.PLNconfirmPasswordTextField];
    [self.view addSubview:self.PLNsureButton];
    
    [self.PLNoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(120);
        make.height.mas_equalTo(60);
    }];
    [self.PLNcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.PLNoldPasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(60);
    }];
    [self.PLNconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.PLNcurrentPasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(60);
    }];
    [self.PLNsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.PLNconfirmPasswordTextField.mas_bottom).offset(55);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PLNbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PLNoldPassword.length) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PLNcurrentPassword.length) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PLNconfirmPassword.length) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PLNcurrentPassword isEqualToString:self.PLNconfirmPassword]) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PLNoldPassword newPassword:self.PLNconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PLNconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PLNshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PLNoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PLNcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PLNconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PLNoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PLNcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PLNconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PLNoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PLNcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PLNconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PLNoldPasswordTextField{
    if (!_PLNoldPasswordTextField) {
        _PLNoldPasswordTextField = [[UITextField alloc] init];
        _PLNoldPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _PLNoldPasswordTextField.secureTextEntry = YES;
        _PLNoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PLNoldPasswordTextField.layer.cornerRadius = 4.0f;
        _PLNoldPasswordTextField.layer.masksToBounds = YES;
        _PLNoldPasswordTextField.tag = 100;
        _PLNoldPasswordTextField.delegate = self;
        _PLNoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PLNoldPasswordTextField.textColor = [UIColor blackColor];
        _PLNoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PLNoldPasswordTextField;
}
- (UITextField *)PLNcurrentPasswordTextField{
    if (!_PLNcurrentPasswordTextField) {
        _PLNcurrentPasswordTextField = [[UITextField alloc] init];
        _PLNcurrentPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _PLNcurrentPasswordTextField.secureTextEntry = YES;
        _PLNcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PLNcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PLNcurrentPasswordTextField.layer.masksToBounds = YES;
        _PLNcurrentPasswordTextField.layer.cornerRadius = 4.0f;
        _PLNcurrentPasswordTextField.layer.masksToBounds = YES;
        _PLNcurrentPasswordTextField.tag = 101;
        _PLNcurrentPasswordTextField.delegate = self;
        _PLNcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PLNcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PLNcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PLNcurrentPasswordTextField;
}
- (UITextField *)PLNconfirmPasswordTextField{
    if (!_PLNconfirmPasswordTextField) {
        _PLNconfirmPasswordTextField = [[UITextField alloc] init];
        _PLNconfirmPasswordTextField.backgroundColor = [UIColor systemGreenColor];
        _PLNconfirmPasswordTextField.secureTextEntry = YES;
        _PLNconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PLNconfirmPasswordTextField.layer.cornerRadius = 4.0f;
        _PLNconfirmPasswordTextField.layer.masksToBounds = YES;
        _PLNconfirmPasswordTextField.tag = 102;
        _PLNconfirmPasswordTextField.delegate = self;
        _PLNconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PLNconfirmPasswordTextField.textColor = [UIColor blackColor];
        _PLNconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _PLNconfirmPasswordTextField;
}
- (UIButton *)PLNsureButton{
    if (!_PLNsureButton) {
        _PLNsureButton = [[UIButton alloc] init];
        _PLNsureButton.backgroundColor = [UIColor systemGreenColor];
        [_PLNsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PLNsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _PLNsureButton.layer.cornerRadius = 4.0f;
        _PLNsureButton.layer.masksToBounds = YES;
        [_PLNsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PLNsureButton addTarget:self action:@selector(PLNbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNsureButton;
}
@end
