//
//  AHLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHLoginTableViewCell.h"
#import "AHTabBarController.h"
@interface AHLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AHbackView;
@property(nonatomic, strong)UILabel *AHaccountLable;
@property(nonatomic, strong)UITextField *AHaccountTextField;
@property(nonatomic, copy)NSString *AHaccount;
@property(nonatomic, strong)UILabel *AHpasswordLable;
@property(nonatomic, strong)UITextField *AHAHpasswordTextField;
@property(nonatomic, copy)NSString *AHpassword;
@property(nonatomic, strong)UIButton *AHloginButton;
@property(nonatomic, strong)UIButton *AHregisteredButton;
@end
@implementation AHLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AHsetContent];
    }
    return self;
}
- (void)AHsetContent{
    self.contentView.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.AHbackView];
    [self.AHbackView addSubview:self.AHaccountLable];
    [self.AHbackView addSubview:self.AHaccountTextField];
    [self.AHbackView addSubview:self.AHpasswordLable];
    [self.AHbackView addSubview:self.AHAHpasswordTextField];
    [self.AHbackView addSubview:self.AHloginButton];
    [self.AHbackView addSubview:self.AHregisteredButton];
    
    [self.AHbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(AHHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(AHWIDTH - 25);
        make.height.mas_equalTo(450);
        make.bottom.equalTo(self.contentView).offset(-(AHHEIGHT - AHHeightNavBar - 50 - 450));
    }];
    [self.AHaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AHbackView).offset(50);
        make.leading.equalTo(self.AHbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AHaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AHaccountLable);
        make.leading.equalTo(self.AHaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AHbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AHpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AHaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.AHbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.AHAHpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AHpasswordLable);
        make.leading.equalTo(self.AHpasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.AHbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.AHloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AHbackView).offset(50);
        make.trailing.equalTo(self.AHbackView).offset(-50);
        make.top.equalTo(self.AHAHpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.AHregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AHbackView).offset(50);
        make.trailing.equalTo(self.AHbackView).offset(-50);
        make.top.equalTo(self.AHloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)AHbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.AHaccount.length) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.AHpassword.length) {
        [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.AHaccount password:self.AHpassword block:^(AVUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"登录成功", nil)];
                AHTabBarController *tabVC = [AHTabBarController AHshareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        AVUser *bUser = [[AVUser alloc] init];
        [bUser setUsername:self.AHaccount];
        [bUser setPassword:self.AHpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [AVUser logInWithUsernameInBackground:self.AHaccount password:self.AHpassword block:^(AVUser *user, NSError *error) {
                    if (user) {
                        AHTabBarController *tabVC = [AHTabBarController AHshareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD AHshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.AHaccount = textField.text;
    }else if (textField.tag == 99){
        self.AHpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.AHaccount = textField.text;
    }else if (textField.tag == 99){
        self.AHpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)AHbackView{
    if (!_AHbackView) {
        _AHbackView = [[UIView alloc] init];
        _AHbackView.layer.cornerRadius = 20.0f;
        _AHbackView.layer.masksToBounds = YES;
        _AHbackView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    }
    return _AHbackView;
}
- (UILabel *)AHaccountLable{
    if (!_AHaccountLable) {
        _AHaccountLable = [[UILabel alloc] init];
        _AHaccountLable.text = NSLocalizedString(@"账号", nil);
        _AHaccountLable.textColor = [UIColor redColor];
        _AHaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _AHaccountLable;
}
- (UITextField *)AHaccountTextField{
    if (!_AHaccountTextField) {
        _AHaccountTextField = [[UITextField alloc] init];
        _AHaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHaccountTextField.tag = 98;
        _AHaccountTextField.delegate = self;
        _AHaccountTextField.textColor = [UIColor blackColor];
        _AHaccountTextField.font = [UIFont systemFontOfSize:18];
        _AHaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _AHaccountTextField;
}
- (UILabel *)AHpasswordLable{
    if (!_AHpasswordLable) {
        _AHpasswordLable = [[UILabel alloc] init];
        _AHpasswordLable.text = NSLocalizedString(@"密码", nil);
        _AHpasswordLable.textColor = [UIColor redColor];
        _AHpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _AHpasswordLable;
}
- (UITextField *)AHAHpasswordTextField{
    if (!_AHAHpasswordTextField) {
        _AHAHpasswordTextField = [[UITextField alloc] init];
        _AHAHpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHAHpasswordTextField.tag = 99;
        _AHAHpasswordTextField.delegate = self;
        _AHAHpasswordTextField.textColor = [UIColor blackColor];
        _AHAHpasswordTextField.font = [UIFont systemFontOfSize:18];
        _AHAHpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _AHAHpasswordTextField.secureTextEntry = YES;
    }
    return _AHAHpasswordTextField;
}
- (UIButton *)AHloginButton{
    if (!_AHloginButton) {
        _AHloginButton = [[UIButton alloc] init];
        _AHloginButton.tag = 100;
        _AHloginButton.backgroundColor = [UIColor purpleColor];
        [_AHloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_AHloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AHloginButton.layer.cornerRadius = 12.0f;
        _AHloginButton.layer.masksToBounds = YES;
        [_AHloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_AHloginButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHloginButton;
}
- (UIButton *)AHregisteredButton{
    if (!_AHregisteredButton) {
        _AHregisteredButton = [[UIButton alloc] init];
        _AHregisteredButton.tag = 101;
        _AHregisteredButton.backgroundColor = [UIColor systemPurpleColor];
        [_AHregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AHregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _AHregisteredButton.layer.cornerRadius = 12.0f;
        _AHregisteredButton.layer.masksToBounds = YES;
        [_AHregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_AHregisteredButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHregisteredButton;
}
@end
