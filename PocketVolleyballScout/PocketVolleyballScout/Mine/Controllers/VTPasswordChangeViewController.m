//
//  VTPasswordChangeViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "VTPasswordChangeViewController.h"

@interface VTPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *VTVToldPasswordTextField;
@property(nonatomic, strong)UITextField *VTVTcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *VTVTconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *VTsureButton;
@property(nonatomic, copy)NSString *VToldPassword;
@property(nonatomic, copy)NSString *VTcurrentPassword;
@property(nonatomic, copy)NSString *VTconfirmPassword;
@end

@implementation VTPasswordChangeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self VTsetContent];
}
- (void)VTsetContent{
    [self.view addSubview:self.VTVToldPasswordTextField];
    [self.view addSubview:self.VTVTcurrentPasswordTextField];
    [self.view addSubview:self.VTVTconfirmPasswordTextField];
    [self.view addSubview:self.VTsureButton];
    
    [self.VTVToldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(30);
        make.height.mas_equalTo(60);
    }];
    [self.VTVTcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.VTVToldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.VTVTconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(80);
        make.trailing.equalTo(self.view).offset(-80);
        make.top.equalTo(self.VTVTcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(60);
    }];
    [self.VTsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.VTVTconfirmPasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)VTbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.VToldPassword.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.VTcurrentPassword.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.VTconfirmPassword.length) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.VTcurrentPassword isEqualToString:self.VTconfirmPassword]) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.VToldPassword newPassword:self.VTconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.VTconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD VTshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.VToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.VTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.VTconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.VToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.VTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.VTconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.VToldPassword = textField.text;
    }else if (textField.tag == 101){
        self.VTcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.VTconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)VTVToldPasswordTextField{
    if (!_VTVToldPasswordTextField) {
        _VTVToldPasswordTextField = [[UITextField alloc] init];
        _VTVToldPasswordTextField.secureTextEntry = YES;
        _VTVToldPasswordTextField.backgroundColor = [UIColor whiteColor];
        _VTVToldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _VTVToldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _VTVToldPasswordTextField.layer.borderWidth = 2.0f;
        _VTVToldPasswordTextField.layer.cornerRadius = 12.0f;
        _VTVToldPasswordTextField.layer.masksToBounds = YES;
        _VTVToldPasswordTextField.tag = 100;
        _VTVToldPasswordTextField.delegate = self;
        _VTVToldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _VTVToldPasswordTextField.textColor = [UIColor blackColor];
        _VTVToldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _VTVToldPasswordTextField;
}
- (UITextField *)VTVTcurrentPasswordTextField{
    if (!_VTVTcurrentPasswordTextField) {
        _VTVTcurrentPasswordTextField = [[UITextField alloc] init];
       _VTVTcurrentPasswordTextField.backgroundColor = [UIColor whiteColor];
        _VTVTcurrentPasswordTextField.secureTextEntry = YES;
        _VTVTcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _VTVTcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _VTVTcurrentPasswordTextField.layer.borderWidth = 2.0f;
        _VTVTcurrentPasswordTextField.layer.cornerRadius = 12.0f;
        _VTVTcurrentPasswordTextField.layer.masksToBounds = YES;
        _VTVTcurrentPasswordTextField.tag = 101;
        _VTVTcurrentPasswordTextField.delegate = self;
        _VTVTcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _VTVTcurrentPasswordTextField.textColor = [UIColor blackColor];
        _VTVTcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _VTVTcurrentPasswordTextField;
}
- (UITextField *)VTVTconfirmPasswordTextField{
    if (!_VTVTconfirmPasswordTextField) {
        _VTVTconfirmPasswordTextField = [[UITextField alloc] init];
       _VTVTconfirmPasswordTextField.backgroundColor = [UIColor whiteColor];
        _VTVTconfirmPasswordTextField.secureTextEntry = YES;
        _VTVTconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _VTVTconfirmPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _VTVTconfirmPasswordTextField.layer.borderWidth = 2.0f;
        _VTVTconfirmPasswordTextField.layer.cornerRadius = 12.0f;
        _VTVTconfirmPasswordTextField.layer.masksToBounds = YES;
        _VTVTconfirmPasswordTextField.tag = 102;
        _VTVTconfirmPasswordTextField.delegate = self;
        _VTVTconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _VTVTconfirmPasswordTextField.textColor = [UIColor blackColor];
        _VTVTconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _VTVTconfirmPasswordTextField;
}
- (UIButton *)VTsureButton{
    if (!_VTsureButton) {
        _VTsureButton = [[UIButton alloc] init];
        _VTsureButton.backgroundColor = [UIColor whiteColor];
        [_VTsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_VTsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _VTsureButton.layer.cornerRadius = 8.0f;
        _VTsureButton.layer.masksToBounds = YES;
        _VTsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _VTsureButton.layer.borderWidth = 2.0f;
        [_VTsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_VTsureButton addTarget:self action:@selector(VTbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTsureButton;
}
@end
