//
//  KALoginTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KALoginTableViewCell.h"
#import "KABaseViewController.h"

@interface KALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *KAcancelButton;

@property(nonatomic, copy)NSString *KAaccount;
@property(nonatomic, strong)UILabel *KAaccountLable;
@property(nonatomic, strong)UITextField *KAaccountTextField;
@property(nonatomic, strong)UIView *KAline;

@property(nonatomic, copy)NSString *KApassword;
@property(nonatomic, strong)UILabel *KApasswordLable;
@property(nonatomic, strong)UITextField *KApasswordTextField;
@property(nonatomic, strong)UIView *KAline1;

@property(nonatomic, strong)UIButton *KAloginButton;
@property(nonatomic, strong)UIButton *KAregisteredButton;
@end
@implementation KALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self KAsetContentView];
    }
    return self;
}
- (void)KAsetContentView{
    [self.contentView addSubview:self.KAcancelButton];
    [self.contentView addSubview:self.KAaccountLable];
    [self.contentView addSubview:self.KAaccountTextField];
    [self.contentView addSubview:self.KAline];
    [self.contentView addSubview:self.KApasswordLable];
    [self.contentView addSubview:self.KApasswordTextField];
    [self.contentView addSubview:self.KAline1];
    [self.contentView addSubview:self.KAloginButton];
    [self.contentView addSubview:self.KAregisteredButton];
    
    [self.KAcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(25);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(34);
        make.height.mas_equalTo(17);
    }];
    [self.KAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.KAcancelButton.mas_bottom).offset(60);
        make.width.mas_equalTo(32);
        make.height.mas_equalTo(16);
    }];
    [self.KAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KAaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.KAaccountLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.KAline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.KAaccountTextField.mas_bottom).offset(10);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.KApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.KAline.mas_bottom).offset(15);
        make.width.mas_equalTo(32);
        make.height.mas_equalTo(16);
    }];
    [self.KApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.KApasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.KApasswordLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.KAline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.KApasswordTextField.mas_bottom).offset(10);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.KAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KAline1.mas_bottom).offset(25);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
    }];
    [self.KAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KAloginButton.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.KAaccount = textField.text;
    }else if (textField.tag == 99){
        self.KApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.KAaccount = textField.text;
    }else if (textField.tag == 99){
        self.KApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (void)KAcancelClick{
    [self.KASuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)KAbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.KAaccount.length) {
        [MBProgressHUD KAshowReminderText:@"请输入账号"];
        return;
    }
    if (!self.KApassword.length) {
        [MBProgressHUD KAshowReminderText:@"请输入密码"];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.KAaccount password:self.KApassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD KAshowReminderText:@"登陆成功"];
                [self.KASuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD KAshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.KAaccount];
        [bUser setPassword:self.KApassword];
        [bUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD KAshowReminderText:@"注册成功"];
                [AVUser logInWithUsernameInBackground:self.KAaccount password:self.KApassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.KASuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD KAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD KAshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)KAcancelButton{
    if (!_KAcancelButton) {
        _KAcancelButton = [[UIButton alloc] init];
        [_KAcancelButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_KAcancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KAcancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [_KAcancelButton addTarget:self action:@selector(KAcancelClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAcancelButton;
}
- (UILabel *)KAaccountLable{
    if (!_KAaccountLable) {
        _KAaccountLable = [[UILabel alloc] init];
        _KAaccountLable.text = @"账号";
        _KAaccountLable.textColor = [UIColor grayColor];
        _KAaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _KAaccountLable;
}
- (UITextField *)KAaccountTextField{
    if (!_KAaccountTextField) {
        _KAaccountTextField = [[UITextField alloc] init];
        _KAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KAaccountTextField.tag = 98;
        _KAaccountTextField.delegate = self;
        _KAaccountTextField.textColor = [UIColor blackColor];
        _KAaccountTextField.font = [UIFont systemFontOfSize:20];
        _KAaccountTextField.placeholder = @"请输入账号";
    }
    return _KAaccountTextField;
}
- (UIView *)KAline{
    if (!_KAline) {
        _KAline = [[UIView alloc] init];
        _KAline.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KAline;
}
- (UILabel *)KApasswordLable{
    if (!_KApasswordLable) {
        _KApasswordLable = [[UILabel alloc] init];
        _KApasswordLable.text = @"密码";
        _KApasswordLable.textColor = [UIColor grayColor];
        _KApasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _KApasswordLable;
}
- (UITextField *)KApasswordTextField{
    if (!_KApasswordTextField) {
        _KApasswordTextField = [[UITextField alloc] init];
        _KApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KApasswordTextField.tag = 99;
        _KApasswordTextField.delegate = self;
        _KApasswordTextField.textColor = [UIColor blackColor];
        _KApasswordTextField.font = [UIFont systemFontOfSize:20];
        _KApasswordTextField.placeholder = @"请输入密码";
        _KApasswordTextField.secureTextEntry = YES;
    }
    return _KApasswordTextField;
}
- (UIView *)KAline1{
    if (!_KAline1) {
        _KAline1 = [[UIView alloc] init];
        _KAline1.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KAline1;
}
- (UIButton *)KAloginButton{
    if (!_KAloginButton) {
        _KAloginButton = [[UIButton alloc] init];
        _KAloginButton.tag = 100;
        _KAloginButton.backgroundColor = [UIColor blueColor];
        [_KAloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _KAloginButton.layer.cornerRadius = 6.0f;
        _KAloginButton.layer.masksToBounds = YES;
        [_KAloginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_KAloginButton addTarget:self action:@selector(KAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAloginButton;
}
- (UIButton *)KAregisteredButton{
    if (!_KAregisteredButton) {
        _KAregisteredButton = [[UIButton alloc] init];
        _KAregisteredButton.tag = 101;
        _KAregisteredButton.backgroundColor = [UIColor greenColor];
        [_KAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_KAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _KAregisteredButton.layer.cornerRadius = 6.0f;
        _KAregisteredButton.layer.masksToBounds = YES;
        [_KAregisteredButton setTitle:@"注册" forState:UIControlStateNormal];
        [_KAregisteredButton addTarget:self action:@selector(KAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAregisteredButton;
}
@end
