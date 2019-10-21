//
//  GALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GALoginTableViewCell.h"
#import "GATabBarController.h"
@interface GALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *GAbackView;
@property(nonatomic, strong)UILabel *GAaccountLable;
@property(nonatomic, strong)UITextField *GAaccountTextField;
@property(nonatomic, strong)UIView *line;
@property(nonatomic, copy)NSString *GAaccount;
@property(nonatomic, strong)UILabel *GApasswordLable;
@property(nonatomic, strong)UITextField *GAGApasswordTextField;
@property(nonatomic, strong)UIView *line1;
@property(nonatomic, copy)NSString *GApassword;
@property(nonatomic, strong)UIButton *GAloginButton;
@property(nonatomic, strong)UIButton *GAregisteredButton;
@end
@implementation GALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GAsetContent];
    }
    return self;
}
- (void)GAsetContent{
    [self.contentView addSubview:self.GAbackView];
    [self.GAbackView addSubview:self.GAaccountLable];
    [self.GAbackView addSubview:self.GAaccountTextField];
    [self.GAbackView addSubview:self.line];
    [self.GAbackView addSubview:self.GApasswordLable];
    [self.GAbackView addSubview:self.GAGApasswordTextField];
    [self.GAbackView addSubview:self.line1];
    [self.GAbackView addSubview:self.GAloginButton];
    [self.GAbackView addSubview:self.GAregisteredButton];
    
    [self.GAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(GAHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(GAWIDTH - 40);
        make.height.mas_equalTo(400);
        make.bottom.equalTo(self.contentView).offset(-(GAHEIGHT - GAHeightNavBar - 50 - 400));
    }];
    [self.GAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAbackView).offset(50);
        make.leading.equalTo(self.GAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.GAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GAaccountLable);
        make.leading.equalTo(self.GAaccountLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.GAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAaccountTextField.mas_bottom);
               make.leading.equalTo(self.GAbackView).offset(16);
               make.trailing.equalTo(self.GAbackView);
               make.height.mas_equalTo(1);
    }];
    [self.GApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.GAbackView).offset(30);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(60);
    }];
    [self.GAGApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GApasswordLable);
        make.leading.equalTo(self.GApasswordLable.mas_trailing).offset(5);
        make.trailing.equalTo(self.GAbackView).offset(-10);
        make.height.mas_equalTo(60);
    }];
    [self.line1 mas_makeConstraints:^(MASConstraintMaker *make) {
           make.top.equalTo(self.GAGApasswordTextField.mas_bottom);
                  make.leading.equalTo(self.GAbackView).offset(16);
                  make.trailing.equalTo(self.GAbackView);
                  make.height.mas_equalTo(1);
       }];
    [self.GAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GAbackView).offset(50);
        make.trailing.equalTo(self.GAbackView).offset(-50);
        make.top.equalTo(self.GAGApasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(50);
    }];
    [self.GAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GAbackView).offset(50);
        make.trailing.equalTo(self.GAbackView).offset(-50);
        make.top.equalTo(self.GAloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(50);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.GAaccount.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.GApassword.length) {
        [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.GAaccount password:self.GApassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                GATabBarController *tabVC = [GATabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.GAaccount];
        [bUser setPassword:self.GApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.GAaccount password:self.GApassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        GATabBarController *tabVC = [GATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD GAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.GAaccount = textField.text;
    }else if (textField.tag == 99){
        self.GApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.GAaccount = textField.text;
    }else if (textField.tag == 99){
        self.GApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)GAbackView{
    if (!_GAbackView) {
        _GAbackView = [[UIView alloc] init];
        _GAbackView.layer.cornerRadius = 20.0f;
        _GAbackView.layer.masksToBounds = YES;
        _GAbackView.layer.borderColor = [UIColor systemBlueColor].CGColor;
        _GAbackView.layer.borderWidth = 2.0f;
        _GAbackView.backgroundColor = [UIColor cyanColor];
    }
    return _GAbackView;
}
- (UILabel *)GAaccountLable{
    if (!_GAaccountLable) {
        _GAaccountLable = [[UILabel alloc] init];
        _GAaccountLable.text = NSLocalizedString(@"账号", nil);
        _GAaccountLable.textColor = [UIColor grayColor];
        _GAaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _GAaccountLable;
}
- (UITextField *)GAaccountTextField{
    if (!_GAaccountTextField) {
        _GAaccountTextField = [[UITextField alloc] init];
        _GAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAaccountTextField.tag = 98;
        _GAaccountTextField.delegate = self;
        _GAaccountTextField.textColor = [UIColor blackColor];
        _GAaccountTextField.font = [UIFont systemFontOfSize:18];
        _GAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _GAaccountTextField;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = GAH_Color(230, 230, 230, 1);
    }
    return _line;
}
- (UILabel *)GApasswordLable{
    if (!_GApasswordLable) {
        _GApasswordLable = [[UILabel alloc] init];
        _GApasswordLable.text = NSLocalizedString(@"密码", nil);
        _GApasswordLable.textColor = [UIColor grayColor];
        _GApasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _GApasswordLable;
}
- (UITextField *)GAGApasswordTextField{
    if (!_GAGApasswordTextField) {
        _GAGApasswordTextField = [[UITextField alloc] init];
        _GAGApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAGApasswordTextField.tag = 99;
        _GAGApasswordTextField.delegate = self;
        _GAGApasswordTextField.textColor = [UIColor blackColor];
        _GAGApasswordTextField.font = [UIFont systemFontOfSize:18];
        _GAGApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _GAGApasswordTextField.secureTextEntry = YES;
    }
    return _GAGApasswordTextField;
}
- (UIView *)line1{
    if (!_line1) {
        _line1 = [[UIView alloc] init];
        _line1.backgroundColor = GAH_Color(230, 230, 230, 1);
    }
    return _line1;
}
- (UIButton *)GAloginButton{
    if (!_GAloginButton) {
        _GAloginButton = [[UIButton alloc] init];
        _GAloginButton.tag = 100;
        _GAloginButton.backgroundColor = [UIColor whiteColor];
        [_GAloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GAloginButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _GAloginButton.layer.cornerRadius = 6.0f;
        _GAloginButton.layer.masksToBounds = YES;
        [_GAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_GAloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAloginButton;
}
- (UIButton *)GAregisteredButton{
    if (!_GAregisteredButton) {
        _GAregisteredButton = [[UIButton alloc] init];
        _GAregisteredButton.tag = 101;
        _GAregisteredButton.backgroundColor = [UIColor whiteColor];
        [_GAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _GAregisteredButton.layer.cornerRadius = 6.0f;
        _GAregisteredButton.layer.masksToBounds = YES;
        [_GAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_GAregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAregisteredButton;
}
@end
