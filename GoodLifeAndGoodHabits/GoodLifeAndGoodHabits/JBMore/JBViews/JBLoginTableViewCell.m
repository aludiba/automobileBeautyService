//
//  JBLoginTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBLoginTableViewCell.h"
#import "JBBaseViewController.h"
#import "JBLoginViewController.h"

@interface JBLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *JBcancelButton;

@property(nonatomic, copy)NSString *JBaccount;
@property(nonatomic, strong)UILabel *JBaccountLable;
@property(nonatomic, strong)UITextField *JBaccountTextField;

@property(nonatomic, copy)NSString *JBpassword;
@property(nonatomic, strong)UILabel *JBpasswordLable;
@property(nonatomic, strong)UITextField *JBpasswordTextField;

@property(nonatomic, strong)UIButton *JBloginButton;
@property(nonatomic, strong)UIButton *JBregisteredButton;
@end
@implementation JBLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self JBsetContentView];
    }
    return self;
}
- (void)JBsetContentView{
    [self.contentView addSubview:self.JBcancelButton];
    [self.contentView addSubview:self.JBaccountLable];
    [self.contentView addSubview:self.JBaccountTextField];
    [self.contentView addSubview:self.JBpasswordLable];
    [self.contentView addSubview:self.JBpasswordTextField];
    [self.contentView addSubview:self.JBloginButton];
    [self.contentView addSubview:self.JBregisteredButton];
    
    [self.JBcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-25);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(17);
    }];
    [self.JBaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.JBcancelButton.mas_bottom).offset(60);
        make.width.mas_equalTo(66);
        make.height.mas_equalTo(16);
    }];
    [self.JBaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.JBaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.JBaccountLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.JBpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.JBaccountTextField.mas_bottom).offset(20);
        make.width.mas_equalTo(66);
        make.height.mas_equalTo(16);
    }];
    [self.JBpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.JBpasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.JBpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.JBloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBpasswordTextField.mas_bottom).offset(30);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
    }];
    [self.JBregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.JBloginButton.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.JBaccount = textField.text;
    }else if (textField.tag == 99){
        self.JBpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.JBaccount = textField.text;
    }else if (textField.tag == 99){
        self.JBpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (void)JBcancelClick{
    [self.JBSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)JBbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.JBaccount.length) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.JBpassword.length) {
        [MBProgressHUD JBshowReminderText:NSLocalizedString(@"确认密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.JBaccount password:self.JBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD JBshowReminderText:@"登陆成功"];
                [self.JBSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD JBshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *JBbUser = [[AVUser alloc] init];
        [JBbUser setUsername:self.JBaccount];
        [JBbUser setPassword:self.JBpassword];
        [JBbUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD JBshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.JBaccount password:self.JBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.JBSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD JBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD JBshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)JBcancelButton{
    if (!_JBcancelButton) {
        _JBcancelButton = [[UIButton alloc] init];
        [_JBcancelButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_JBcancelButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_JBcancelButton setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
        [_JBcancelButton addTarget:self action:@selector(JBcancelClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBcancelButton;
}
- (UILabel *)JBaccountLable{
    if (!_JBaccountLable) {
        _JBaccountLable = [[UILabel alloc] init];
        _JBaccountLable.text = NSLocalizedString(@"账号", nil);
        _JBaccountLable.textColor = [UIColor blueColor];
        _JBaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _JBaccountLable;
}
- (UITextField *)JBaccountTextField{
    if (!_JBaccountTextField) {
        _JBaccountTextField = [[UITextField alloc] init];
        _JBaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _JBaccountTextField.tag = 98;
        _JBaccountTextField.delegate = self;
        _JBaccountTextField.textColor = [UIColor blackColor];
        _JBaccountTextField.font = [UIFont systemFontOfSize:20];
        _JBaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _JBaccountTextField;
}
- (UILabel *)JBpasswordLable{
    if (!_JBpasswordLable) {
        _JBpasswordLable = [[UILabel alloc] init];
        _JBpasswordLable.text = NSLocalizedString(@"密码", nil);
        _JBpasswordLable.textColor = [UIColor blueColor];
        _JBpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _JBpasswordLable;
}
- (UITextField *)JBpasswordTextField{
    if (!_JBpasswordTextField) {
        _JBpasswordTextField = [[UITextField alloc] init];
        _JBpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _JBpasswordTextField.tag = 99;
        _JBpasswordTextField.delegate = self;
        _JBpasswordTextField.textColor = [UIColor blackColor];
        _JBpasswordTextField.font = [UIFont systemFontOfSize:20];
        _JBpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _JBpasswordTextField.secureTextEntry = YES;
    }
    return _JBpasswordTextField;
}
- (UIButton *)JBloginButton{
    if (!_JBloginButton) {
        _JBloginButton = [[UIButton alloc] init];
        _JBloginButton.tag = 100;
        _JBloginButton.backgroundColor = [UIColor greenColor];
        [_JBloginButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _JBloginButton.layer.cornerRadius = 6.0f;
        _JBloginButton.layer.masksToBounds = YES;
        [_JBloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_JBloginButton addTarget:self action:@selector(JBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBloginButton;
}
- (UIButton *)JBregisteredButton{
    if (!_JBregisteredButton) {
        _JBregisteredButton = [[UIButton alloc] init];
        _JBregisteredButton.tag = 101;
        _JBregisteredButton.backgroundColor = [UIColor redColor];
        [_JBregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_JBregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _JBregisteredButton.layer.cornerRadius = 6.0f;
        _JBregisteredButton.layer.masksToBounds = YES;
        [_JBregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_JBregisteredButton addTarget:self action:@selector(JBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBregisteredButton;
}
@end
