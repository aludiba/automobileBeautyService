//
//  ABMineTableViewCell.m
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import "ABMineTableViewCell.h"
#import "ABPasswordChangeViewController.h"
#import "ABLoginViewController.h"
#import "ABMineViewController.h"

@interface ABMineTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ABBackView;//背景颜色
@property(nonatomic, strong)UIImageView *ABImageView;//头像
@property(nonatomic, copy)NSString *ABnickname;
@property(nonatomic, strong)UILabel *ABNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *ABNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean ABIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *ABNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *ABChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *ABSignOutButton;//登录或者退出
@end
@implementation ABMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemGreenColor];
        [self ABSetContentView];
    }
    return self;
}
- (void)ABSetContentView{
    [self.contentView addSubview:self.ABBackView];
    [self.ABBackView addSubview:self.ABImageView];
    [self.ABBackView addSubview:self.ABNickNameLabel];
    [self.ABBackView addSubview:self.ABNicknameTextField];
    [self.ABBackView addSubview:self.ABNicknameButton];
    [self.contentView addSubview:self.ABChangePasswordButton];
    [self.contentView addSubview:self.ABSignOutButton];
    
    [self.ABBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(ABHEIGHT / 3);
    }];
    [self.ABImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABBackView);
        make.top.equalTo(self.ABBackView).offset(45);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.ABNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ABBackView);
        make.top.equalTo(self.ABImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.ABNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.ABBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.ABNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ABNicknameTextField);
        make.leading.equalTo(self.ABNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.ABChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABBackView.mas_bottom).offset(30);
        make.leading.equalTo(self.contentView).offset(64);
        make.width.mas_equalTo(ABWIDTH - 128);
        make.height.mas_equalTo(60);
    }];
    [self.ABSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ABChangePasswordButton.mas_bottom).offset(30);
        make.leading.equalTo(self.contentView).offset(64);
        make.width.mas_equalTo(ABWIDTH - 128);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.contentView addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.ABNicknameTextField resignFirstResponder];
    self.ABIsEdit = NO;
  self.ABNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)ABNicknameButtonAction:(UIButton *)sender{
    self.ABIsEdit = !self.ABIsEdit;
    if (self.ABIsEdit) {
        self.ABNicknameTextField.userInteractionEnabled = YES;
        [self.ABNicknameTextField becomeFirstResponder];
    }else{
        self.ABNicknameTextField.userInteractionEnabled = NO;
        [self.ABNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)ABChangePasswordAction:(UIButton *)sender{
    ABPasswordChangeViewController *pacVC = [[ABPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.ABSuperVC.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)ABSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [AVUser logOut];
    ABLoginViewController *loginVC = [ABLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    ABKeyWindow.rootViewController = loginVCNav;
}
- (void)ABNicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.ABnickname forKey:@"username"];
    NSString *password;
    if ([[bUser objectForKey:@"password"] length]) {
        password = [bUser objectForKey:@"password"];
    }
    [bUser setObject:password forKey:@"password"];
    [bUser saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded) {
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD ABshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
#pragma mark - 属性懒加载
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (self.ABnickname.length && ![self.ABnickname isEqualToString:textField.text]) {
        self.ABnickname = textField.text;
        [self ABNicknameUpdate];
    }
    self.ABIsEdit = NO;
    self.ABNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)ABBackView{
    if (!_ABBackView) {
        _ABBackView = [[UIView alloc] init];
        _ABBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _ABBackView;
}
- (UIImageView *)ABImageView{
    if (!_ABImageView) {
        _ABImageView = [[UIImageView alloc] init];
        _ABImageView.image = [UIImage imageNamed:@"AB_mine_football"];
        _ABImageView.layer.masksToBounds = YES;
        _ABImageView.layer.cornerRadius = 50.0f;
    }
    return _ABImageView;
}
- (UILabel *)ABNickNameLabel{
    if (!_ABNickNameLabel) {
        _ABNickNameLabel = [[UILabel alloc] init];
        _ABNickNameLabel.textColor = [UIColor darkGrayColor];
        _ABNickNameLabel.font = [UIFont systemFontOfSize:18];
        _ABNickNameLabel.numberOfLines = 0;
        _ABNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _ABNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _ABNickNameLabel;
}
- (UITextField *)ABNicknameTextField{
    if (!_ABNicknameTextField) {
        _ABNicknameTextField = [[UITextField alloc] init];
        _ABNicknameTextField.delegate = self;
        _ABNicknameTextField.textColor = [UIColor systemPurpleColor];
        _ABNicknameTextField.font = [UIFont systemFontOfSize:22];
        _ABNicknameTextField.backgroundColor = [UIColor cyanColor];
        _ABNicknameTextField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _ABNicknameTextField.layer.borderWidth = 1.0f;
        _ABNicknameTextField.layer.cornerRadius = 4.0f;
        _ABNicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _ABNicknameTextField.text = [NSString stringWithFormat:@"   %@",[user objectForKey:@"username"]];
            self.ABnickname = [user objectForKey:@"username"];
        }
    _ABNicknameTextField.userInteractionEnabled = NO;
    }
    return _ABNicknameTextField;
}
- (UIButton *)ABNicknameButton{
    if (!_ABNicknameButton) {
        _ABNicknameButton = [[UIButton alloc] init];
        [_ABNicknameButton setImage:[UIImage imageNamed:@"AB_btc_edit"] forState:UIControlStateNormal];
        [_ABNicknameButton addTarget:self action:@selector(ABNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABNicknameButton;
}
- (UIButton *)ABChangePasswordButton{
    if (!_ABChangePasswordButton) {
        _ABChangePasswordButton = [[UIButton alloc] init];
        [_ABChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_ABChangePasswordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _ABChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ABChangePasswordButton.titleLabel.numberOfLines = 0;
        _ABChangePasswordButton.backgroundColor = [UIColor systemPurpleColor];
        _ABChangePasswordButton.layer.masksToBounds = YES;
        _ABChangePasswordButton.layer.cornerRadius = 12.0f;
        [_ABChangePasswordButton addTarget:self action:@selector(ABChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABChangePasswordButton;
}
- (UIButton *)ABSignOutButton{
    if (!_ABSignOutButton) {
        _ABSignOutButton = [[UIButton alloc] init];
        [_ABSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_ABSignOutButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _ABSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ABSignOutButton.titleLabel.numberOfLines = 0;
        _ABSignOutButton.backgroundColor = [UIColor systemPurpleColor];
        _ABSignOutButton.layer.masksToBounds = YES;
        _ABSignOutButton.layer.cornerRadius = 12.0f;
        [_ABSignOutButton addTarget:self action:@selector(ABSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ABSignOutButton;
}
@end
