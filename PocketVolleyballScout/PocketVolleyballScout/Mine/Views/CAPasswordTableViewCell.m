//
//  CAPasswordTableViewCell.m
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import "CAPasswordTableViewCell.h"
#import "CAPasswordChangeViewController.h"

@interface CAPasswordTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CACAoldPasswordTextField;
@property(nonatomic, strong)UITextField *CACAcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *CACAconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *CAsureButton;
@property(nonatomic, copy)NSString *CAoldPassword;
@property(nonatomic, copy)NSString *CAcurrentPassword;
@property(nonatomic, copy)NSString *CAconfirmPassword;
@end
@implementation CAPasswordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self CAsetContent];
    }
    return self;
}
- (void)CAsetContent{
    self.contentView.backgroundColor = [UIColor systemGreenColor];
    [self.contentView addSubview:self.CACAoldPasswordTextField];
    [self.contentView addSubview:self.CACAcurrentPasswordTextField];
    [self.contentView addSubview:self.CACAconfirmPasswordTextField];
    [self.contentView addSubview:self.CAsureButton];
    
    [self.CACAoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.contentView).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.CACAcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.CACAoldPasswordTextField.mas_bottom).offset(40);
        make.height.mas_equalTo(60);
    }];
    [self.CACAconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.CACAcurrentPasswordTextField.mas_bottom).offset(40);
        make.height.mas_equalTo(60);
    }];
    [self.CAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(100);
        make.trailing.equalTo(self.contentView).offset(-100);
        make.top.equalTo(self.CACAconfirmPasswordTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView);
    }];
}
#pragma mark - actions
- (void)CAbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.CAoldPassword.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.CAcurrentPassword.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.CAconfirmPassword.length) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.CAcurrentPassword isEqualToString:self.CAconfirmPassword]) {
        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.CAoldPassword newPassword:self.CAconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.CAconfirmPassword block:^(AVUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD CAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD CAshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.CASuperVC.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.CAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CAconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CAconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.CAoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.CAcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.CAconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CACAoldPasswordTextField{
    if (!_CACAoldPasswordTextField) {
        _CACAoldPasswordTextField = [[UITextField alloc] init];
        _CACAoldPasswordTextField.secureTextEntry = YES;
        _CACAoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CACAoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CACAoldPasswordTextField.layer.cornerRadius = 6.0f;
        _CACAoldPasswordTextField.layer.masksToBounds = YES;
        _CACAoldPasswordTextField.tag = 100;
        _CACAoldPasswordTextField.delegate = self;
        _CACAoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _CACAoldPasswordTextField.textColor = [UIColor blackColor];
        _CACAoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CACAoldPasswordTextField;
}
- (UITextField *)CACAcurrentPasswordTextField{
    if (!_CACAcurrentPasswordTextField) {
        _CACAcurrentPasswordTextField = [[UITextField alloc] init];
       _CACAcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CACAcurrentPasswordTextField.secureTextEntry = YES;
        _CACAcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CACAcurrentPasswordTextField.layer.cornerRadius = 6.0f;
        _CACAcurrentPasswordTextField.layer.masksToBounds = YES;
        _CACAcurrentPasswordTextField.tag = 101;
        _CACAcurrentPasswordTextField.delegate = self;
        _CACAcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _CACAcurrentPasswordTextField.textColor = [UIColor blackColor];
        _CACAcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CACAcurrentPasswordTextField;
}
- (UITextField *)CACAconfirmPasswordTextField{
    if (!_CACAconfirmPasswordTextField) {
        _CACAconfirmPasswordTextField = [[UITextField alloc] init];
       _CACAconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _CACAconfirmPasswordTextField.secureTextEntry = YES;
        _CACAconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CACAconfirmPasswordTextField.layer.cornerRadius = 6.0f;
        _CACAconfirmPasswordTextField.layer.masksToBounds = YES;
        _CACAconfirmPasswordTextField.tag = 102;
        _CACAconfirmPasswordTextField.delegate = self;
        _CACAconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _CACAconfirmPasswordTextField.textColor = [UIColor blackColor];
        _CACAconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _CACAconfirmPasswordTextField;
}
- (UIButton *)CAsureButton{
    if (!_CAsureButton) {
        _CAsureButton = [[UIButton alloc] init];
        _CAsureButton.backgroundColor = [UIColor cyanColor];
        [_CAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CAsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _CAsureButton.layer.cornerRadius = 4.0f;
        _CAsureButton.layer.masksToBounds = YES;
        [_CAsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_CAsureButton addTarget:self action:@selector(CAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CAsureButton;
}
@end
