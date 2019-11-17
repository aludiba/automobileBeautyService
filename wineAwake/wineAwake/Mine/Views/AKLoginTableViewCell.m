//
//  AKLoginTableViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/28.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKLoginTableViewCell.h"
#import "AKTabBarController.h"
@interface AKLoginTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AKbackView;
@property(nonatomic, strong)UILabel *AKaccountLable;
@property(nonatomic, strong)UITextField *AKaccountTextField;
@property(nonatomic, copy)NSString *AKaccount;
@property(nonatomic, strong)UILabel *AKpasswordLable;
@property(nonatomic, strong)UITextField *AKAKpasswordTextField;
@property(nonatomic, copy)NSString *AKpassword;
@property(nonatomic, strong)UIButton *AKloginButton;
@property(nonatomic, strong)UIButton *AKregisteredButton;
@end
@implementation AKLoginTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AKsetContent];
    }
    return self;
}
- (void)AKsetContent{
    self.contentView.backgroundColor = AKH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.AKbackView];
    [self.AKbackView addSubview:self.AKaccountLable];
    [self.AKbackView addSubview:self.AKaccountTextField];
    [self.AKbackView addSubview:self.AKpasswordLable];
    [self.AKbackView addSubview:self.AKAKpasswordTextField];
    [self.AKbackView addSubview:self.AKloginButton];
    [self.AKbackView addSubview:self.AKregisteredButton];
    
    [self.AKbackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView).offset(AKHeightNavBar + 50);
        make.centerX.equalTo(self.contentView);
        make.width.mas_equalTo(AKWIDTH - 60);
        make.height.mas_equalTo(343.5);
        make.bottom.equalTo(self.contentView).offset(-(AKHEIGHT - AKHeightNavBar - 50 - 343.5));
    }];
    [self.AKaccountLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AKbackView).offset(40);
        make.leading.equalTo(self.AKbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.AKaccountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AKaccountLable);
        make.leading.equalTo(self.AKaccountLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.AKbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line = [[UIView alloc] init];
//    line.backgroundColor = [UIColor grayColor];
//    [self.AKbackView addSubview:line];
//    [line mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.AKbackView).offset(25);
//        make.trailing.equalTo(self.AKbackView).offset(-25);
//        make.top.equalTo(self.AKaccountTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.AKpasswordLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AKaccountTextField.mas_bottom).offset(24);
        make.leading.equalTo(self.AKbackView).offset(31.5);
        make.width.mas_equalTo(70);
        make.height.mas_equalTo(21);
    }];
    [self.AKAKpasswordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AKpasswordLable);
        make.leading.equalTo(self.AKpasswordLable.mas_trailing).offset(20);
        make.trailing.equalTo(self.AKbackView).offset(-30);
        make.height.mas_equalTo(21);
    }];
//    UIView *line1 = [[UIView alloc] init];
//    line1.backgroundColor = [UIColor grayColor];
//    [self.AKbackView addSubview:line1];
//    [line1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.AKbackView).offset(25);
//        make.trailing.equalTo(self.AKbackView).offset(-25);
//        make.top.equalTo(self.AKAKpasswordTextField.mas_bottom).offset(10);
//        make.height.mas_equalTo(0.5);
//    }];
    [self.AKloginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AKbackView).offset(26.5);
        make.trailing.equalTo(self.AKbackView).offset(-26.5);
        make.top.equalTo(self.AKAKpasswordTextField.mas_bottom).offset(45);
        make.height.mas_equalTo(44);
    }];
    [self.AKregisteredButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.AKbackView).offset(26.5);
        make.trailing.equalTo(self.AKbackView).offset(-26.5);
        make.top.equalTo(self.AKloginButton.mas_bottom).offset(20);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.contentView endEditing:YES];
    if (!self.AKaccount.length) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请输入账号", nil)];
        return;
    }
    if (!self.AKpassword.length) {
        [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请输入密码", nil)];
        return;
    }
    if (sender.tag == 100) {
        [BmobUser loginWithUsernameInBackground:self.AKaccount password:self.AKpassword block:^(BmobUser *user, NSError *error) {
            if (user) {
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"登录成功", nil)];
                AKTabBarController *tabVC = [AKTabBarController shareInstance];
                tabVC.selectedIndex = 0;
                [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
            }else{
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }else if(sender.tag == 101){
        BmobUser *bUser = [[BmobUser alloc] init];
        [bUser setUsername:self.AKaccount];
        [bUser setPassword:self.AKpassword];
        [bUser signUpInBackgroundWithBlock:^ (BOOL isSuccessful, NSError *error){
            if (isSuccessful){
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"注册成功", nil)];
                [BmobUser loginWithUsernameInBackground:self.AKaccount password:self.AKpassword block:^(BmobUser *user, NSError *error) {
                    if (user) {
                        AKTabBarController *tabVC = [AKTabBarController shareInstance];
                        tabVC.selectedIndex = 0;
                        [[UIApplication sharedApplication].delegate window].rootViewController = tabVC;
                    }else{
                        [MBProgressHUD AKshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
                    }
                }];
            } else {
                [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
            }
        }];
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if (textField.tag == 98) {
        self.AKaccount = textField.text;
    }else if (textField.tag == 99){
        self.AKpassword = textField.text;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (textField.tag == 98) {
        self.AKaccount = textField.text;
    }else if (textField.tag == 99){
        self.AKpassword = textField.text;
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.contentView endEditing:YES];
}
#pragma mark - 属性懒加载
- (UIView *)AKbackView{
    if (!_AKbackView) {
        _AKbackView = [[UIView alloc] init];
        _AKbackView.backgroundColor = AKH_Color(236, 236, 236, 1);
        _AKbackView.layer.cornerRadius = 5.0f;
        _AKbackView.layer.masksToBounds = YES;
//        _AKbackView.layer.borderColor = [UIColor grayColor].CGColor;
//        _AKbackView.layer.borderWidth = 1.0f;
    }
    return _AKbackView;
}
- (UILabel *)AKaccountLable{
    if (!_AKaccountLable) {
        _AKaccountLable = [[UILabel alloc] init];
        _AKaccountLable.text = NSLocalizedString(@"账号", nil);
        _AKaccountLable.textColor = [UIColor grayColor];
        _AKaccountLable.font = [UIFont systemFontOfSize:15];
    }
    return _AKaccountLable;
}
- (UITextField *)AKaccountTextField{
    if (!_AKaccountTextField) {
        _AKaccountTextField = [[UITextField alloc] init];
        _AKaccountTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKaccountTextField.tag = 98;
        _AKaccountTextField.delegate = self;
        _AKaccountTextField.textColor = [UIColor blackColor];
        _AKaccountTextField.font = [UIFont systemFontOfSize:15];
        _AKaccountTextField.placeholder = NSLocalizedString(@"请输入账号", nil);
    }
    return _AKaccountTextField;
}
- (UILabel *)AKpasswordLable{
    if (!_AKpasswordLable) {
        _AKpasswordLable = [[UILabel alloc] init];
        _AKpasswordLable.text = NSLocalizedString(@"密码", nil);
        _AKpasswordLable.textColor = [UIColor grayColor];
        _AKpasswordLable.font = [UIFont systemFontOfSize:15];
    }
    return _AKpasswordLable;
}
- (UITextField *)AKAKpasswordTextField{
    if (!_AKAKpasswordTextField) {
        _AKAKpasswordTextField = [[UITextField alloc] init];
        _AKAKpasswordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKAKpasswordTextField.tag = 99;
        _AKAKpasswordTextField.delegate = self;
        _AKAKpasswordTextField.textColor = [UIColor blackColor];
        _AKAKpasswordTextField.font = [UIFont systemFontOfSize:15];
        _AKAKpasswordTextField.placeholder = NSLocalizedString(@"请输入密码", nil);
        _AKAKpasswordTextField.secureTextEntry = YES;
    }
    return _AKAKpasswordTextField;
}
- (UIButton *)AKloginButton{
    if (!_AKloginButton) {
        _AKloginButton = [[UIButton alloc] init];
        _AKloginButton.tag = 100;
        _AKloginButton.backgroundColor = [UIColor purpleColor];
        [_AKloginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_AKloginButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _AKloginButton.layer.cornerRadius = 4.0f;
        _AKloginButton.layer.masksToBounds = YES;
        [_AKloginButton setTitle:NSLocalizedString(@"登录", nil) forState:UIControlStateNormal];
        [_AKloginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AKloginButton;
}
- (UIButton *)AKregisteredButton{
    if (!_AKregisteredButton) {
        _AKregisteredButton = [[UIButton alloc] init];
        _AKregisteredButton.tag = 101;
        _AKregisteredButton.backgroundColor = [UIColor redColor];
        [_AKregisteredButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AKregisteredButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _AKregisteredButton.layer.cornerRadius = 4.0f;
        _AKregisteredButton.layer.masksToBounds = YES;
        [_AKregisteredButton setTitle:NSLocalizedString(@"注册", nil) forState:UIControlStateNormal];
        [_AKregisteredButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AKregisteredButton;
}
@end
