//
//  GAPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAPasswordChangeViewController.h"

@interface GAPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GAGAoldPasswordTextField;
@property(nonatomic, strong)UITextField *GAGAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *GAGAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *GAsureButton;
@property(nonatomic, copy)NSString *GAoldPassword;
@property(nonatomic, copy)NSString *GAcurrentPassword;
@property(nonatomic, copy)NSString *GAconfirmPassword;
@end

@implementation GAPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self GAsetContent];
}
- (void)GAsetContent{
    [self.view addSubview:self.GAGAoldPasswordTextField];
    [self.view addSubview:self.GAGAcurrentPasswordTextField];
    [self.view addSubview:self.GAGAconfirmPasswordTextField];
    [self.view addSubview:self.GAsureButton];
    
    [self.GAGAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.GAGAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.GAGAoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.GAGAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.GAGAcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.GAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.GAGAconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)GAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.GAoldPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.GAcurrentPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.GAconfirmPassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.GAcurrentPassword isEqualToString:self.GAconfirmPassword]) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.GAoldPassword newPassword:self.GAconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.GAconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD GAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.GAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.GAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.GAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)GAGAoldPasswordTextField{
    if (!_GAGAoldPasswordTextField) {
        _GAGAoldPasswordTextField = [[UITextField alloc] init];
        _GAGAoldPasswordTextField.secureTextEntry = YES;
        _GAGAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAGAoldPasswordTextField.layer.cornerRadius = 8.0f;
        _GAGAoldPasswordTextField.layer.masksToBounds = YES;
        _GAGAoldPasswordTextField.layer.borderWidth = 2.0f;
        _GAGAoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GAGAoldPasswordTextField.tag = 100;
        _GAGAoldPasswordTextField.delegate = self;
        _GAGAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _GAGAoldPasswordTextField.textColor = [UIColor blackColor];
        _GAGAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAGAoldPasswordTextField;
}
- (UITextField *)GAGAcurrentPasswordTextField{
    if (!_GAGAcurrentPasswordTextField) {
        _GAGAcurrentPasswordTextField = [[UITextField alloc] init];
        _GAGAcurrentPasswordTextField.secureTextEntry = YES;
        _GAGAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    _GAGAcurrentPasswordTextField.layer.cornerRadius = 8.0f;
    _GAGAcurrentPasswordTextField.layer.masksToBounds = YES;
        _GAGAcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _GAGAcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GAGAcurrentPasswordTextField.tag = 101;
        _GAGAcurrentPasswordTextField.delegate = self;
        _GAGAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _GAGAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _GAGAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAGAcurrentPasswordTextField;
}
- (UITextField *)GAGAconfirmPasswordTextField{
    if (!_GAGAconfirmPasswordTextField) {
        _GAGAconfirmPasswordTextField = [[UITextField alloc] init];
        _GAGAconfirmPasswordTextField.secureTextEntry = YES;
        _GAGAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAGAconfirmPasswordTextField.layer.cornerRadius = 8.0f;
        _GAGAconfirmPasswordTextField.layer.masksToBounds = YES;
            _GAGAconfirmPasswordTextField.layer.borderWidth = 2.0f;
            _GAGAconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GAGAconfirmPasswordTextField.tag = 102;
        _GAGAconfirmPasswordTextField.delegate = self;
        _GAGAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _GAGAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _GAGAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _GAGAconfirmPasswordTextField;
}
- (UIButton *)GAsureButton{
    if (!_GAsureButton) {
        _GAsureButton = [[UIButton alloc] init];
        _GAsureButton.backgroundColor = [UIColor cyanColor];
        [_GAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
         _GAsureButton.layer.cornerRadius = 8.0f;
        _GAsureButton.layer.masksToBounds = YES;
        _GAsureButton.layer.borderWidth = 2.0f;
        _GAsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_GAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_GAsureButton addTarget:self action:@selector(GAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAsureButton;
}
@end
