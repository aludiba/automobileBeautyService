//
//  WALoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WALoginTableViewCell.h"
#import "WATabBarController.h"
@interface WALoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *WAbackView;
@property(nonatomic, strong)UILabel *WAaccountLable;
@property(nonatomic, strong)UITextField *WAaccountTextField;
@property(nonatomic, copy)NSString *WAaccount;
@property(nonatomic, strong)UILabel *WApasswordLable;
@property(nonatomic, strong)UITextField *WAWApasswordTextField;
@property(nonatomic, copy)NSString *WApassword;
@property(nonatomic, strong)UIButton *WAloginButton;
@property(nonatomic, strong)UIButton *WAregisteredButton;
@end
@implementation WALoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self WAsetContent];
    }
    return self;
}
- (void)WAsetContent{
    self.contentView.backgroundColor = WAH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.WAbackView];
    [self.WAbackView addSubview:self.WAaccountLable];
    [self.WAbackView addSubview:self.WAaccountTextField];
    [self.WAbackView addSubview:self.WApasswordLable];
    [self.WAbackView addSubview:self.WAWApasswordTextField];
    [self.WAbackView addSubview:self.WAloginButton];
    [self.WAbackView addSubview:self.WAregisteredButton];
    
    [self.WAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(WAHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(WAWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(WAHEIGHT - WAHeightNavBar - 50 - 343.5));
    }];
    [self.WAaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WAbackView).offset(40);
        make.leading.equalTo(self.WAbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.WAaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WAaccountLable);
        make.leading.equalTo(self.WAaccountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.WAbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line = [[UIView alloc] init];
//    line.backgroundColor = [UIColor grayColor];
//    [self.WAbackView addSubview:line];
//    [line mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.WAbackView).offset(25);
//        make.trailing.equalTo(self.WAbackView).offset(-25);
//        make.top.equalTo(self.WAaccountTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.WApasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WAaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.WAbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.WAWApasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WApasswordLable);
        make.leading.equalTo(self.WApasswordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.WAbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line1 = [[UIView alloc] init];
//    line1.backgroundColor = [UIColor grayColor];
//    [self.WAbackView addSubview:line1];
//    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.WAbackView).offset(25);
//        make.trailing.equalTo(self.WAbackView).offset(-25);
//        make.top.equalTo(self.WAWApasswordTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.WAloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.WAbackView).offset(26.5);
        make.trailing.equalTo(self.WAbackView).offset(-26.5);
        make.top.equalTo(self.WAWApasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.WAregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.WAbackView).offset(26.5);
        make.trailing.equalTo(self.WAbackView).offset(-26.5);
        make.top.equalTo(self.WAloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.WAaccount.length) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.WApassword.length) {
        [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.WAaccount password:self.WApassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"登录成功", nil)];
                WATabBarController *tabVC = [WATabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.WAaccount];
        [bUser setPassword:self.WApassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.WAaccount password:self.WApassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        WATabBarController *tabVC = [WATabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD WAshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.WAaccount = textField.text;
    }else if (textField.tag == 99){
        self.WApassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.WAaccount = textField.text;
    }else if (textField.tag == 99){
        self.WApassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)WAbackView{
    if (!_WAbackView) {
        _WAbackView = [[UIView alloc] init];
        _WAbackView.backgroundColor = WAH_Color(236, 236, 236, 1);
        _WAbackView.layer.cornerRadius = 5.0f;
        _WAbackView.layer.masksToBounds = YES;
//        _WAbackView.layer.borderColor = [UIColor grayColor].CGColor;
//        _WAbackView.layer.borderWidth = 1.0f;
    }
    return _WAbackView;
}
- (UILabel *)WAaccountLable{
    if (!_WAaccountLable) {
        _WAaccountLable = [[UILabel alloc] init];
        _WAaccountLable.text = NSLocalizedString(@"账号", nil);
        _WAaccountLable.textColor = [UIColor grayColor];
        _WAaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _WAaccountLable;
}
- (UITextField *)WAaccountTextField{
    if (!_WAaccountTextField) {
        _WAaccountTextField = [[UITextField alloc] init];
        _WAaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAaccountTextField.tag = 98;
        _WAaccountTextField.delegate = self;
        _WAaccountTextField.textColor = [UIColor blackColor];
        _WAaccountTextField.font = [UIFont systemFontOfSize:15];
        _WAaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _WAaccountTextField;
}
- (UILabel *)WApasswordLable{
    if (!_WApasswordLable) {
        _WApasswordLable = [[UILabel alloc] init];
        _WApasswordLable.text = NSLocalizedString(@"密码", nil);
        _WApasswordLable.textColor = [UIColor grayColor];
        _WApasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _WApasswordLable;
}
- (UITextField *)WAWApasswordTextField{
    if (!_WAWApasswordTextField) {
        _WAWApasswordTextField = [[UITextField alloc] init];
        _WAWApasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAWApasswordTextField.tag = 99;
        _WAWApasswordTextField.delegate = self;
        _WAWApasswordTextField.textColor = [UIColor blackColor];
        _WAWApasswordTextField.font = [UIFont systemFontOfSize:15];
        _WAWApasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _WAWApasswordTextField.secureTextEntry = YES;
    }
    return _WAWApasswordTextField;
}
- (UIButton *)WAloginButton{
    if (!_WAloginButton) {
        _WAloginButton = [[UIButton alloc] init];
        _WAloginButton.tag = 100;
        _WAloginButton.backgroundColor = [UIColor purpleColor];
        [_WAloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_WAloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _WAloginButton.layer.cornerRadius = 4.0f;
        _WAloginButton.layer.masksToBounds = YES;
        [_WAloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_WAloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WAloginButton;
}
- (UIButton *)WAregisteredButton{
    if (!_WAregisteredButton) {
        _WAregisteredButton = [[UIButton alloc] init];
        _WAregisteredButton.tag = 101;
        _WAregisteredButton.backgroundColor = [UIColor redColor];
        [_WAregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_WAregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _WAregisteredButton.layer.cornerRadius = 4.0f;
        _WAregisteredButton.layer.masksToBounds = YES;
        [_WAregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_WAregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WAregisteredButton;
}
@end
