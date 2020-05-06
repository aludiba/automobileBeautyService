//
//  BCLoginTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BCLoginTableViewCell.h"
#import "BCBaseViewController.h"

@interface BCLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *BCcancelButton;
@property(nonatomic, copy)NSString *BCaccount;
@property(nonatomic, strong)UILabel *BCaccountLable;
@property(nonatomic, strong)UITextField *BCaccountTextField;
@property(nonatomic, strong)UIView *BCline;
@property(nonatomic, copy)NSString *BCpassword;
@property(nonatomic, strong)UILabel *BCpasswordLable;
@property(nonatomic, strong)UITextField *BCpasswordTextField;
@property(nonatomic, strong)UIView *BCline1;
@property(nonatomic, strong)UIButton *BCloginButton;
@property(nonatomic, strong)UIButton *BCregisteredButton;
@end
@implementation BCLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self BCsetContentView];
    }
    return self;
}
- (void)BCsetContentView{
    [self.contentView addSubview:self.BCcancelButton];
    [self.contentView addSubview:self.BCaccountLable];
    [self.contentView addSubview:self.BCaccountTextField];
    [self.contentView addSubview:self.BCline];
    [self.contentView addSubview:self.BCpasswordLable];
    [self.contentView addSubview:self.BCpasswordTextField];
    [self.contentView addSubview:self.BCline1];
    [self.contentView addSubview:self.BCloginButton];
    [self.contentView addSubview:self.BCregisteredButton];
    
    [self.BCcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(16);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    [self.BCaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.BCcancelButton.mas_bottom).offset(40);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(20);
    }];
    [self.BCaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BCaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.BCaccountLable);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(22);
    }];
    [self.BCline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.BCaccountTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.BCpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.BCline.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(20);
    }];
    [self.BCpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BCpasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.BCpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(22);
    }];
    [self.BCline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.BCpasswordTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.BCloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCline1.mas_bottom).offset(30);
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.height.mas_equalTo(40);
    }];
    [self.BCregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BCloginButton.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.height.mas_equalTo(40);
        make.bottom.equalTo(self.contentView).offset(-16);
    }];
}
#pragma mark - actions
- (void)BCcancelAction:(UIButton *)BCsender{
    [self.BCSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)BCbtnClick:(UIButton *)BCsender{
    [self.contentView endEditing:YES];
    if (!self.BCaccount.length) {
        [MBProgressHUD BCshowReminderText:@"请输入账号"];
        return;
    }
    if (!self.BCpassword.length) {
        [MBProgressHUD BCshowReminderText:@"请输入密码"];
        return;
    }
    if (BCsender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.BCaccount password:self.BCpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD BCshowReminderText:@"登陆成功"];
                [self.BCSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD BCshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *BCUser = [[AVUser alloc] init];
        [BCUser setUsername:self.BCaccount];
        [BCUser setPassword:self.BCpassword];
        [BCUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD BCshowReminderText:@"注册成功"];
                [AVUser logInWithUsernameInBackground:self.BCaccount password:self.BCpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.BCSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD BCshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD BCshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.BCaccount = textField.text;
    }
    if (textField.tag == 99){
        self.BCpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.BCaccount = textField.text;
    }else if (textField.tag == 99){
        self.BCpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)BCcancelButton{
    if (!_BCcancelButton) {
        _BCcancelButton = [[UIButton alloc] init];
        [_BCcancelButton setImage:[UIImage imageNamed:@"BCbtn_close"] forState:UIControlStateNormal];
        [_BCcancelButton addTarget:self action:@selector(BCcancelAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCcancelButton;
}
- (UILabel *)BCaccountLable{
    if (!_BCaccountLable) {
        _BCaccountLable = [[UILabel alloc] init];
        _BCaccountLable.text = @"账号:";
        _BCaccountLable.textColor = [UIColor systemBlueColor];
        _BCaccountLable.font = [UIFont systemFontOfSize:18];
    }
    return _BCaccountLable;
}
- (UITextField *)BCaccountTextField{
    if (!_BCaccountTextField) {
        _BCaccountTextField = [[UITextField alloc] init];
        _BCaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BCaccountTextField.tag = 98;
        _BCaccountTextField.delegate = self;
        _BCaccountTextField.textColor = [UIColor blackColor];
        _BCaccountTextField.font = [UIFont systemFontOfSize:20];
        _BCaccountTextField.placeholder = @"请输入账号";
    }
    return _BCaccountTextField;
}
- (UIView *)BCline{
    if (!_BCline) {
        _BCline = [[UIView alloc] init];
        _BCline.backgroundColor = BCH_Color(242, 242, 242, 1);
    }
    return _BCline;
}
- (UILabel *)BCpasswordLable{
    if (!_BCpasswordLable) {
        _BCpasswordLable = [[UILabel alloc] init];
        _BCpasswordLable.text = @"密码:";
        _BCpasswordLable.textColor = [UIColor systemBlueColor];
        _BCpasswordLable.font = [UIFont systemFontOfSize:18];
    }
    return _BCpasswordLable;
}
- (UITextField *)BCpasswordTextField{
    if (!_BCpasswordTextField) {
        _BCpasswordTextField = [[UITextField alloc] init];
        _BCpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BCpasswordTextField.tag = 99;
        _BCpasswordTextField.delegate = self;
        _BCpasswordTextField.textColor = [UIColor blackColor];
        _BCpasswordTextField.font = [UIFont systemFontOfSize:20];
        _BCpasswordTextField.placeholder = @"请输入密码";
        _BCpasswordTextField.secureTextEntry = YES;
    }
    return _BCpasswordTextField;
}
- (UIView *)BCline1{
    if (!_BCline1) {
        _BCline1 = [[UIView alloc] init];
        _BCline1.backgroundColor = BCH_Color(242, 242, 242, 1);
    }
    return _BCline1;
}
- (UIButton *)BCloginButton{
    if (!_BCloginButton) {
        _BCloginButton = [[UIButton alloc] init];
        _BCloginButton.tag = 100;
        _BCloginButton.backgroundColor = [UIColor blueColor];
        [_BCloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_BCloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _BCloginButton.layer.cornerRadius = 6.0f;
        _BCloginButton.layer.masksToBounds = YES;
        [_BCloginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_BCloginButton addTarget:self action:@selector(BCbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCloginButton;
}
- (UIButton *)BCregisteredButton{
    if (!_BCregisteredButton) {
        _BCregisteredButton = [[UIButton alloc] init];
        _BCregisteredButton.tag = 101;
        _BCregisteredButton.backgroundColor = [UIColor redColor];
        [_BCregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BCregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _BCregisteredButton.layer.cornerRadius = 6.0f;
        _BCregisteredButton.layer.masksToBounds = YES;
        [_BCregisteredButton setTitle:@"注册" forState:UIControlStateNormal];
        [_BCregisteredButton addTarget:self action:@selector(BCbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCregisteredButton;
}
@end
