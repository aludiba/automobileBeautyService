//
//  BGLoginTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGLoginTableViewCell.h"
#import "BGBaseViewController.h"

@interface BGLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *BGcancelButton;

@property(nonatomic, copy)NSString *BGaccount;
@property(nonatomic, strong)UILabel *BGaccountLable;
@property(nonatomic, strong)UITextField *BGaccountTextField;
@property(nonatomic, strong)UIView *BGline;

@property(nonatomic, copy)NSString *BGpassword;
@property(nonatomic, strong)UILabel *BGpasswordLable;
@property(nonatomic, strong)UITextField *BGpasswordTextField;
@property(nonatomic, strong)UIView *BGline1;

@property(nonatomic, strong)UIButton *BGloginButton;
@property(nonatomic, strong)UIButton *BGregisteredButton;
@end
@implementation BGLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self BGsetContentView];
    }
    return self;
}
- (void)BGsetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.BGcancelButton];
    [self.contentView addSubview:self.BGaccountLable];
    [self.contentView addSubview:self.BGaccountTextField];
    [self.contentView addSubview:self.BGline];
    [self.contentView addSubview:self.BGpasswordLable];
    [self.contentView addSubview:self.BGpasswordTextField];
    [self.contentView addSubview:self.BGline1];
    [self.contentView addSubview:self.BGloginButton];
    [self.contentView addSubview:self.BGregisteredButton];
    
    [self.BGcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-25);
        make.top.equalTo(self.contentView).offset(30);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(17);
    }];
    [self.BGaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.BGcancelButton.mas_bottom).offset(60);
        make.width.mas_equalTo(66);
        make.height.mas_equalTo(16);
    }];
    [self.BGaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BGaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.BGaccountLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.BGline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.BGaccountTextField.mas_bottom).offset(10);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.BGpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.top.equalTo(self.BGline.mas_bottom).offset(15);
        make.width.mas_equalTo(66);
        make.height.mas_equalTo(16);
    }];
    [self.BGpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.BGpasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.BGpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(21);
    }];
    [self.BGline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.BGpasswordTextField.mas_bottom).offset(10);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.BGloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BGline1.mas_bottom).offset(25);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
    }];
    [self.BGregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BGloginButton.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(32);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(50);
        make.bottom.equalTo(self.contentView).offset(-20);
    }];
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.BGaccount = textField.text;
    }else if (textField.tag == 99){
        self.BGpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.BGaccount = textField.text;
    }else if (textField.tag == 99){
        self.BGpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (void)BGcancelClick{
    [self.BGSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)BGbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.BGaccount.length) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.BGpassword.length) {
        [MBProgressHUD BGshowReminderText:NSLocalizedString(@"确认密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.BGaccount password:self.BGpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD BGshowReminderText:@"登陆成功"];
                [self.BGSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD BGshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.BGaccount];
        [bUser setPassword:self.BGpassword];
        [bUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD BGshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.BGaccount password:self.BGpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.BGSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD BGshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD BGshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - 属性懒加载
- (UIButton *)BGcancelButton{
    if (!_BGcancelButton) {
        _BGcancelButton = [[UIButton alloc] init];
        [_BGcancelButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_BGcancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BGcancelButton setTitle:NSLocalizedString(@"取消", nil) forState:UIControlStateNormal];
        [_BGcancelButton addTarget:self action:@selector(BGcancelClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGcancelButton;
}
- (UILabel *)BGaccountLable{
    if (!_BGaccountLable) {
        _BGaccountLable = [[UILabel alloc] init];
        _BGaccountLable.text = NSLocalizedString(@"账号", nil);
        _BGaccountLable.textColor = [UIColor grayColor];
        _BGaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _BGaccountLable;
}
- (UITextField *)BGaccountTextField{
    if (!_BGaccountTextField) {
        _BGaccountTextField = [[UITextField alloc] init];
        _BGaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BGaccountTextField.tag = 98;
        _BGaccountTextField.delegate = self;
        _BGaccountTextField.textColor = [UIColor blackColor];
        _BGaccountTextField.font = [UIFont systemFontOfSize:20];
        _BGaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _BGaccountTextField;
}
- (UIView *)BGline{
    if (!_BGline) {
        _BGline = [[UIView alloc] init];
        _BGline.backgroundColor = BGH_Color(242, 242, 242, 1);
    }
    return _BGline;
}
- (UILabel *)BGpasswordLable{
    if (!_BGpasswordLable) {
        _BGpasswordLable = [[UILabel alloc] init];
        _BGpasswordLable.text = NSLocalizedString(@"密码", nil);
        _BGpasswordLable.textColor = [UIColor grayColor];
        _BGpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _BGpasswordLable;
}
- (UITextField *)BGpasswordTextField{
    if (!_BGpasswordTextField) {
        _BGpasswordTextField = [[UITextField alloc] init];
        _BGpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BGpasswordTextField.tag = 99;
        _BGpasswordTextField.delegate = self;
        _BGpasswordTextField.textColor = [UIColor blackColor];
        _BGpasswordTextField.font = [UIFont systemFontOfSize:20];
        _BGpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _BGpasswordTextField.secureTextEntry = YES;
    }
    return _BGpasswordTextField;
}
- (UIView *)BGline1{
    if (!_BGline1) {
        _BGline1 = [[UIView alloc] init];
        _BGline1.backgroundColor = BGH_Color(242, 242, 242, 1);
    }
    return _BGline1;
}
- (UIButton *)BGloginButton{
    if (!_BGloginButton) {
        _BGloginButton = [[UIButton alloc] init];
        _BGloginButton.tag = 100;
        _BGloginButton.backgroundColor = [UIColor blueColor];
        [_BGloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_BGloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _BGloginButton.layer.cornerRadius = 6.0f;
        _BGloginButton.layer.masksToBounds = YES;
        [_BGloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_BGloginButton addTarget:self action:@selector(BGbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGloginButton;
}
- (UIButton *)BGregisteredButton{
    if (!_BGregisteredButton) {
        _BGregisteredButton = [[UIButton alloc] init];
        _BGregisteredButton.tag = 101;
        _BGregisteredButton.backgroundColor = [UIColor whiteColor];
        [_BGregisteredButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_BGregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _BGregisteredButton.layer.cornerRadius = 6.0f;
        _BGregisteredButton.layer.masksToBounds = YES;
        [_BGregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_BGregisteredButton addTarget:self action:@selector(BGbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGregisteredButton;
}
@end
