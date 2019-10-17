//
//  QSLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSLoginTableViewCell.h"
#import "QSTabBarController.h"
@interface QSLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *QSbackView;
@property(nonatomic, strong)UILabel *QSaccountLable;
@property(nonatomic, strong)UITextField *QSaccountTextField;
@property(nonatomic, copy)NSString *QSaccount;
@property(nonatomic, strong)UILabel *QSpasswordLable;
@property(nonatomic, strong)UITextField *QSQSpasswordTextField;
@property(nonatomic, copy)NSString *QSpassword;
@property(nonatomic, strong)UIButton *QSloginButton;
@property(nonatomic, strong)UIButton *QSregisteredButton;
@end
@implementation QSLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self QSsetContent];
    }
    return self;
}
- (void)QSsetContent{
    self.contentView.backgroundColor = QSH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.QSbackView];
    [self.QSbackView addSubview:self.QSaccountLable];
    [self.QSbackView addSubview:self.QSaccountTextField];
    [self.QSbackView addSubview:self.QSpasswordLable];
    [self.QSbackView addSubview:self.QSQSpasswordTextField];
    [self.QSbackView addSubview:self.QSloginButton];
    [self.QSbackView addSubview:self.QSregisteredButton];
    
    [self.QSbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(QSHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(QSWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(QSHEIGHT - QSHeightNavBar - 50 - 343.5));
    }];
    [self.QSaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.QSbackView).offset(40);
        make.leading.equalTo(self.QSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.QSaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.QSaccountLable);
        make.leading.equalTo(self.QSaccountLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.QSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.QSpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.QSaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.QSbackView).offset(31.5);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(21);
    }];
    [self.QSQSpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.QSpasswordLable);
        make.leading.equalTo(self.QSpasswordLable.mas_trailing).offset(10);
        make.trailing.equalTo(self.QSbackView).offset(-10);
        make.height.mas_equalTo(21);
    }];
    [self.QSloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.QSbackView).offset(26.5);
        make.trailing.equalTo(self.QSbackView).offset(-26.5);
        make.top.equalTo(self.QSQSpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.QSregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.QSbackView).offset(26.5);
        make.trailing.equalTo(self.QSbackView).offset(-26.5);
        make.top.equalTo(self.QSloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.QSaccount.length) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.QSpassword.length) {
        [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.QSaccount password:self.QSpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"登录成功", nil)];
                QSTabBarController *tabVC = [QSTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.QSaccount];
        [bUser setPassword:self.QSpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.QSaccount password:self.QSpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        QSTabBarController *tabVC = [QSTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD QSshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.QSaccount = textField.text;
    }else if (textField.tag == 99){
        self.QSpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.QSaccount = textField.text;
    }else if (textField.tag == 99){
        self.QSpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)QSbackView{
    if (!_QSbackView) {
        _QSbackView = [[UIView alloc] init];
        _QSbackView.backgroundColor = QSH_Color(236, 236, 236, 1);
        _QSbackView.layer.cornerRadius = 5.0f;
        _QSbackView.layer.masksToBounds = YES;
    }
    return _QSbackView;
}
- (UILabel *)QSaccountLable{
    if (!_QSaccountLable) {
        _QSaccountLable = [[UILabel alloc] init];
        _QSaccountLable.text = NSLocalizedString(@"账号", nil);
        _QSaccountLable.textColor = [UIColor grayColor];
        _QSaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _QSaccountLable;
}
- (UITextField *)QSaccountTextField{
    if (!_QSaccountTextField) {
        _QSaccountTextField = [[UITextField alloc] init];
        _QSaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSaccountTextField.tag = 98;
        _QSaccountTextField.delegate = self;
        _QSaccountTextField.textColor = [UIColor blackColor];
        _QSaccountTextField.font = [UIFont systemFontOfSize:15];
        _QSaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _QSaccountTextField;
}
- (UILabel *)QSpasswordLable{
    if (!_QSpasswordLable) {
        _QSpasswordLable = [[UILabel alloc] init];
        _QSpasswordLable.text = NSLocalizedString(@"密码", nil);
        _QSpasswordLable.textColor = [UIColor grayColor];
        _QSpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _QSpasswordLable;
}
- (UITextField *)QSQSpasswordTextField{
    if (!_QSQSpasswordTextField) {
        _QSQSpasswordTextField = [[UITextField alloc] init];
        _QSQSpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSQSpasswordTextField.tag = 99;
        _QSQSpasswordTextField.delegate = self;
        _QSQSpasswordTextField.textColor = [UIColor blackColor];
        _QSQSpasswordTextField.font = [UIFont systemFontOfSize:15];
        _QSQSpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _QSQSpasswordTextField.secureTextEntry = YES;
    }
    return _QSQSpasswordTextField;
}
- (UIButton *)QSloginButton{
    if (!_QSloginButton) {
        _QSloginButton = [[UIButton alloc] init];
        _QSloginButton.tag = 100;
        _QSloginButton.backgroundColor = [UIColor purpleColor];
        [_QSloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_QSloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _QSloginButton.layer.cornerRadius = 4.0f;
        _QSloginButton.layer.masksToBounds = YES;
        [_QSloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_QSloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QSloginButton;
}
- (UIButton *)QSregisteredButton{
    if (!_QSregisteredButton) {
        _QSregisteredButton = [[UIButton alloc] init];
        _QSregisteredButton.tag = 101;
        _QSregisteredButton.backgroundColor = [UIColor redColor];
        [_QSregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_QSregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _QSregisteredButton.layer.cornerRadius = 4.0f;
        _QSregisteredButton.layer.masksToBounds = YES;
        [_QSregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_QSregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QSregisteredButton;
}
@end
