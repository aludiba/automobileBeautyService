//
//  PBLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBLoginTableViewCell.h"
#import "PBTabBarController.h"
@interface PBLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PBbackView;
@property(nonatomic, strong)UILabel *PBaccountLable;
@property(nonatomic, strong)UITextField *PBaccountTextField;
@property(nonatomic, copy)NSString *PBaccount;
@property(nonatomic, strong)UILabel *PBpasswordLable;
@property(nonatomic, strong)UITextField *PBPBpasswordTextField;
@property(nonatomic, copy)NSString *PBpassword;
@property(nonatomic, strong)UIButton *PBloginButton;
@property(nonatomic, strong)UIButton *PBregisteredButton;
@end
@implementation PBLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PBsetContent];
    }
    return self;
}
- (void)PBsetContent{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.PBbackView];
    [self.PBbackView addSubview:self.PBaccountLable];
    [self.PBbackView addSubview:self.PBaccountTextField];
    [self.PBbackView addSubview:self.PBpasswordLable];
    [self.PBbackView addSubview:self.PBPBpasswordTextField];
    [self.PBbackView addSubview:self.PBloginButton];
    [self.PBbackView addSubview:self.PBregisteredButton];
    
    [self.PBbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PBHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PBWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PBHEIGHT - PBHeightNavBar - 343.5));
    }];
    [self.PBaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PBbackView).offset(40);
        make.leading.equalTo(self.PBbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PBaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PBaccountLable);
        make.leading.equalTo(self.PBaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PBbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PBpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PBaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PBbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PBPBpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PBpasswordLable);
        make.leading.equalTo(self.PBpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PBbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PBloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PBbackView).offset(60);
        make.trailing.equalTo(self.PBbackView).offset(-60);
        make.top.equalTo(self.PBPBpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PBregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PBbackView).offset(60);
        make.trailing.equalTo(self.PBbackView).offset(-60);
        make.top.equalTo(self.PBloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PBaccount.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PBpassword.length) {
        [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PBaccount password:self.PBpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"登录成功", nil)];
                PBTabBarController *tabVC = [PBTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PBaccount];
        [bUser setPassword:self.PBpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PBaccount password:self.PBpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        PBTabBarController *tabVC = [PBTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD PBshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PBaccount = textField.text;
    }else if (textField.tag == 99){
        self.PBpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PBaccount = textField.text;
    }else if (textField.tag == 99){
        self.PBpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PBbackView{
    if (!_PBbackView) {
        _PBbackView = [[UIView alloc] init];
        _PBbackView.backgroundColor = [UIColor whiteColor];
        _PBbackView.layer.cornerRadius = 5.0f;
        _PBbackView.layer.masksToBounds = YES;
    }
    return _PBbackView;
}
- (UILabel *)PBaccountLable{
    if (!_PBaccountLable) {
        _PBaccountLable = [[UILabel alloc] init];
        _PBaccountLable.text = NSLocalizedString(@"账号", nil);
        _PBaccountLable.textColor = [UIColor blackColor];
        _PBaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PBaccountLable;
}
- (UITextField *)PBaccountTextField{
    if (!_PBaccountTextField) {
        _PBaccountTextField = [[UITextField alloc] init];
        _PBaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBaccountTextField.tag = 98;
        _PBaccountTextField.delegate = self;
        _PBaccountTextField.textColor = [UIColor blackColor];
        _PBaccountTextField.font = [UIFont systemFontOfSize:15];
        _PBaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PBaccountTextField;
}
- (UILabel *)PBpasswordLable{
    if (!_PBpasswordLable) {
        _PBpasswordLable = [[UILabel alloc] init];
        _PBpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PBpasswordLable.textColor = [UIColor blackColor];
        _PBpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PBpasswordLable;
}
- (UITextField *)PBPBpasswordTextField{
    if (!_PBPBpasswordTextField) {
        _PBPBpasswordTextField = [[UITextField alloc] init];
        _PBPBpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBPBpasswordTextField.tag = 99;
        _PBPBpasswordTextField.delegate = self;
        _PBPBpasswordTextField.textColor = [UIColor blackColor];
        _PBPBpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PBPBpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PBPBpasswordTextField.secureTextEntry = YES;
    }
    return _PBPBpasswordTextField;
}
- (UIButton *)PBloginButton{
    if (!_PBloginButton) {
        _PBloginButton = [[UIButton alloc] init];
        _PBloginButton.tag = 100;
        _PBloginButton.backgroundColor = [UIColor cyanColor];
        [_PBloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PBloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PBloginButton.layer.cornerRadius = 4.0f;
        _PBloginButton.layer.masksToBounds = YES;
        _PBloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PBloginButton.layer.borderWidth = 1.0f;
        [_PBloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PBloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PBloginButton;
}
- (UIButton *)PBregisteredButton{
    if (!_PBregisteredButton) {
        _PBregisteredButton = [[UIButton alloc] init];
        _PBregisteredButton.tag = 101;
        _PBregisteredButton.backgroundColor = [UIColor cyanColor];
        [_PBregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PBregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PBregisteredButton.layer.cornerRadius = 4.0f;
        _PBregisteredButton.layer.masksToBounds = YES;
        _PBregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PBregisteredButton.layer.borderWidth = 1.0f;
        [_PBregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PBregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PBregisteredButton;
}
@end
