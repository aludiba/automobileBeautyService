//
//  YWKGALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGALoginTableViewCell.h"
#import "YWKGATabBarController.h"
@interface YWKGALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *YWKGAbackView;
@property(nonatomic, strong)UILabel *YWKGAaccountLable;
@property(nonatomic, strong)UITextField *YWKGAaccountTextField;
@property(nonatomic, strong)UIView *line;
@property(nonatomic, copy)NSString *YWKGAaccount;
@property(nonatomic, strong)UILabel *YWKGApasswordLable;
@property(nonatomic, strong)UITextField *YWKGAYWKGApasswordTextField;
@property(nonatomic, strong)UIView *line1;
@property(nonatomic, copy)NSString *YWKGApassword;
@property(nonatomic, strong)UIButton *YWKGAloginButton;
@property(nonatomic, strong)UIButton *YWKGAregisteredButton;
@end
@implementation YWKGALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self YWKGAsetContent];
    }
    return self;
}
- (void)YWKGAsetContent{
    [self.contentView addSubview:self.YWKGAbackView];
    [self.YWKGAbackView addSubview:self.YWKGAaccountLable];
    [self.YWKGAbackView addSubview:self.YWKGAaccountTextField];
    [self.YWKGAbackView addSubview:self.line];
    [self.YWKGAbackView addSubview:self.YWKGApasswordLable];
    [self.YWKGAbackView addSubview:self.YWKGAYWKGApasswordTextField];
    [self.YWKGAbackView addSubview:self.line1];
    [self.YWKGAbackView addSubview:self.YWKGAloginButton];
    [self.YWKGAbackView addSubview:self.YWKGAregisteredButton];
    
    [self.YWKGAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(YWKGAHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(YWKGAWIDTH - 40);
        make.height.mas_equalTo(400);
        make.bottom.equalTo(self.contentView).offset(-(YWKGAHEIGHT - YWKGAHeightNavBar - 50 - 400));
    }];
    [self.YWKGAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YWKGAbackView).offset(50);
        make.leading.equalTo(self.YWKGAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YWKGAaccountLable);
        make.leading.equalTo(self.YWKGAaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.YWKGAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YWKGAaccountTextField.mas_bottom);
               make.leading.equalTo(self.YWKGAbackView).offset(16);
               make.trailing.equalTo(self.YWKGAbackView);
               make.height.mas_equalTo(1);
    }];
    [self.YWKGApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YWKGAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.YWKGAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAYWKGApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YWKGApasswordLable);
        make.leading.equalTo(self.YWKGApasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.YWKGAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.line1 mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.YWKGAYWKGApasswordTextField.mas_bottom);
                  make.leading.equalTo(self.YWKGAbackView).offset(16);
                  make.trailing.equalTo(self.YWKGAbackView);
                  make.height.mas_equalTo(1);
       }];
    [self.YWKGAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YWKGAbackView).offset(50);
        make.trailing.equalTo(self.YWKGAbackView).offset(-50);
        make.top.equalTo(self.YWKGAYWKGApasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.YWKGAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.YWKGAbackView).offset(50);
        make.trailing.equalTo(self.YWKGAbackView).offset(-50);
        make.top.equalTo(self.YWKGAloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.YWKGAaccount.length) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.YWKGApassword.length) {
        [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.YWKGAaccount password:self.YWKGApassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                YWKGATabBarController *tabVC = [YWKGATabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.YWKGAaccount];
        [bUser setPassword:self.YWKGApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.YWKGAaccount password:self.YWKGApassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        YWKGATabBarController *tabVC = [YWKGATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD YWKGAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.YWKGAaccount = textField.text;
    }else if (textField.tag == 99){
        self.YWKGApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.YWKGAaccount = textField.text;
    }else if (textField.tag == 99){
        self.YWKGApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)YWKGAbackView{
    if (!_YWKGAbackView) {
        _YWKGAbackView = [[UIView alloc] init];
        _YWKGAbackView.layer.cornerRadius = 20.0f;
        _YWKGAbackView.layer.masksToBounds = YES;
        _YWKGAbackView.layer.borderColor = [UIColor systemBlueColor].CGColor;
        _YWKGAbackView.layer.borderWidth = 2.0f;
        _YWKGAbackView.backgroundColor = [UIColor cyanColor];
    }
    return _YWKGAbackView;
}
- (UILabel *)YWKGAaccountLable{
    if (!_YWKGAaccountLable) {
        _YWKGAaccountLable = [[UILabel alloc] init];
        _YWKGAaccountLable.text = NSLocalizedString(@"账号", nil);
        _YWKGAaccountLable.textColor = [UIColor grayColor];
        _YWKGAaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _YWKGAaccountLable;
}
- (UITextField *)YWKGAaccountTextField{
    if (!_YWKGAaccountTextField) {
        _YWKGAaccountTextField = [[UITextField alloc] init];
        _YWKGAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YWKGAaccountTextField.tag = 98;
        _YWKGAaccountTextField.delegate = self;
        _YWKGAaccountTextField.textColor = [UIColor blackColor];
        _YWKGAaccountTextField.font = [UIFont systemFontOfSize:18];
        _YWKGAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _YWKGAaccountTextField;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = YWKGAH_Color(230, 230, 230, 1);
    }
    return _line;
}
- (UILabel *)YWKGApasswordLable{
    if (!_YWKGApasswordLable) {
        _YWKGApasswordLable = [[UILabel alloc] init];
        _YWKGApasswordLable.text = NSLocalizedString(@"密码", nil);
        _YWKGApasswordLable.textColor = [UIColor grayColor];
        _YWKGApasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _YWKGApasswordLable;
}
- (UITextField *)YWKGAYWKGApasswordTextField{
    if (!_YWKGAYWKGApasswordTextField) {
        _YWKGAYWKGApasswordTextField = [[UITextField alloc] init];
        _YWKGAYWKGApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YWKGAYWKGApasswordTextField.tag = 99;
        _YWKGAYWKGApasswordTextField.delegate = self;
        _YWKGAYWKGApasswordTextField.textColor = [UIColor blackColor];
        _YWKGAYWKGApasswordTextField.font = [UIFont systemFontOfSize:18];
        _YWKGAYWKGApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _YWKGAYWKGApasswordTextField.secureTextEntry = YES;
    }
    return _YWKGAYWKGApasswordTextField;
}
- (UIView *)line1{
    if (!_line1) {
        _line1 = [[UIView alloc] init];
        _line1.backgroundColor = YWKGAH_Color(230, 230, 230, 1);
    }
    return _line1;
}
- (UIButton *)YWKGAloginButton{
    if (!_YWKGAloginButton) {
        _YWKGAloginButton = [[UIButton alloc] init];
        _YWKGAloginButton.tag = 100;
        _YWKGAloginButton.backgroundColor = [UIColor whiteColor];
        [_YWKGAloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YWKGAloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _YWKGAloginButton.layer.cornerRadius = 6.0f;
        _YWKGAloginButton.layer.masksToBounds = YES;
        [_YWKGAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_YWKGAloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAloginButton;
}
- (UIButton *)YWKGAregisteredButton{
    if (!_YWKGAregisteredButton) {
        _YWKGAregisteredButton = [[UIButton alloc] init];
        _YWKGAregisteredButton.tag = 101;
        _YWKGAregisteredButton.backgroundColor = [UIColor whiteColor];
        [_YWKGAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YWKGAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _YWKGAregisteredButton.layer.cornerRadius = 6.0f;
        _YWKGAregisteredButton.layer.masksToBounds = YES;
        [_YWKGAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_YWKGAregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAregisteredButton;
}
@end
