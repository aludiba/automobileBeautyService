//
//  CAMineTableViewCell.m
//  PocketVolleyballScout
//
//  Created by bykj on 2020/3/4.
//  Copyright © 2020 com. All rights reserved.
//

#import "CAMineTableViewCell.h"
#import "CAPasswordChangeViewController.h"
#import "CALoginViewController.h"
#import "CAMineViewController.h"

@interface CAMineTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CABackView;//背景颜色
@property(nonatomic, strong)UIImageView *CAImageView;//头像
@property(nonatomic, copy)NSString *CAnickname;
@property(nonatomic, strong)UILabel *CANickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *CANicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean CAIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *CANicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *CAChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *CASignOutButton;//登录或者退出
@end
@implementation CAMineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor greenColor];
        [self CASetContentView];
    }
    return self;
}
- (void)CASetContentView{
    [self.contentView addSubview:self.CABackView];
    [self.CABackView addSubview:self.CAImageView];
    [self.CABackView addSubview:self.CANickNameLabel];
    [self.CABackView addSubview:self.CANicknameTextField];
    [self.CABackView addSubview:self.CANicknameButton];
    [self.contentView addSubview:self.CAChangePasswordButton];
    [self.contentView addSubview:self.CASignOutButton];
    
    [self.CABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView);
        make.leading.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(CAHEIGHT / 3);
    }];
    [self.CAImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CABackView);
        make.top.equalTo(self.CABackView).offset(45);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.CANickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CABackView);
        make.top.equalTo(self.CAImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.CANicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CANickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.CABackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.CANicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CANicknameTextField);
        make.leading.equalTo(self.CANicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.CAChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CABackView.mas_bottom).offset(50);
        make.leading.equalTo(self.contentView).offset(64);
        make.width.mas_equalTo(CAWIDTH - 108);
        make.height.mas_equalTo(60);
    }];
    [self.CASignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CAChangePasswordButton.mas_bottom).offset(60);
        make.leading.equalTo(self.contentView).offset(64);
        make.width.mas_equalTo(CAWIDTH - 108);
        make.height.mas_equalTo(60);
        make.bottom.equalTo(self.contentView);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.contentView addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.CANicknameTextField resignFirstResponder];
    self.CAIsEdit = NO;
  self.CANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)CANicknameButtonAction:(UIButton *)sender{
    self.CAIsEdit = !self.CAIsEdit;
    if (self.CAIsEdit) {
        self.CANicknameTextField.userInteractionEnabled = YES;
        [self.CANicknameTextField becomeFirstResponder];
    }else{
        self.CANicknameTextField.userInteractionEnabled = NO;
        [self.CANicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)CAChangePasswordAction:(UIButton *)sender{
    CAPasswordChangeViewController *pacVC = [[CAPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.CASuperVC.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)CASignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [AVUser logOut];
    CALoginViewController *loginVC = [CALoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    CAKeyWindow.rootViewController = loginVCNav;
}
- (void)CANicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.CAnickname forKey:@"username"];
    NSString *password;
    if ([[bUser objectForKey:@"password"] length]) {
        password = [bUser objectForKey:@"password"];
    }
    [bUser setObject:password forKey:@"password"];
    [bUser saveInBackgroundWithBlock:^(BOOL succeeded, NSError * _Nullable error) {
        if (succeeded) {
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD CAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.CAnickname.length && ![self.CAnickname isEqualToString:textField.text]) {
        self.CAnickname = textField.text;
        [self CANicknameUpdate];
    }
    self.CAIsEdit = NO;
    self.CANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)CABackView{
    if (!_CABackView) {
        _CABackView = [[UIView alloc] init];
        _CABackView.backgroundColor = [UIColor greenColor];
    }
    return _CABackView;
}
- (UIImageView *)CAImageView{
    if (!_CAImageView) {
        _CAImageView = [[UIImageView alloc] init];
        _CAImageView.image = [UIImage imageNamed:@"CA_mine_football"];
        _CAImageView.layer.masksToBounds = YES;
        _CAImageView.layer.cornerRadius = 50.0f;
    }
    return _CAImageView;
}
- (UILabel *)CANickNameLabel{
    if (!_CANickNameLabel) {
        _CANickNameLabel = [[UILabel alloc] init];
        _CANickNameLabel.textColor = [UIColor darkGrayColor];
        _CANickNameLabel.font = [UIFont systemFontOfSize:18];
        _CANickNameLabel.numberOfLines = 0;
        _CANickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _CANickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _CANickNameLabel;
}
- (UITextField *)CANicknameTextField{
    if (!_CANicknameTextField) {
        _CANicknameTextField = [[UITextField alloc] init];
        _CANicknameTextField.delegate = self;
        _CANicknameTextField.textColor = [UIColor systemPurpleColor];
        _CANicknameTextField.font = [UIFont systemFontOfSize:22];
        _CANicknameTextField.backgroundColor = [UIColor cyanColor];
        _CANicknameTextField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CANicknameTextField.layer.borderWidth = 1.0f;
        _CANicknameTextField.layer.cornerRadius = 4.0f;
        _CANicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _CANicknameTextField.text = [NSString stringWithFormat:@"   %@",[user objectForKey:@"username"]];
            self.CAnickname = [user objectForKey:@"username"];
        }
    _CANicknameTextField.userInteractionEnabled = NO;
    }
    return _CANicknameTextField;
}
- (UIButton *)CANicknameButton{
    if (!_CANicknameButton) {
        _CANicknameButton = [[UIButton alloc] init];
        [_CANicknameButton setImage:[UIImage imageNamed:@"CA_btc_edit"] forState:UIControlStateNormal];
        [_CANicknameButton addTarget:self action:@selector(CANicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CANicknameButton;
}
- (UIButton *)CAChangePasswordButton{
    if (!_CAChangePasswordButton) {
        _CAChangePasswordButton = [[UIButton alloc] init];
        [_CAChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_CAChangePasswordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CAChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CAChangePasswordButton.titleLabel.numberOfLines = 0;
        _CAChangePasswordButton.backgroundColor = [UIColor systemBlueColor];
        _CAChangePasswordButton.layer.masksToBounds = YES;
        _CAChangePasswordButton.layer.cornerRadius = 2.0f;
        [_CAChangePasswordButton addTarget:self action:@selector(CAChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CAChangePasswordButton;
}
- (UIButton *)CASignOutButton{
    if (!_CASignOutButton) {
        _CASignOutButton = [[UIButton alloc] init];
        [_CASignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_CASignOutButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CASignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CASignOutButton.titleLabel.numberOfLines = 0;
        _CASignOutButton.backgroundColor = [UIColor systemBlueColor];
        _CASignOutButton.layer.masksToBounds = YES;
        _CASignOutButton.layer.cornerRadius = 4.0f;
        [_CASignOutButton addTarget:self action:@selector(CASignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CASignOutButton;
}
@end
