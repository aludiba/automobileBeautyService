//
//  CDLoginViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/14.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDLoginViewController.h"
#import "CDTabBarViewController.h"
#import "CDGuideViewController.h"

@interface CDLoginViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CDbackView;
@property(nonatomic, strong)UILabel *CDCDaccountLable;
@property(nonatomic, strong)UITextField *CDCDaccountTextField;
@property(nonatomic, copy)NSString *CDaccount;
@property(nonatomic, strong)UILabel *CDCDpasswordLable;
@property(nonatomic, strong)UITextField *CDCDpasswordTextField;
@property(nonatomic, copy)NSString *CDpassword;
@property(nonatomic, strong)UIButton *CDloginButton;
@property(nonatomic, strong)UIButton *CDregisteredButton;
@property(nonatomic, strong)UIButton *CDforgotPasswordButton;
@end

@implementation CDLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self CDsetContent];
}
+ (CDLoginViewController *)CDshareInstance{
    static CDLoginViewController *client;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        client = [[CDLoginViewController allocWithZone:NULL] init];
    });
    return client;
}
- (void)CDsetContent{
    [self.view addSubview:self.CDbackView];
    [self.CDbackView addSubview:self.CDCDaccountLable];
    [self.CDbackView addSubview:self.CDCDaccountTextField];
    [self.CDbackView addSubview:self.CDCDpasswordLable];
    [self.CDbackView addSubview:self.CDCDpasswordTextField];
    [self.CDbackView addSubview:self.CDloginButton];
    [self.CDbackView addSubview:self.CDregisteredButton];
    
    [self.CDbackView mas_makeConstraints:^(MASConstraintMaker *make) {
    make.top.equalTo(self.view).offset(CDHeightNavBar + 50);
    make.centerX.equalTo(self.view);
    make.width.mas_equalTo(CDWIDTH - 60);
    make.height.mas_equalTo(343.5);
    }];
    [self.CDCDaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CDbackView).offset(40);
        make.leading.equalTo(self.CDbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.CDCDaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CDCDaccountLable);
    make.leading.equalTo(self.CDCDaccountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.CDbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *CDline = [[UIView alloc] init];
    CDline.backgroundColor = [UIColor systemGrayColor];
    [self.CDbackView addSubview:CDline];
    [CDline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CDbackView).offset(16);
        make.trailing.equalTo(self.CDbackView).offset(0);
        make.top.equalTo(self.CDCDaccountTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.CDCDpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(CDline.mas_bottom).offset(24);
        make.leading.equalTo(self.CDbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.CDCDpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CDCDpasswordLable);
    make.leading.equalTo(self.CDCDpasswordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.CDbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
    UIView *CDline1 = [[UIView alloc] init];
    CDline1.backgroundColor = [UIColor systemGrayColor];
    [self.CDbackView addSubview:CDline1];
    [CDline1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CDbackView).offset(16);
        make.trailing.equalTo(self.CDbackView).offset(0);
        make.top.equalTo(self.CDCDpasswordTextField.mas_bottom).offset(10);
        make.height.mas_equalTo(0.5);
    }];
    [self.CDloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CDbackView).offset(26.5);
        make.trailing.equalTo(self.CDbackView).offset(-26.5);
        make.top.equalTo(CDline1.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.CDregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.CDbackView).offset(26.5);
        make.trailing.equalTo(self.CDbackView).offset(-26.5);
        make.top.equalTo(self.CDloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    if (!self.CDaccount.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.CDpassword.length) {
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [AVUser logInWithUsernameInBackground:self.CDaccount password:self.CDpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
            if (user) {
               [MBProgressHUD CDshowReminderText:NSLocalizedString(@"登录成功", nil)];
               if ([CDHBTool isFirstLoad]) {
                    CDGuideViewController *guideVC = [[CDGuideViewController alloc] init];
                    [[UIApplication sharedApplication].delegate window].rootViewController = guideVC;
                }else{
                    CDTabBarViewController *tabVC = [CDTabBarViewController CDshareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }
                }else{
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
                }
             }];
            }else if(sender.tag == 101){
                AVUser *CDUser = [[AVUser alloc] init];
                [CDUser setUsername:self.CDaccount];
                [CDUser setPassword:self.CDpassword];
                [CDUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
                if (isSuccessful){
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"注册成功", nil)];
                    [AVUser logInWithUsernameInBackground:self.CDaccount password:self.CDpassword block:^(AVUser * _Nullable user, NSError * _Nullable error) {
                        if (user) {
                            CDTabBarViewController *CDtabVC = [CDTabBarViewController CDshareInstance];
                            CDtabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = CDtabVC;
                        }else{
                            [MBProgressHUD CDshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                        }
                    }];
                } else {
                    [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.CDaccount = textField.text;
    }else if (textField.tag == 99){
        self.CDpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.CDaccount = textField.text;
    }else if (textField.tag == 99){
        self.CDpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)CDbackView{
    if (!_CDbackView) {
        _CDbackView = [[UIView alloc] init];
        _CDbackView.backgroundColor = CDH_Color(246, 246, 246, 1);
        _CDbackView.layer.cornerRadius = 8.0f;
        _CDbackView.layer.masksToBounds = YES;
        _CDbackView.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CDbackView.layer.borderWidth = 1.5f;
    }
    return _CDbackView;
}
- (UILabel *)CDCDaccountLable{
    if (!_CDCDaccountLable) {
        _CDCDaccountLable = [[UILabel alloc] init];
        _CDCDaccountLable.text = NSLocalizedString(@"账号", nil);
        _CDCDaccountLable.textColor = [UIColor systemGreenColor];
        _CDCDaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _CDCDaccountLable;
}
- (UITextField *)CDCDaccountTextField{
    if (!_CDCDaccountTextField) {
        _CDCDaccountTextField = [[UITextField alloc] init];
        _CDCDaccountTextField.tag = 98;
        _CDCDaccountTextField.delegate = self;
        _CDCDaccountTextField.textColor = [UIColor blackColor];
        _CDCDaccountTextField.font = [UIFont systemFontOfSize:15];
        _CDCDaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _CDCDaccountTextField;
}
- (UILabel *)CDCDpasswordLable{
    if (!_CDCDpasswordLable) {
        _CDCDpasswordLable = [[UILabel alloc] init];
        _CDCDpasswordLable.text = NSLocalizedString(@"密码", nil);
        _CDCDpasswordLable.textColor = [UIColor systemBlueColor];
        _CDCDpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _CDCDpasswordLable;
}
- (UITextField *)CDCDpasswordTextField{
    if (!_CDCDpasswordTextField) {
        _CDCDpasswordTextField = [[UITextField alloc] init];
        _CDCDpasswordTextField.tag = 99;
        _CDCDpasswordTextField.delegate = self;
        _CDCDpasswordTextField.textColor = [UIColor blackColor];
        _CDCDpasswordTextField.font = [UIFont systemFontOfSize:15];
        _CDCDpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _CDCDpasswordTextField.secureTextEntry = YES;
    }
    return _CDCDpasswordTextField;
}
- (UIButton *)CDloginButton{
    if (!_CDloginButton) {
        _CDloginButton = [[UIButton alloc] init];
        _CDloginButton.tag = 100;
        _CDloginButton.backgroundColor = [UIColor blueColor];
        [_CDloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_CDloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _CDloginButton.layer.cornerRadius = 6.0f;
        _CDloginButton.layer.masksToBounds = YES;
        [_CDloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_CDloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDloginButton;
}
- (UIButton *)CDregisteredButton{
    if (!_CDregisteredButton) {
        _CDregisteredButton = [[UIButton alloc] init];
        _CDregisteredButton.tag = 101;
        _CDregisteredButton.backgroundColor = [UIColor whiteColor];
        [_CDregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_CDregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _CDregisteredButton.layer.cornerRadius = 6.0f;
        _CDregisteredButton.layer.masksToBounds = YES;
        [_CDregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_CDregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDregisteredButton;
}
- (UIButton *)CDforgotPasswordButton{
    if (!_CDforgotPasswordButton) {
        _CDforgotPasswordButton = [[UIButton alloc] init];
        _CDforgotPasswordButton.tag = 102;
        _CDforgotPasswordButton.titleLabel.font = [UIFont systemFontOfSize:12];
        [_CDforgotPasswordButton setTitle:NSLocalizedString(@"忘记密码", nil) forState:UIControlStateNormal];
        [_CDforgotPasswordButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _CDforgotPasswordButton.backgroundColor = [UIColor clearColor];
        [_CDforgotPasswordButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDforgotPasswordButton;
}
@end
