//
//  ABPasswordTableViewCell.m
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import "ABPasswordTableViewCell.h"
#import "ABPasswordChangeViewController.h"

@interface ABPasswordTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ABABoldPasswordTextField;
@property(nonatomic, strong)UITextField *ABABcurrentPasswordTextField;
@property(nonatomic, strong)UITextField *ABABconfirmPasswordTextField;
@property(nonatomic, strong)UIButton *ABsureButton;
@property(nonatomic, copy)NSString *ABoldPassword;
@property(nonatomic, copy)NSString *ABcurrentPassword;
@property(nonatomic, copy)NSString *ABconfirmPassword;
@end
@implementation ABPasswordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ABsetContent];
    }
    return self;
}
- (void)ABsetContent{
    self.contentView.backgroundColor = [UIColor systemGreenColor];
    [self.contentView addSubview:self.ABABoldPasswordTextField];
    [self.contentView addSubview:self.ABABcurrentPasswordTextField];
    [self.contentView addSubview:self.ABABconfirmPasswordTextField];
    [self.contentView addSubview:self.ABsureButton];
    
    [self.ABABoldPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.contentView).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.ABABcurrentPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.ABABoldPasswordTextField.mas_bottom).offset(40);
        make.height.mas_equalTo(60);
    }];
    [self.ABABconfirmPasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(30);
        make.trailing.equalTo(self.contentView).offset(-30);
        make.top.equalTo(self.ABABcurrentPasswordTextField.mas_bottom).offset(40);
        make.height.mas_equalTo(60);
    }];
    [self.ABsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(100);
        make.trailing.equalTo(self.contentView).offset(-100);
        make.top.equalTo(self.ABABconfirmPasswordTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView);
    }];
}
#pragma mark - actions
- (void)ABbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.ABoldPassword.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请输入旧密码", nil)];
        return;
    }
    if (!self.ABcurrentPassword.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请输入新密码", nil)];
        return;
    }
    if (!self.ABconfirmPassword.length) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请确认密码", nil)];
        return;
    }
    if (![self.ABcurrentPassword isEqualToString:self.ABconfirmPassword]) {
        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"两次密码输入不一致", nil)];
        return;
    }
        AVUser *user = [AVUser currentUser];
        NSString *name = user.username;
        [user updatePassword:self.ABoldPassword newPassword:self.ABconfirmPassword block:^(id  _Nullable object, NSError * _Nullable error) {
            if (!error) {
                //用新密码登录
                [AVUser logInWithUsernameInBackground:name password:self.ABconfirmPassword block:^(AVUser *user, NSError *error) {
                    if (error) {
                        [MBProgressHUD ABshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    } else {
                        [MBProgressHUD ABshowReminderText:NSLocalizedString(@"密码修改成功", nil)];
                        [self.ABSuperVC.navigationController popViewControllerAnimated:YES];
                    }
                }];
            } else {
                [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 100) {
        self.ABoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ABcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ABconfirmPassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ABoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ABcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ABconfirmPassword = textField.text;
    }
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 100) {
        self.ABoldPassword = textField.text;
    }else if (textField.tag == 101){
        self.ABcurrentPassword = textField.text;
    }else if (textField.tag == 102){
        self.ABconfirmPassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)ABABoldPasswordTextField{
    if (!_ABABoldPasswordTextField) {
        _ABABoldPasswordTextField = [[UITextField alloc] init];
        _ABABoldPasswordTextField.secureTextEntry = YES;
        _ABABoldPasswordTextField.backgroundColor = [UIColor cyanColor];
        _ABABoldPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ABABoldPasswordTextField.layer.cornerRadius = 6.0f;
        _ABABoldPasswordTextField.layer.masksToBounds = YES;
        _ABABoldPasswordTextField.tag = 100;
        _ABABoldPasswordTextField.delegate = self;
        _ABABoldPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入旧密码", nil)];
        _ABABoldPasswordTextField.textColor = [UIColor blackColor];
        _ABABoldPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ABABoldPasswordTextField;
}
- (UITextField *)ABABcurrentPasswordTextField{
    if (!_ABABcurrentPasswordTextField) {
        _ABABcurrentPasswordTextField = [[UITextField alloc] init];
       _ABABcurrentPasswordTextField.backgroundColor = [UIColor cyanColor];
        _ABABcurrentPasswordTextField.secureTextEntry = YES;
        _ABABcurrentPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ABABcurrentPasswordTextField.layer.cornerRadius = 6.0f;
        _ABABcurrentPasswordTextField.layer.masksToBounds = YES;
        _ABABcurrentPasswordTextField.tag = 101;
        _ABABcurrentPasswordTextField.delegate = self;
        _ABABcurrentPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"输入新密码", nil)];
        _ABABcurrentPasswordTextField.textColor = [UIColor blackColor];
        _ABABcurrentPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ABABcurrentPasswordTextField;
}
- (UITextField *)ABABconfirmPasswordTextField{
    if (!_ABABconfirmPasswordTextField) {
        _ABABconfirmPasswordTextField = [[UITextField alloc] init];
       _ABABconfirmPasswordTextField.backgroundColor = [UIColor cyanColor];
        _ABABconfirmPasswordTextField.secureTextEntry = YES;
        _ABABconfirmPasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ABABconfirmPasswordTextField.layer.cornerRadius = 6.0f;
        _ABABconfirmPasswordTextField.layer.masksToBounds = YES;
        _ABABconfirmPasswordTextField.tag = 102;
        _ABABconfirmPasswordTextField.delegate = self;
        _ABABconfirmPasswordTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"确认密码", nil)];
        _ABABconfirmPasswordTextField.textColor = [UIColor blackColor];
        _ABABconfirmPasswordTextField.font = [UIFont systemFontOfSize:20];
    }
    return _ABABconfirmPasswordTextField;
}
- (UIButton *)ABsureButton{
    if (!_ABsureButton) {
        _ABsureButton = [[UIButton alloc] init];
        _ABsureButton.backgroundColor = [UIColor cyanColor];
        [_ABsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ABsureButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ABsureButton.layer.cornerRadius = 4.0f;
        _ABsureButton.layer.masksToBounds = YES;
        [_ABsureButton setTitle:NSLocalizedString(@"确定", nil) forState:UIControlStateNormal];
        [_ABsureButton addTarget:self action:@selector(ABbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABsureButton;
}
@end
