//
//  FBLoginTableViewCell.m
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "FBLoginTableViewCell.h"
#import "FBBaseViewController.h"

@interface FBLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIButton *FBcancelButton;
@property(nonatomic, copy)NSString *FBaccount;
@property(nonatomic, strong)UILabel *FBaccountLable;
@property(nonatomic, strong)UITextField *FBaccountTextField;
@property(nonatomic, strong)UIView *FBline;
@property(nonatomic, copy)NSString *FBpassword;
@property(nonatomic, strong)UILabel *FBpasswordLable;
@property(nonatomic, strong)UITextField *FBpasswordTextField;
@property(nonatomic, strong)UIView *FBline1;
@property(nonatomic, strong)UIButton *FBloginButton;
@property(nonatomic, strong)UIButton *FBregisteredButton;
@end
@implementation FBLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self FBsetContentView];
    }
    return self;
}
- (void)FBsetContentView{
    [self.contentView addSubview:self.FBcancelButton];
    [self.contentView addSubview:self.FBaccountLable];
    [self.contentView addSubview:self.FBaccountTextField];
    [self.contentView addSubview:self.FBline];
    [self.contentView addSubview:self.FBpasswordLable];
    [self.contentView addSubview:self.FBpasswordTextField];
    [self.contentView addSubview:self.FBline1];
    [self.contentView addSubview:self.FBloginButton];
    [self.contentView addSubview:self.FBregisteredButton];
    
    [self.FBcancelButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(16);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    [self.FBaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.FBcancelButton.mas_bottom).offset(40);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(20);
    }];
    [self.FBaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.FBaccountLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.FBaccountLable);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(22);
    }];
    [self.FBline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.FBaccountTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.FBpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.FBline.mas_bottom).offset(15);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(20);
    }];
    [self.FBpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.FBpasswordLable.mas_trailing).offset(16);
        make.centerY.equalTo(self.FBpasswordLable);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(22);
    }];
    [self.FBline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.FBpasswordTextField.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
    }];
    [self.FBloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.FBline1.mas_bottom).offset(30);
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.height.mas_equalTo(40);
    }];
    [self.FBregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.FBloginButton.mas_bottom).offset(20);
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.height.mas_equalTo(40);
        make.bottom.equalTo(self.contentView).offset(-16);
    }];
}
#pragma mark - actions
- (void)FBcancelAction:(UIButton *)FBsender{
    [self.FBSuperVC dismissViewControllerAnimated:YES completion:^{
        
    }];
}
- (void)FBbtnClick:(UIButton *)FBsender{
    [self.contentView endEditing:YES];
    if (!self.FBaccount.length) {
        [MBProgressHUD FBshowReminderText:@"请输入账号"];
        return;
    }
    if (!self.FBpassword.length) {
        [MBProgressHUD FBshowReminderText:@"请输入密码"];
        return;
    }
    if (FBsender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.FBaccount password:self.FBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
                [MBProgressHUD FBshowReminderText:@"登陆成功"];
                [self.FBSuperVC dismissViewControllerAnimated:YES completion:^{
                    
                }];
            } else {
                [MBProgressHUD FBshowReminderText:@"请稍后重试"];
            }
        }];
    }else{
        AVUser *FBUser = [[AVUser alloc] init];
        [FBUser setUsername:self.FBaccount];
        [FBUser setPassword:self.FBpassword];
        [FBUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
            if (succeeded) {
                [MBProgressHUD FBshowReminderText:@"注册成功"];
                [AVUser logInWithUsernameInBackground:self.FBaccount password:self.FBpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                    if (user) {
                        [self.FBSuperVC dismissViewControllerAnimated:YES completion:^{
                                           
                        }];
                    } else {
                        [MBProgressHUD FBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD FBshowReminderText:@"请稍后重试"];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.FBaccount = textField.text;
    }
    if (textField.tag == 99){
        self.FBpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.FBaccount = textField.text;
    }else if (textField.tag == 99){
        self.FBpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIButton *)FBcancelButton{
    if (!_FBcancelButton) {
        _FBcancelButton = [[UIButton alloc] init];
        [_FBcancelButton setImage:[UIImage imageNamed:@"FBbtn_close"] forState:UIControlStateNormal];
        [_FBcancelButton addTarget:self action:@selector(FBcancelAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBcancelButton;
}
- (UILabel *)FBaccountLable{
    if (!_FBaccountLable) {
        _FBaccountLable = [[UILabel alloc] init];
        _FBaccountLable.text = @"账号:";
        _FBaccountLable.textColor = [UIColor systemBlueColor];
        _FBaccountLable.font = [UIFont systemFontOfSize:18];
    }
    return _FBaccountLable;
}
- (UITextField *)FBaccountTextField{
    if (!_FBaccountTextField) {
        _FBaccountTextField = [[UITextField alloc] init];
        _FBaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _FBaccountTextField.tag = 98;
        _FBaccountTextField.delegate = self;
        _FBaccountTextField.textColor = [UIColor blackColor];
        _FBaccountTextField.font = [UIFont systemFontOfSize:20];
        _FBaccountTextField.placeholder = @"请输入账号";
    }
    return _FBaccountTextField;
}
- (UIView *)FBline{
    if (!_FBline) {
        _FBline = [[UIView alloc] init];
        _FBline.backgroundColor = FBH_Color(242, 242, 242, 1);
    }
    return _FBline;
}
- (UILabel *)FBpasswordLable{
    if (!_FBpasswordLable) {
        _FBpasswordLable = [[UILabel alloc] init];
        _FBpasswordLable.text = @"密码:";
        _FBpasswordLable.textColor = [UIColor systemBlueColor];
        _FBpasswordLable.font = [UIFont systemFontOfSize:18];
    }
    return _FBpasswordLable;
}
- (UITextField *)FBpasswordTextField{
    if (!_FBpasswordTextField) {
        _FBpasswordTextField = [[UITextField alloc] init];
        _FBpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _FBpasswordTextField.tag = 99;
        _FBpasswordTextField.delegate = self;
        _FBpasswordTextField.textColor = [UIColor blackColor];
        _FBpasswordTextField.font = [UIFont systemFontOfSize:20];
        _FBpasswordTextField.placeholder = @"请输入密码";
        _FBpasswordTextField.secureTextEntry = YES;
    }
    return _FBpasswordTextField;
}
- (UIView *)FBline1{
    if (!_FBline1) {
        _FBline1 = [[UIView alloc] init];
        _FBline1.backgroundColor = FBH_Color(242, 242, 242, 1);
    }
    return _FBline1;
}
- (UIButton *)FBloginButton{
    if (!_FBloginButton) {
        _FBloginButton = [[UIButton alloc] init];
        _FBloginButton.tag = 100;
        _FBloginButton.backgroundColor = [UIColor blueColor];
        [_FBloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_FBloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _FBloginButton.layer.cornerRadius = 6.0f;
        _FBloginButton.layer.masksToBounds = YES;
        [_FBloginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_FBloginButton addTarget:self action:@selector(FBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBloginButton;
}
- (UIButton *)FBregisteredButton{
    if (!_FBregisteredButton) {
        _FBregisteredButton = [[UIButton alloc] init];
        _FBregisteredButton.tag = 101;
        _FBregisteredButton.backgroundColor = [UIColor redColor];
        [_FBregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_FBregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _FBregisteredButton.layer.cornerRadius = 6.0f;
        _FBregisteredButton.layer.masksToBounds = YES;
        [_FBregisteredButton setTitle:@"注册" forState:UIControlStateNormal];
        [_FBregisteredButton addTarget:self action:@selector(FBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBregisteredButton;
}
@end
