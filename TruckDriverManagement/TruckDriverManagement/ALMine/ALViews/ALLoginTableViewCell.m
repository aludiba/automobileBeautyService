//
//  ALLoginTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALLoginTableViewCell.h"
#import "ALBaseViewController.h"

@interface ALLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *ALcancelButton;

@property(nonatomic, copy)NSString *ALaccount;
@property(nonatomic, strong)UILabel *ALaccountLable;
@property(nonatomic, strong)UITextField *ALaccountTextField;
@property(nonatomic, strong)UIView *ALline;

@property(nonatomic, copy)NSString *ALpassword;
@property(nonatomic, strong)UILabel *ALpasswordLable;
@property(nonatomic, strong)UITextField *ALpasswordTextField;
@property(nonatomic, strong)UIView *ALline1;

@property(nonatomic, strong)UIButton *ALloginButton;
@property(nonatomic, strong)UIButton *ALregisteredButton;
@end
@implementation ALLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self ALsetContentView];
    }
    return self;
}
- (void)ALsetContentView{
    self.contentView.backgroundColor = [UIColor blueColor];
    [self.contentView addSubview:self.ALcancelButton];
    [self.contentView addSubview:self.ALaccountLable];
    [self.contentView addSubview:self.ALaccountTextField];
    [self.contentView addSubview:self.ALline];
    [self.contentView addSubview:self.ALpasswordLable];
    [self.contentView addSubview:self.ALpasswordTextField];
    [self.contentView addSubview:self.ALline1];
    [self.contentView addSubview:self.ALloginButton];
    [self.contentView addSubview:self.ALregisteredButton];
    
    [self.ALcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(25);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    [self.ALaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.ALcancelButton.mas_bottom).offset(60);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(18);
    }];
    [self.ALaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ALaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.ALaccountLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.ALline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.ALaccountTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.ALpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.ALline.mas_bottom).offset(15);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(18);
    }];
    [self.ALpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.ALpasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.ALpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.ALline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.ALpasswordTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.ALloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ALline1.mas_bottom).offset(50);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
    }];
    [self.ALregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ALloginButton.mas_bottom).offset(25);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.ALaccount = textField.text;
    }else if (textField.tag == 99){
        self.ALpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.ALaccount = textField.text;
    }else if (textField.tag == 99){
        self.ALpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (void)ALcancelClick{
    [self.ALSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)ALbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.ALaccount.length) {
        [MBProgressHUD ALshowReminderText:@"请输入账号"];
        return;
    }
    if (!self.ALpassword.length) {
        [MBProgressHUD ALshowReminderText:@"请输入密码"];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.ALaccount password:self.ALpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD ALshowReminderText:@"登陆成功"];
                [self.ALSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD ALshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.ALaccount];
        [bUser setPassword:self.ALpassword];
        [bUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD ALshowReminderText:@"注册成功"];
                [AVUser logInWithUsernameInBackground:self.ALaccount password:self.ALpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.ALSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD ALshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD ALshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)ALcancelButton{
    if (!_ALcancelButton) {
        _ALcancelButton = [[UIButton alloc] init];
        [_ALcancelButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_ALcancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ALcancelButton setImage:[UIImage imageNamed:@"ALbtn_close"] forState:UIControlStateNormal];
        [_ALcancelButton addTarget:self action:@selector(ALcancelClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALcancelButton;
}
- (UILabel *)ALaccountLable{
    if (!_ALaccountLable) {
        _ALaccountLable = [[UILabel alloc] init];
        _ALaccountLable.text = @"账号";
        _ALaccountLable.textColor = [UIColor blackColor];
        _ALaccountLable.font = [UIFont systemFontOfSize:17];
    }
    return _ALaccountLable;
}
- (UITextField *)ALaccountTextField{
    if (!_ALaccountTextField) {
        _ALaccountTextField = [[UITextField alloc] init];
        _ALaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ALaccountTextField.tag = 98;
        _ALaccountTextField.delegate = self;
        _ALaccountTextField.textColor = [UIColor blackColor];
        _ALaccountTextField.font = [UIFont systemFontOfSize:20];
        _ALaccountTextField.placeholder = @"请输入账号";
    }
    return _ALaccountTextField;
}
- (UIView *)ALline{
    if (!_ALline) {
        _ALline = [[UIView alloc] init];
        _ALline.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALline;
}
- (UILabel *)ALpasswordLable{
    if (!_ALpasswordLable) {
        _ALpasswordLable = [[UILabel alloc] init];
        _ALpasswordLable.text = @"密码";
        _ALpasswordLable.textColor = [UIColor blackColor];
        _ALpasswordLable.font = [UIFont systemFontOfSize:17];
    }
    return _ALpasswordLable;
}
- (UITextField *)ALpasswordTextField{
    if (!_ALpasswordTextField) {
        _ALpasswordTextField = [[UITextField alloc] init];
        _ALpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ALpasswordTextField.tag = 99;
        _ALpasswordTextField.delegate = self;
        _ALpasswordTextField.textColor = [UIColor blackColor];
        _ALpasswordTextField.font = [UIFont systemFontOfSize:20];
        _ALpasswordTextField.placeholder = @"请输入密码";
        _ALpasswordTextField.secureTextEntry = YES;
    }
    return _ALpasswordTextField;
}
- (UIView *)ALline1{
    if (!_ALline1) {
        _ALline1 = [[UIView alloc] init];
        _ALline1.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALline1;
}
- (UIButton *)ALloginButton{
    if (!_ALloginButton) {
        _ALloginButton = [[UIButton alloc] init];
        _ALloginButton.tag = 100;
        _ALloginButton.backgroundColor = [UIColor systemBlueColor];
        [_ALloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_ALloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ALloginButton.layer.cornerRadius = 6.0f;
        _ALloginButton.layer.masksToBounds = YES;
        [_ALloginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_ALloginButton addTarget:self action:@selector(ALbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALloginButton;
}
- (UIButton *)ALregisteredButton{
    if (!_ALregisteredButton) {
        _ALregisteredButton = [[UIButton alloc] init];
        _ALregisteredButton.tag = 101;
        _ALregisteredButton.backgroundColor = [UIColor greenColor];
        [_ALregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ALregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _ALregisteredButton.layer.cornerRadius = 6.0f;
        _ALregisteredButton.layer.masksToBounds = YES;
        [_ALregisteredButton setTitle:@"注册" forState:UIControlStateNormal];
        [_ALregisteredButton addTarget:self action:@selector(ALbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALregisteredButton;
}
@end
