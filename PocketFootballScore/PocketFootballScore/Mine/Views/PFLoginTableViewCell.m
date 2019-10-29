//
//  PFLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFLoginTableViewCell.h"
#import "PFTabBarController.h"
#import "PFLoginViewController.h"
#import "PFScorecardViewController.h"
@interface PFLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PFbackView;
@property(nonatomic, strong)UILabel *PFaccountLable;
@property(nonatomic, strong)UITextField *PFaccountTextField;
@property(nonatomic, copy)NSString *PFaccount;
@property(nonatomic, strong)UILabel *PFpasswordLable;
@property(nonatomic, strong)UITextField *PFPFpasswordTextField;
@property(nonatomic, copy)NSString *PFpassword;
@property(nonatomic, strong)UIButton *PFloginButton;
@property(nonatomic, strong)UIButton *PFregisteredButton;
@end
@implementation PFLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PFsetContent];
    }
    return self;
}
- (void)PFsetContent{
    self.contentView.backgroundColor = PFH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.PFbackView];
    [self.PFbackView addSubview:self.PFaccountLable];
    [self.PFbackView addSubview:self.PFaccountTextField];
    [self.PFbackView addSubview:self.PFpasswordLable];
    [self.PFbackView addSubview:self.PFPFpasswordTextField];
    [self.PFbackView addSubview:self.PFloginButton];
    [self.PFbackView addSubview:self.PFregisteredButton];
    
    [self.PFbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(PFHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(PFWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(PFHEIGHT - PFHeightNavBar - 343.5));
    }];
    [self.PFaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PFbackView).offset(40);
        make.leading.equalTo(self.PFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PFaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PFaccountLable);
        make.leading.equalTo(self.PFaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PFpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PFaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.PFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.PFPFpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PFpasswordLable);
        make.leading.equalTo(self.PFpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.PFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.PFloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PFbackView).offset(60);
        make.trailing.equalTo(self.PFbackView).offset(-60);
        make.top.equalTo(self.PFPFpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.PFregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PFbackView).offset(60);
        make.trailing.equalTo(self.PFbackView).offset(-60);
        make.top.equalTo(self.PFloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PFbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.PFaccount.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.PFpassword.length) {
        [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.PFaccount password:self.PFpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    PFTabBarController *tabVC = [PFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[PFScorecardViewController shareInstance] PFsaveAction];
                   PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    PFTabBarController *tabVC = [PFTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    PFTabBarController *tabVC = [PFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.PFaccount];
        [bUser setPassword:self.PFpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.PFaccount password:self.PFpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        PFTabBarController *tabVC = [PFTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[PFScorecardViewController shareInstance] PFsaveAction];
                        PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            PFTabBarController *tabVC = [PFTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            PFLoginViewController *loginVC = [PFLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            PFTabBarController *tabVC = [PFTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD PFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.PFaccount = textField.text;
    }else if (textField.tag == 99){
        self.PFpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.PFaccount = textField.text;
    }else if (textField.tag == 99){
        self.PFpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)PFbackView{
    if (!_PFbackView) {
        _PFbackView = [[UIView alloc] init];
        _PFbackView.backgroundColor = [UIColor cyanColor];
        _PFbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _PFbackView.layer.borderWidth = 1.0f;
        _PFbackView.layer.cornerRadius = 8.0f;
        _PFbackView.layer.masksToBounds = YES;
    }
    return _PFbackView;
}
- (UILabel *)PFaccountLable{
    if (!_PFaccountLable) {
        _PFaccountLable = [[UILabel alloc] init];
        _PFaccountLable.text = NSLocalizedString(@"账号", nil);
        _PFaccountLable.textColor = [UIColor blackColor];
        _PFaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _PFaccountLable;
}
- (UITextField *)PFaccountTextField{
    if (!_PFaccountTextField) {
        _PFaccountTextField = [[UITextField alloc] init];
        _PFaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFaccountTextField.tag = 98;
        _PFaccountTextField.delegate = self;
        _PFaccountTextField.textColor = [UIColor blackColor];
        _PFaccountTextField.font = [UIFont systemFontOfSize:15];
        _PFaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _PFaccountTextField;
}
- (UILabel *)PFpasswordLable{
    if (!_PFpasswordLable) {
        _PFpasswordLable = [[UILabel alloc] init];
        _PFpasswordLable.text = NSLocalizedString(@"密码", nil);
        _PFpasswordLable.textColor = [UIColor blackColor];
        _PFpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _PFpasswordLable;
}
- (UITextField *)PFPFpasswordTextField{
    if (!_PFPFpasswordTextField) {
        _PFPFpasswordTextField = [[UITextField alloc] init];
        _PFPFpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFPFpasswordTextField.tag = 99;
        _PFPFpasswordTextField.delegate = self;
        _PFPFpasswordTextField.textColor = [UIColor blackColor];
        _PFPFpasswordTextField.font = [UIFont systemFontOfSize:15];
        _PFPFpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _PFPFpasswordTextField.secureTextEntry = YES;
    }
    return _PFPFpasswordTextField;
}
- (UIButton *)PFloginButton{
    if (!_PFloginButton) {
        _PFloginButton = [[UIButton alloc] init];
        _PFloginButton.tag = 100;
        _PFloginButton.backgroundColor = [UIColor cyanColor];
        [_PFloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PFloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PFloginButton.layer.cornerRadius = 4.0f;
        _PFloginButton.layer.masksToBounds = YES;
        _PFloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PFloginButton.layer.borderWidth = 1.0f;
        [_PFloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_PFloginButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PFloginButton;
}
- (UIButton *)PFregisteredButton{
    if (!_PFregisteredButton) {
        _PFregisteredButton = [[UIButton alloc] init];
        _PFregisteredButton.tag = 101;
        _PFregisteredButton.backgroundColor = [UIColor cyanColor];
        [_PFregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PFregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PFregisteredButton.layer.cornerRadius = 4.0f;
        _PFregisteredButton.layer.masksToBounds = YES;
        _PFregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PFregisteredButton.layer.borderWidth = 1.0f;
        [_PFregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_PFregisteredButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PFregisteredButton;
}
@end
