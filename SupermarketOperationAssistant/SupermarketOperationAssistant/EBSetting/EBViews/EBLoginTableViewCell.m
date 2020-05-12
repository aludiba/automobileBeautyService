//
//  EBLoginTableViewCell.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/12.
//  Copyright © 2020 HEB. All rights reserved.
//

#import "EBLoginTableViewCell.h"
#import "EBBaseViewController.h"
@interface EBLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *EBcancelButton;
@property(nonatomic, copy)NSString *EBaccount;
@property(nonatomic, strong)UILabel *EBaccountLable;
@property(nonatomic, strong)UITextField *EBaccountTextField;
@property(nonatomic, strong)UIView *EBline;
@property(nonatomic, copy)NSString *EBpassword;
@property(nonatomic, strong)UILabel *EBpasswordLable;
@property(nonatomic, strong)UITextField *EBpasswordTextField;
@property(nonatomic, strong)UIView *EBline1;
@property(nonatomic, strong)UIButton *EBloginButton;
@property(nonatomic, strong)UIButton *EBregisteredButton;
@end
@implementation EBLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self EBsetContentView];
    }
    return self;
}
- (void)EBsetContentView{
    [self.contentView addSubview:self.EBcancelButton];
    [self.contentView addSubview:self.EBaccountLable];
    [self.contentView addSubview:self.EBaccountTextField];
    [self.contentView addSubview:self.EBline];
    [self.contentView addSubview:self.EBpasswordLable];
    [self.contentView addSubview:self.EBpasswordTextField];
    [self.contentView addSubview:self.EBline1];
    [self.contentView addSubview:self.EBloginButton];
    [self.contentView addSubview:self.EBregisteredButton];
    
    [self.EBcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(32);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    [self.EBaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.EBcancelButton.mas_bottom).offset(50);
        make.width.mas_equalTo(64);
        make.height.mas_equalTo(20);
    }];
    [self.EBaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.EBaccountLable.mas_trailing).offset(32);
        make.centerY.equalTo(self.EBaccountLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(22);
    }];
    [self.EBline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.EBaccountTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.EBpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.EBline.mas_bottom).offset(25);
        make.width.mas_equalTo(64);
        make.height.mas_equalTo(20);
    }];
    [self.EBpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.EBpasswordLable.mas_trailing).offset(32);
        make.centerY.equalTo(self.EBpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(22);
    }];
    [self.EBline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.EBpasswordTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.EBloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBline1.mas_bottom).offset(40);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
    }];
    [self.EBregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.EBloginButton.mas_bottom).offset(35);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-16);
    }];
}
#pragma mark - actions
- (void)EBcancelAction:(UIButton *)EBsender{
    [self.EBSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)EBbtnClick:(UIButton *)EBsender{
    [self.contentView endEditing:YES];
    if (!self.EBaccount.length) {
        [MBProgressHUD EBshowReminderText:@"请输入账号"];
        return;
    }
    if (!self.EBpassword.length) {
        [MBProgressHUD EBshowReminderText:@"请输入密码"];
        return;
    }
    if (EBsender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.EBaccount password:self.EBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD EBshowReminderText:@"登陆成功"];
                [self.EBSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD EBshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *EBUser = [[AVUser alloc] init];
        [EBUser setUsername:self.EBaccount];
        [EBUser setPassword:self.EBpassword];
        [EBUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD EBshowReminderText:@"注册成功"];
                [AVUser logInWithUsernameInBackground:self.EBaccount password:self.EBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.EBSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD EBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD EBshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.EBaccount = textField.text;
    }
    if (textField.tag == 99){
        self.EBpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.EBaccount = textField.text;
    }else if (textField.tag == 99){
        self.EBpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)EBcancelButton{
    if (!_EBcancelButton) {
        _EBcancelButton = [[UIButton alloc] init];
        [_EBcancelButton setImage:[UIImage imageNamed:@"EBbtn_close"] forState:UIControlStateNormal];
        [_EBcancelButton addTarget:self action:@selector(EBcancelAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBcancelButton;
}
- (UILabel *)EBaccountLable{
    if (!_EBaccountLable) {
        _EBaccountLable = [[UILabel alloc] init];
        _EBaccountLable.text = @"账号:";
        _EBaccountLable.textColor = [UIColor orangeColor];
        _EBaccountLable.font = [UIFont systemFontOfSize:20];
    }
    return _EBaccountLable;
}
- (UITextField *)EBaccountTextField{
    if (!_EBaccountTextField) {
        _EBaccountTextField = [[UITextField alloc] init];
        _EBaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EBaccountTextField.tag = 98;
        _EBaccountTextField.delegate = self;
        _EBaccountTextField.textColor = [UIColor blackColor];
        _EBaccountTextField.font = [UIFont systemFontOfSize:23];
        _EBaccountTextField.placeholder = @"请输入账号";
    }
    return _EBaccountTextField;
}
- (UIView *)EBline{
    if (!_EBline) {
        _EBline = [[UIView alloc] init];
        _EBline.backgroundColor = [UIColor grayColor];
    }
    return _EBline;
}
- (UILabel *)EBpasswordLable{
    if (!_EBpasswordLable) {
        _EBpasswordLable = [[UILabel alloc] init];
        _EBpasswordLable.text = @"密码:";
        _EBpasswordLable.textColor = [UIColor orangeColor];
        _EBpasswordLable.font = [UIFont systemFontOfSize:20];
    }
    return _EBpasswordLable;
}
- (UITextField *)EBpasswordTextField{
    if (!_EBpasswordTextField) {
        _EBpasswordTextField = [[UITextField alloc] init];
        _EBpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EBpasswordTextField.tag = 99;
        _EBpasswordTextField.delegate = self;
        _EBpasswordTextField.textColor = [UIColor blackColor];
        _EBpasswordTextField.font = [UIFont systemFontOfSize:23];
        _EBpasswordTextField.placeholder = @"请输入密码";
        _EBpasswordTextField.secureTextEntry = YES;
    }
    return _EBpasswordTextField;
}
- (UIView *)EBline1{
    if (!_EBline1) {
        _EBline1 = [[UIView alloc] init];
        _EBline1.backgroundColor = [UIColor grayColor];
    }
    return _EBline1;
}
- (UIButton *)EBloginButton{
    if (!_EBloginButton) {
        _EBloginButton = [[UIButton alloc] init];
        _EBloginButton.tag = 100;
        _EBloginButton.backgroundColor = [UIColor orangeColor];
        [_EBloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EBloginButton.titleLabel setFont:[UIFont systemFontOfSize:23]];
        _EBloginButton.layer.cornerRadius = 10.0f;
        _EBloginButton.layer.masksToBounds = YES;
        [_EBloginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_EBloginButton addTarget:self action:@selector(EBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBloginButton;
}
- (UIButton *)EBregisteredButton{
    if (!_EBregisteredButton) {
        _EBregisteredButton = [[UIButton alloc] init];
        _EBregisteredButton.tag = 101;
        _EBregisteredButton.backgroundColor = [UIColor greenColor];
        [_EBregisteredButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EBregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:23]];
        _EBregisteredButton.layer.cornerRadius = 10.0f;
        _EBregisteredButton.layer.masksToBounds = YES;
        [_EBregisteredButton setTitle:@"注册" forState:UIControlStateNormal];
        [_EBregisteredButton addTarget:self action:@selector(EBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBregisteredButton;
}
@end
