//
//  IASetViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "IASetViewController.h"
#import "IAPasswordChangeViewController.h"
#import "IALoginViewController.h"
@interface IASetViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *IABackView;//背景颜色
@property(nonatomic, strong)UIImageView *IAImageView;//头像
@property(nonatomic, copy)NSString *IAnickname;
@property(nonatomic, strong)UILabel *IANickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *IANicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean IAIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *IANicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *IAChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *IASignOutButton;//登录或者退出
@end

@implementation IASetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor systemGreenColor];
    [self IASetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)IASetContentView{
    [self.view addSubview:self.IABackView];
    [self.IABackView addSubview:self.IAImageView];
    [self.IABackView addSubview:self.IANickNameLabel];
    [self.IABackView addSubview:self.IANicknameTextField];
    [self.IABackView addSubview:self.IANicknameButton];
    [self.view addSubview:self.IAChangePasswordButton];
    [self.view addSubview:self.IASignOutButton];
    
    [self.IABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(IAHEIGHT / 2.5);
    }];
    [self.IAImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.IABackView.mas_centerX);
        make.centerY.equalTo(self.IABackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.IANickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.IABackView.mas_centerX);
        make.top.equalTo(self.IAImageView.mas_bottom).offset(5);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.IANicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.IANickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.IABackView);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(40);
    }];
    [self.IANicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.IANicknameTextField);
        make.leading.equalTo(self.IANicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.IAChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.IABackView.mas_bottom).offset(50);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((IAWIDTH - 100));
        make.height.mas_equalTo(60);
    }];
    [self.IASignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.IAChangePasswordButton.mas_bottom).offset(35);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((IAWIDTH - 100));
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.IANicknameTextField resignFirstResponder];
    self.IAIsEdit = NO;
  self.IANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)IANicknameButtonAction:(UIButton *)sender{
    self.IAIsEdit = !self.IAIsEdit;
    if (self.IAIsEdit) {
        self.IANicknameTextField.userInteractionEnabled = YES;
        [self.IANicknameTextField becomeFirstResponder];
    }else{
        self.IANicknameTextField.userInteractionEnabled = NO;
        [self.IANicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)IAChangePasswordAction:(UIButton *)sender{
    IAPasswordChangeViewController *pacVC = [[IAPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)IASignOutAction:(UIButton *)sender{
    [AVUser logOut];
    IALoginViewController *loginVC = [IALoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    IAKeyWindow.rootViewController = loginVCNav;
}
- (void)IANicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.IAnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD IAshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD IAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.IAnickname.length && ![self.IAnickname isEqualToString:textField.text]) {
        self.IAnickname = textField.text;
        [self IANicknameUpdate];
    }
    self.IAIsEdit = NO;
    self.IANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)IABackView{
    if (!_IABackView) {
        _IABackView = [[UIView alloc] init];
        _IABackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _IABackView;
}
- (UIImageView *)IAImageView{
    if (!_IAImageView) {
        _IAImageView = [[UIImageView alloc] init];
        _IAImageView.image = [UIImage imageNamed:@"IA_Set"];
        _IAImageView.layer.masksToBounds = YES;
        _IAImageView.layer.cornerRadius = 50.0f;
    }
    return _IAImageView;
}
- (UILabel *)IANickNameLabel{
    if (!_IANickNameLabel) {
        _IANickNameLabel = [[UILabel alloc] init];
        _IANickNameLabel.textColor = [UIColor blackColor];
        _IANickNameLabel.font = [UIFont systemFontOfSize:20];
        _IANickNameLabel.numberOfLines = 0;
        _IANickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _IANickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _IANickNameLabel;
}
- (UITextField *)IANicknameTextField{
    if (!_IANicknameTextField) {
        _IANicknameTextField = [[UITextField alloc] init];
        _IANicknameTextField.delegate = self;
        _IANicknameTextField.textColor = [UIColor blackColor];
        _IANicknameTextField.font = [UIFont systemFontOfSize:22];
        _IANicknameTextField.backgroundColor = [UIColor systemOrangeColor];
        _IANicknameTextField.layer.cornerRadius = 3.0f;
        _IANicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _IANicknameTextField.text = [user objectForKey:@"username"];
            self.IAnickname = [user objectForKey:@"username"];
        }
    _IANicknameTextField.userInteractionEnabled = NO;
    }
    return _IANicknameTextField;
}
- (UIButton *)IANicknameButton{
    if (!_IANicknameButton) {
        _IANicknameButton = [[UIButton alloc] init];
        [_IANicknameButton setImage:[UIImage imageNamed:@"IA_btc_edit"] forState:UIControlStateNormal];
        [_IANicknameButton addTarget:self action:@selector(IANicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IANicknameButton;
}
- (UIButton *)IAChangePasswordButton{
    if (!_IAChangePasswordButton) {
        _IAChangePasswordButton = [[UIButton alloc] init];
        [_IAChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_IAChangePasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _IAChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _IAChangePasswordButton.titleLabel.numberOfLines = 0;
        _IAChangePasswordButton.backgroundColor = [UIColor systemBlueColor];
        _IAChangePasswordButton.layer.masksToBounds = YES;
        _IAChangePasswordButton.layer.cornerRadius = 8.0f;
        [_IAChangePasswordButton addTarget:self action:@selector(IAChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IAChangePasswordButton;
}
- (UIButton *)IASignOutButton{
    if (!_IASignOutButton) {
        _IASignOutButton = [[UIButton alloc] init];
        [_IASignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_IASignOutButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _IASignOutButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _IASignOutButton.titleLabel.numberOfLines = 0;
        _IASignOutButton.backgroundColor = [UIColor systemPurpleColor];
        _IASignOutButton.layer.masksToBounds = YES;
        _IASignOutButton.layer.cornerRadius = 8.0f;
        [_IASignOutButton addTarget:self action:@selector(IASignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IASignOutButton;
}
@end
