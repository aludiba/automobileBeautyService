//
//  GFLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFLoginTableViewCell.h"
#import "GFTabBarController.h"
#import "GFLoginViewController.h"
#import "GFScorecardViewController.h"
@interface GFLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *GFbackView;
@property(nonatomic, strong)UILabel *GFaccountLable;
@property(nonatomic, strong)UITextField *GFaccountTextField;
@property(nonatomic, copy)NSString *GFaccount;
@property(nonatomic, strong)UILabel *GFpasswordLable;
@property(nonatomic, strong)UITextField *GFGFpasswordTextField;
@property(nonatomic, copy)NSString *GFpassword;
@property(nonatomic, strong)UIButton *GFloginButton;
@property(nonatomic, strong)UIButton *GFregisteredButton;
@end
@implementation GFLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GFsetContent];
    }
    return self;
}
- (void)GFsetContent{
    self.contentView.backgroundColor = GFH_Color(242, 242, 242, 242);
    [self.contentView addSubview:self.GFbackView];
    [self.GFbackView addSubview:self.GFaccountLable];
    [self.GFbackView addSubview:self.GFaccountTextField];
    [self.GFbackView addSubview:self.GFpasswordLable];
    [self.GFbackView addSubview:self.GFGFpasswordTextField];
    [self.GFbackView addSubview:self.GFloginButton];
    [self.GFbackView addSubview:self.GFregisteredButton];
    
    [self.GFbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(GFHeightNavBar);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(GFWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(GFHEIGHT - GFHeightNavBar - 343.5));
    }];
    [self.GFaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GFbackView).offset(40);
        make.leading.equalTo(self.GFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.GFaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GFaccountLable);
        make.leading.equalTo(self.GFaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.GFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.GFpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GFaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.GFbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.GFGFpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GFpasswordLable);
        make.leading.equalTo(self.GFpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.GFbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.GFloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GFbackView).offset(60);
        make.trailing.equalTo(self.GFbackView).offset(-60);
        make.top.equalTo(self.GFGFpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.GFregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GFbackView).offset(60);
        make.trailing.equalTo(self.GFbackView).offset(-60);
        make.top.equalTo(self.GFloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)GFbtnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.GFaccount.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.GFpassword.length) {
        [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.GFaccount password:self.GFpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"登录成功", nil)];
                if (self.type == 1) {
                    GFTabBarController *tabVC = [GFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                   [[GFScorecardViewController shareInstance] GFsaveAction];
                   GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
                   loginVC.type = 0;
                }else if (self.type == 2){
                    GFTabBarController *tabVC = [GFTabBarController shareInstance];
                    tabVC.selectedIndex = 1;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
                    loginVC.type = 0;
                }else{
                    GFTabBarController *tabVC = [GFTabBarController shareInstance];
                    tabVC.selectedIndex = 0;
                    [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                }
            }else{
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.GFaccount];
        [bUser setPassword:self.GFpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.GFaccount password:self.GFpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        if (self.type == 1) {
                        GFTabBarController *tabVC = [GFTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        [[GFScorecardViewController shareInstance] GFsaveAction];
                        GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
                        loginVC.type = 0;
                        }else if (self.type == 2){
                            GFTabBarController *tabVC = [GFTabBarController shareInstance];
                            tabVC.selectedIndex = 1;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                            GFLoginViewController *loginVC = [GFLoginViewController shareInstance];
                            loginVC.type = 0;
                        }else{
                            GFTabBarController *tabVC = [GFTabBarController shareInstance];
                            tabVC.selectedIndex = 0;
                            [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                        }
                    }else{
                        [MBProgressHUD GFshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.GFaccount = textField.text;
    }else if (textField.tag == 99){
        self.GFpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.GFaccount = textField.text;
    }else if (textField.tag == 99){
        self.GFpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)GFbackView{
    if (!_GFbackView) {
        _GFbackView = [[UIView alloc] init];
        _GFbackView.backgroundColor = [UIColor cyanColor];
        _GFbackView.layer.borderColor = [UIColor grayColor].CGColor;
        _GFbackView.layer.borderWidth = 1.0f;
        _GFbackView.layer.cornerRadius = 8.0f;
        _GFbackView.layer.masksToBounds = YES;
    }
    return _GFbackView;
}
- (UILabel *)GFaccountLable{
    if (!_GFaccountLable) {
        _GFaccountLable = [[UILabel alloc] init];
        _GFaccountLable.text = NSLocalizedString(@"账号", nil);
        _GFaccountLable.textColor = [UIColor blackColor];
        _GFaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _GFaccountLable;
}
- (UITextField *)GFaccountTextField{
    if (!_GFaccountTextField) {
        _GFaccountTextField = [[UITextField alloc] init];
        _GFaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFaccountTextField.tag = 98;
        _GFaccountTextField.delegate = self;
        _GFaccountTextField.textColor = [UIColor blackColor];
        _GFaccountTextField.font = [UIFont systemFontOfSize:15];
        _GFaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _GFaccountTextField;
}
- (UILabel *)GFpasswordLable{
    if (!_GFpasswordLable) {
        _GFpasswordLable = [[UILabel alloc] init];
        _GFpasswordLable.text = NSLocalizedString(@"密码", nil);
        _GFpasswordLable.textColor = [UIColor blackColor];
        _GFpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _GFpasswordLable;
}
- (UITextField *)GFGFpasswordTextField{
    if (!_GFGFpasswordTextField) {
        _GFGFpasswordTextField = [[UITextField alloc] init];
        _GFGFpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFGFpasswordTextField.tag = 99;
        _GFGFpasswordTextField.delegate = self;
        _GFGFpasswordTextField.textColor = [UIColor blackColor];
        _GFGFpasswordTextField.font = [UIFont systemFontOfSize:15];
        _GFGFpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _GFGFpasswordTextField.secureTextEntry = YES;
    }
    return _GFGFpasswordTextField;
}
- (UIButton *)GFloginButton{
    if (!_GFloginButton) {
        _GFloginButton = [[UIButton alloc] init];
        _GFloginButton.tag = 100;
        _GFloginButton.backgroundColor = [UIColor cyanColor];
        [_GFloginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GFloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _GFloginButton.layer.cornerRadius = 4.0f;
        _GFloginButton.layer.masksToBounds = YES;
        _GFloginButton.layer.borderColor = [UIColor grayColor].CGColor;
        _GFloginButton.layer.borderWidth = 1.0f;
        [_GFloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_GFloginButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GFloginButton;
}
- (UIButton *)GFregisteredButton{
    if (!_GFregisteredButton) {
        _GFregisteredButton = [[UIButton alloc] init];
        _GFregisteredButton.tag = 101;
        _GFregisteredButton.backgroundColor = [UIColor cyanColor];
        [_GFregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GFregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _GFregisteredButton.layer.cornerRadius = 4.0f;
        _GFregisteredButton.layer.masksToBounds = YES;
        _GFregisteredButton.layer.borderColor = [UIColor grayColor].CGColor;
        _GFregisteredButton.layer.borderWidth = 1.0f;
        [_GFregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_GFregisteredButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GFregisteredButton;
}
@end
