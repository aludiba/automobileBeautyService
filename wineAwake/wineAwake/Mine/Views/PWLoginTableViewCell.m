//
//  PWLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWLoginTableViewCell.h"
#import "PWTabBarController.h"
@interface PWLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PWbackView;
@property(nonatomic, strong)UILabel *PWaccountLable;
@property(nonatomic, strong)UITextField *PWaccountTextField;
@property(nonatomic, copy)NSString *PWaccount;
@property(nonatomic, strong)UILabel *PWpasswordLable;
@property(nonatomic, strong)UITextField *PWPWpasswordTextField;
@property(nonatomic, copy)NSString *PWpassword;
@property(nonatomic, strong)UIButton *PWloginButton;
@property(nonatomic, strong)UIButton *PWregisteredButton;
@end
@implementation PWLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PWsetContent];
    }
    return self;
}
- (void)PWsetContent{
    self.contentView.backgroundColor = PWH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.PWbackView];
    [self.PWbackView addSubview:self.PWaccountLable];
    [self.PWbackView addSubview:self.PWaccountTextField];
    [self.PWbackView addSubview:self.PWpasswordLable];
    [self.PWbackView addSubview:self.PWPWpasswordTextField];
    [self.PWbackView addSubview:self.PWloginButton];
    [self.PWbackView addSubview:self.PWregisteredButton];
    
    [self.PWbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PWHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PWWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PWHEIGHT - PWHeightNavBar - 50 - 343.5));
    }];
    [self.PWaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PWbackView).offset(40);
        make.leading.equalTo(self.PWbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.PWaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PWaccountLable);
        make.leading.equalTo(self.PWaccountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.PWbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line = [[UIView alloc] init];
//    line.backgroundColor = [UIColor grayColor];
//    [self.PWbackView addSubview:line];
//    [line mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.PWbackView).offset(25);
//        make.trailing.equalTo(self.PWbackView).offset(-25);
//        make.top.equalTo(self.PWaccountTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.PWpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PWaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PWbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.PWPWpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PWpasswordLable);
        make.leading.equalTo(self.PWpasswordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.PWbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line1 = [[UIView alloc] init];
//    line1.backgroundColor = [UIColor grayColor];
//    [self.PWbackView addSubview:line1];
//    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.PWbackView).offset(25);
//        make.trailing.equalTo(self.PWbackView).offset(-25);
//        make.top.equalTo(self.PWPWpasswordTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.PWloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PWbackView).offset(26.5);
        make.trailing.equalTo(self.PWbackView).offset(-26.5);
        make.top.equalTo(self.PWPWpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PWregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PWbackView).offset(26.5);
        make.trailing.equalTo(self.PWbackView).offset(-26.5);
        make.top.equalTo(self.PWloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PWaccount.length) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PWpassword.length) {
        [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PWaccount password:self.PWpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"登录成功", nil)];
                PWTabBarController *tabVC = [PWTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PWaccount];
        [bUser setPassword:self.PWpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PWaccount password:self.PWpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        PWTabBarController *tabVC = [PWTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD PWshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PWaccount = textField.text;
    }else if (textField.tag == 99){
        self.PWpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PWaccount = textField.text;
    }else if (textField.tag == 99){
        self.PWpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PWbackView{
    if (!_PWbackView) {
        _PWbackView = [[UIView alloc] init];
        _PWbackView.backgroundColor = PWH_Color(236, 236, 236, 1);
        _PWbackView.layer.cornerRadius = 5.0f;
        _PWbackView.layer.masksToBounds = YES;
//        _PWbackView.layer.borderColor = [UIColor grayColor].CGColor;
//        _PWbackView.layer.borderWidth = 1.0f;
    }
    return _PWbackView;
}
- (UILabel *)PWaccountLable{
    if (!_PWaccountLable) {
        _PWaccountLable = [[UILabel alloc] init];
        _PWaccountLable.text = NSLocalizedString(@"账号", nil);
        _PWaccountLable.textColor = [UIColor grayColor];
        _PWaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PWaccountLable;
}
- (UITextField *)PWaccountTextField{
    if (!_PWaccountTextField) {
        _PWaccountTextField = [[UITextField alloc] init];
        _PWaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWaccountTextField.tag = 98;
        _PWaccountTextField.delegate = self;
        _PWaccountTextField.textColor = [UIColor blackColor];
        _PWaccountTextField.font = [UIFont systemFontOfSize:15];
        _PWaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PWaccountTextField;
}
- (UILabel *)PWpasswordLable{
    if (!_PWpasswordLable) {
        _PWpasswordLable = [[UILabel alloc] init];
        _PWpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PWpasswordLable.textColor = [UIColor grayColor];
        _PWpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PWpasswordLable;
}
- (UITextField *)PWPWpasswordTextField{
    if (!_PWPWpasswordTextField) {
        _PWPWpasswordTextField = [[UITextField alloc] init];
        _PWPWpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWPWpasswordTextField.tag = 99;
        _PWPWpasswordTextField.delegate = self;
        _PWPWpasswordTextField.textColor = [UIColor blackColor];
        _PWPWpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PWPWpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PWPWpasswordTextField.secureTextEntry = YES;
    }
    return _PWPWpasswordTextField;
}
- (UIButton *)PWloginButton{
    if (!_PWloginButton) {
        _PWloginButton = [[UIButton alloc] init];
        _PWloginButton.tag = 100;
        _PWloginButton.backgroundColor = [UIColor purpleColor];
        [_PWloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PWloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PWloginButton.layer.cornerRadius = 4.0f;
        _PWloginButton.layer.masksToBounds = YES;
        [_PWloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PWloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PWloginButton;
}
- (UIButton *)PWregisteredButton{
    if (!_PWregisteredButton) {
        _PWregisteredButton = [[UIButton alloc] init];
        _PWregisteredButton.tag = 101;
        _PWregisteredButton.backgroundColor = [UIColor redColor];
        [_PWregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PWregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PWregisteredButton.layer.cornerRadius = 4.0f;
        _PWregisteredButton.layer.masksToBounds = YES;
        [_PWregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PWregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PWregisteredButton;
}
@end
