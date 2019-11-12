//
//  KTPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "KTPasswordChangeViewController.h"

@interface KTPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *KTKToldPasswordTextField;
@property(nonatomic, strong)UITextField *KTKTcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *KTKTconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *KTsureButton;
@property(nonatomic, copy)NSString *KToldPassword;
@property(nonatomic, copy)NSString *KTcurrentPassword;
@property(nonatomic, copy)NSString *KTconfirmPassword;
@end

@implementation KTPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self KTsetContent];
}
- (void)KTsetContent{
    [self.view addSubview:self.KTKToldPasswordTextField];
    [self.view addSubview:self.KTKTcurrentPasswordTextField];
    [self.view addSubview:self.KTKTconfirmPasswordTextField];
    [self.view addSubview:self.KTsureButton];
    
    [self.KTKToldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.KTKTcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.KTKToldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.KTKTconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.KTKTcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.KTsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.KTKTconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)KTbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.KToldPassword.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.KTcurrentPassword.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.KTconfirmPassword.length) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.KTcurrentPassword isEqualToString:self.KTconfirmPassword]) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.KToldPassword newPassword:self.KTconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.KTconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD KTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.KToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KTconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.KToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KTconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.KToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.KTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.KTconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)KTKToldPasswordTextField{
    if (!_KTKToldPasswordTextField) {
        _KTKToldPasswordTextField = [[UITextField alloc] init];
        _KTKToldPasswordTextField.secureTextEntry = YES;
        _KTKToldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _KTKToldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KTKToldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KTKToldPasswordTextField.layer.borderWidth = 2.0f;
        _KTKToldPasswordTextField.layer.cornerRadius = 12.0f;
        _KTKToldPasswordTextField.layer.masksToBounds = YES;
        _KTKToldPasswordTextField.tag = 100;
        _KTKToldPasswordTextField.delegate = self;
        _KTKToldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _KTKToldPasswordTextField.textColor = [UIColor blackColor];
        _KTKToldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KTKToldPasswordTextField;
}
- (UITextField *)KTKTcurrentPasswordTextField{
    if (!_KTKTcurrentPasswordTextField) {
        _KTKTcurrentPasswordTextField = [[UITextField alloc] init];
       _KTKTcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _KTKTcurrentPasswordTextField.secureTextEntry = YES;
        _KTKTcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KTKTcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KTKTcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _KTKTcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _KTKTcurrentPasswordTextField.layer.masksToBounds = YES;
        _KTKTcurrentPasswordTextField.tag = 101;
        _KTKTcurrentPasswordTextField.delegate = self;
        _KTKTcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _KTKTcurrentPasswordTextField.textColor = [UIColor blackColor];
        _KTKTcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KTKTcurrentPasswordTextField;
}
- (UITextField *)KTKTconfirmPasswordTextField{
    if (!_KTKTconfirmPasswordTextField) {
        _KTKTconfirmPasswordTextField = [[UITextField alloc] init];
       _KTKTconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _KTKTconfirmPasswordTextField.secureTextEntry = YES;
        _KTKTconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KTKTconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KTKTconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _KTKTconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _KTKTconfirmPasswordTextField.layer.masksToBounds = YES;
        _KTKTconfirmPasswordTextField.tag = 102;
        _KTKTconfirmPasswordTextField.delegate = self;
        _KTKTconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _KTKTconfirmPasswordTextField.textColor = [UIColor blackColor];
        _KTKTconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _KTKTconfirmPasswordTextField;
}
- (UIButton *)KTsureButton{
    if (!_KTsureButton) {
        _KTsureButton = [[UIButton alloc] init];
        _KTsureButton.backgroundColor = [UIColor whiteColor];
        [_KTsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KTsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _KTsureButton.layer.cornerRadius = 8.0f;
        _KTsureButton.layer.masksToBounds = YES;
        _KTsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _KTsureButton.layer.borderWidth = 2.0f;
        [_KTsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_KTsureButton addTarget:self action:@selector(KTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTsureButton;
}
@end
