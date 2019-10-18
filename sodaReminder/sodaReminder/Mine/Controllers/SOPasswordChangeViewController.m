//
//  SOPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOPasswordChangeViewController.h"

@interface SOPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *SOSOoldPasswordTextField;
@property(nonatomic, strong)UITextField *SOSOcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *SOSOconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *SOsureButton;
@property(nonatomic, copy)NSString *SOoldPassword;
@property(nonatomic, copy)NSString *SOcurrentPassword;
@property(nonatomic, copy)NSString *SOconfirmPassword;
@end

@implementation SOPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self SOsetContent];
}
- (void)SOsetContent{
    self.view.backgroundColor = SOH_Color(242, 242, 242, 1);
    [self.view addSubview:self.SOSOoldPasswordTextField];
    [self.view addSubview:self.SOSOcurrentPasswordTextField];
    [self.view addSubview:self.SOSOconfirmPasswordTextField];
    [self.view addSubview:self.SOsureButton];
    
    [self.SOSOoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.SOSOcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.SOSOoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.SOSOconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.SOSOcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.SOsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.SOSOconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)SObtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.SOoldPassword.length) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.SOcurrentPassword.length) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.SOconfirmPassword.length) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.SOcurrentPassword isEqualToString:self.SOconfirmPassword]) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.SOoldPassword newPassword:self.SOconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.SOconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD SOshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.SOoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.SOcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.SOconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.SOoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.SOcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.SOconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.SOoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.SOcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.SOconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)SOSOoldPasswordTextField{
    if (!_SOSOoldPasswordTextField) {
        _SOSOoldPasswordTextField = [[UITextField alloc] init];
        _SOSOoldPasswordTextField.secureTextEntry = YES;
        _SOSOoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOSOoldPasswordTextField.backgroundColor = [UIColor grayColor];
        _SOSOoldPasswordTextField.layer.cornerRadius = 12.0f;
        _SOSOoldPasswordTextField.layer.masksToBounds = YES;
        _SOSOoldPasswordTextField.tag = 100;
        _SOSOoldPasswordTextField.delegate = self;
        _SOSOoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _SOSOoldPasswordTextField.textColor = [UIColor blackColor];
        _SOSOoldPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _SOSOoldPasswordTextField;
}
- (UITextField *)SOSOcurrentPasswordTextField{
    if (!_SOSOcurrentPasswordTextField) {
        _SOSOcurrentPasswordTextField = [[UITextField alloc] init];
        _SOSOcurrentPasswordTextField.secureTextEntry = YES;
        _SOSOcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOSOcurrentPasswordTextField.backgroundColor = [UIColor grayColor];
        _SOSOcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _SOSOcurrentPasswordTextField.layer.masksToBounds = YES;
        _SOSOcurrentPasswordTextField.tag = 101;
        _SOSOcurrentPasswordTextField.delegate = self;
        _SOSOcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _SOSOcurrentPasswordTextField.textColor = [UIColor blackColor];
        _SOSOcurrentPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _SOSOcurrentPasswordTextField;
}
- (UITextField *)SOSOconfirmPasswordTextField{
    if (!_SOSOconfirmPasswordTextField) {
        _SOSOconfirmPasswordTextField = [[UITextField alloc] init];
        _SOSOconfirmPasswordTextField.secureTextEntry = YES;
        _SOSOconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOSOconfirmPasswordTextField.backgroundColor = [UIColor grayColor];
        _SOSOconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _SOSOconfirmPasswordTextField.layer.masksToBounds = YES;
        _SOSOconfirmPasswordTextField.tag = 102;
        _SOSOconfirmPasswordTextField.delegate = self;
        _SOSOconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _SOSOconfirmPasswordTextField.textColor = [UIColor blackColor];
        _SOSOconfirmPasswordTextField.font = [UIFont systemFontOfSize:25];
    }
    return _SOSOconfirmPasswordTextField;
}
- (UIButton *)SOsureButton{
    if (!_SOsureButton) {
        _SOsureButton = [[UIButton alloc] init];
        _SOsureButton.backgroundColor = [UIColor purpleColor];
        [_SOsureButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [_SOsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _SOsureButton.layer.cornerRadius = 8.0f;
        _SOsureButton.layer.masksToBounds = YES;
        [_SOsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_SOsureButton addTarget:self action:@selector(SObtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOsureButton;
}
@end
