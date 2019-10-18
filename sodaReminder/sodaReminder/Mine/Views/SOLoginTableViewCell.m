//
//  SOLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOLoginTableViewCell.h"
#import "SOTabBarController.h"
@interface SOLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *SObackView;
@property(nonatomic, strong)UILabel *SOaccountLable;
@property(nonatomic, strong)UITextField *SOaccountTextField;
@property(nonatomic, copy)NSString *SOaccount;
@property(nonatomic, strong)UILabel *SOpasswordLable;
@property(nonatomic, strong)UITextField *SOSOpasswordTextField;
@property(nonatomic, copy)NSString *SOpassword;
@property(nonatomic, strong)UIButton *SOloginButton;
@property(nonatomic, strong)UIButton *SOregisteredButton;
@end
@implementation SOLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self SOsetContent];
    }
    return self;
}
- (void)SOsetContent{
    self.contentView.backgroundColor = SOH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.SObackView];
    [self.SObackView addSubview:self.SOaccountLable];
    [self.SObackView addSubview:self.SOaccountTextField];
    [self.SObackView addSubview:self.SOpasswordLable];
    [self.SObackView addSubview:self.SOSOpasswordTextField];
    [self.SObackView addSubview:self.SOloginButton];
    [self.SObackView addSubview:self.SOregisteredButton];
    
    [self.SObackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(SOHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(SOWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(SOHEIGHT - SOHeightNavBar - 50 - 343.5));
    }];
    [self.SOaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.SObackView).offset(40);
        make.leading.equalTo(self.SObackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.SOaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.SOaccountLable);
        make.leading.equalTo(self.SOaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.SObackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.SOpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.SOaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.SObackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.SOSOpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.SOpasswordLable);
        make.leading.equalTo(self.SOpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.SObackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.SOloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.SObackView).offset(26.5);
        make.trailing.equalTo(self.SObackView).offset(-26.5);
        make.top.equalTo(self.SOSOpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.SOregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.SObackView).offset(26.5);
        make.trailing.equalTo(self.SObackView).offset(-26.5);
        make.top.equalTo(self.SOloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.SOaccount.length) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.SOpassword.length) {
        [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.SOaccount password:self.SOpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"登录成功", nil)];
                SOTabBarController *tabVC = [SOTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.SOaccount];
        [bUser setPassword:self.SOpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.SOaccount password:self.SOpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        SOTabBarController *tabVC = [SOTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD SOshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.SOaccount = textField.text;
    }else if (textField.tag == 99){
        self.SOpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.SOaccount = textField.text;
    }else if (textField.tag == 99){
        self.SOpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)SObackView{
    if (!_SObackView) {
        _SObackView = [[UIView alloc] init];
        _SObackView.backgroundColor = SOH_Color(236, 236, 236, 1);
        _SObackView.layer.cornerRadius = 5.0f;
        _SObackView.layer.masksToBounds = YES;
    }
    return _SObackView;
}
- (UILabel *)SOaccountLable{
    if (!_SOaccountLable) {
        _SOaccountLable = [[UILabel alloc] init];
        _SOaccountLable.text = NSLocalizedString(@"账号", nil);
        _SOaccountLable.textColor = [UIColor grayColor];
        _SOaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _SOaccountLable;
}
- (UITextField *)SOaccountTextField{
    if (!_SOaccountTextField) {
        _SOaccountTextField = [[UITextField alloc] init];
        _SOaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOaccountTextField.tag = 98;
        _SOaccountTextField.delegate = self;
        _SOaccountTextField.textColor = [UIColor blackColor];
        _SOaccountTextField.font = [UIFont systemFontOfSize:15];
        _SOaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _SOaccountTextField;
}
- (UILabel *)SOpasswordLable{
    if (!_SOpasswordLable) {
        _SOpasswordLable = [[UILabel alloc] init];
        _SOpasswordLable.text = NSLocalizedString(@"密码", nil);
        _SOpasswordLable.textColor = [UIColor grayColor];
        _SOpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _SOpasswordLable;
}
- (UITextField *)SOSOpasswordTextField{
    if (!_SOSOpasswordTextField) {
        _SOSOpasswordTextField = [[UITextField alloc] init];
        _SOSOpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOSOpasswordTextField.tag = 99;
        _SOSOpasswordTextField.delegate = self;
        _SOSOpasswordTextField.textColor = [UIColor blackColor];
        _SOSOpasswordTextField.font = [UIFont systemFontOfSize:15];
        _SOSOpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _SOSOpasswordTextField.secureTextEntry = YES;
    }
    return _SOSOpasswordTextField;
}
- (UIButton *)SOloginButton{
    if (!_SOloginButton) {
        _SOloginButton = [[UIButton alloc] init];
        _SOloginButton.tag = 100;
        _SOloginButton.backgroundColor = [UIColor purpleColor];
        [_SOloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_SOloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _SOloginButton.layer.cornerRadius = 4.0f;
        _SOloginButton.layer.masksToBounds = YES;
        [_SOloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_SOloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOloginButton;
}
- (UIButton *)SOregisteredButton{
    if (!_SOregisteredButton) {
        _SOregisteredButton = [[UIButton alloc] init];
        _SOregisteredButton.tag = 101;
        _SOregisteredButton.backgroundColor = [UIColor redColor];
        [_SOregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_SOregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _SOregisteredButton.layer.cornerRadius = 4.0f;
        _SOregisteredButton.layer.masksToBounds = YES;
        [_SOregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_SOregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOregisteredButton;
}
@end
