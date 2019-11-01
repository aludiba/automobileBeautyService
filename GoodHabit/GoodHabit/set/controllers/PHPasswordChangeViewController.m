//
//  PHPasswordChangeViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHPasswordChangeViewController.h"

@interface PHPasswordChangeViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PHPHoldPasswordTextField;
@property(nonatomic, strong)UITextField *PHPHcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *PHconfirmpasswordTextField;
@property(nonatomic, strong)UIButton *PHsureButton;
@property(nonatomic, copy)NSString *PHoldPassword;
@property(nonatomic, copy)NSString *PHcurrentPassword;
@property(nonatomic, copy)NSString *PHconfirmPassword;
@end

@implementation PHPasswordChangeViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"密码修改", nil);
    [self PHsetContent];
}
- (void)PHsetContent{
    self.view.backgroundColor = PHH_Color(244, 245, 246, 1);
    [self.view addSubview:self.PHPHoldPasswordTextField];
    [self.view addSubview:self.PHPHcurrentPasswordTextField];
    [self.view addSubview:self.PHconfirmpasswordTextField];
    [self.view addSubview:self.PHsureButton];
    
    [self.PHPHoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.PHPHcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.PHPHoldPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.PHconfirmpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.PHPHcurrentPasswordTextField.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.PHsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.PHconfirmpasswordTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PHbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.PHoldPassword.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.PHcurrentPassword.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.PHconfirmPassword.length) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.PHcurrentPassword isEqualToString:self.PHconfirmPassword]) {
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        BmobUser *user = [BmobUser currentUser];
        NSString *name = user.username;
        [user updateCurrentUserPasswordWithOldPassword:self.PHoldPassword newPassword:self.PHconfirmPassword block:^(BOOL isSuccessful, NSError *error) {
            if (isSuccessful) {
                //用新密码登录
                [BmobUser loginInbackgroundWithAccount:name andPassword:self.PHconfirmPassword block:^(BmobUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD PHshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.PHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PHconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PHconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.PHoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.PHcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.PHconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PHPHoldPasswordTextField{
    if (!_PHPHoldPasswordTextField) {
        _PHPHoldPasswordTextField = [[UITextField alloc] init];
        _PHPHoldPasswordTextField.secureTextEntry = YES;
        _PHPHoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PHPHoldPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PHPHoldPasswordTextField.layer.borderWidth = 0.5f;
        _PHPHoldPasswordTextField.layer.cornerRadius = 4.0f;
        _PHPHoldPasswordTextField.layer.masksToBounds = YES;
        _PHPHoldPasswordTextField.tag = 100;
        _PHPHoldPasswordTextField.delegate = self;
        _PHPHoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _PHPHoldPasswordTextField.textColor = [UIColor blackColor];
        _PHPHoldPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _PHPHoldPasswordTextField;
}
- (UITextField *)PHPHcurrentPasswordTextField{
    if (!_PHPHcurrentPasswordTextField) {
        _PHPHcurrentPasswordTextField = [[UITextField alloc] init];
        _PHPHcurrentPasswordTextField.secureTextEntry = YES;
        _PHPHcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PHPHcurrentPasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PHPHcurrentPasswordTextField.layer.borderWidth = 0.5f;
        _PHPHcurrentPasswordTextField.layer.cornerRadius = 4.0f;
        _PHPHcurrentPasswordTextField.layer.masksToBounds = YES;
        _PHPHcurrentPasswordTextField.tag = 101;
        _PHPHcurrentPasswordTextField.delegate = self;
        _PHPHcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _PHPHcurrentPasswordTextField.textColor = [UIColor blackColor];
        _PHPHcurrentPasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _PHPHcurrentPasswordTextField;
}
- (UITextField *)PHconfirmpasswordTextField{
    if (!_PHconfirmpasswordTextField) {
        _PHconfirmpasswordTextField = [[UITextField alloc] init];
        _PHconfirmpasswordTextField.secureTextEntry = YES;
        _PHconfirmpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PHconfirmpasswordTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PHconfirmpasswordTextField.layer.borderWidth = 0.5f;
        _PHconfirmpasswordTextField.layer.cornerRadius = 4.0f;
        _PHconfirmpasswordTextField.layer.masksToBounds = YES;
        _PHconfirmpasswordTextField.tag = 102;
        _PHconfirmpasswordTextField.delegate = self;
        _PHconfirmpasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _PHconfirmpasswordTextField.textColor = [UIColor blackColor];
        _PHconfirmpasswordTextField.font = [UIFont systemFontOfSize:15];
    }
    return _PHconfirmpasswordTextField;
}
- (UIButton *)PHsureButton{
    if (!_PHsureButton) {
        _PHsureButton = [[UIButton alloc] init];
        _PHsureButton.backgroundColor = [UIColor blueColor];
        [_PHsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PHsureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PHsureButton.layer.cornerRadius = 4.0f;
        _PHsureButton.layer.masksToBounds = YES;
        [_PHsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_PHsureButton addTarget:self action:@selector(PHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHsureButton;
}
@end
