//
//  ZLMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ZLMineViewController.h"
#import "ZLPasswordChangeViewController.h"
#import "ZLLoginViewController.h"

@interface ZLMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ZLBackView;//背景颜色
@property(nonatomic, strong)UIImageView *ZLImageView;//头像
@property(nonatomic, copy)NSString *ZLnickname;
@property(nonatomic, strong)UILabel *ZLNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *ZLNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean ZLIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *ZLNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *ZLChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *ZLSignOutButton;//登录或者退出
@end

@implementation ZLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ZLSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)ZLSetContentView{
    [self.view addSubview:self.ZLBackView];
    [self.ZLBackView addSubview:self.ZLImageView];
    [self.ZLBackView addSubview:self.ZLNickNameLabel];
    [self.ZLBackView addSubview:self.ZLNicknameTextField];
    [self.ZLBackView addSubview:self.ZLNicknameButton];
    [self.view addSubview:self.ZLChangePasswordButton];
    [self.view addSubview:self.ZLSignOutButton];
    
    [self.ZLBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(ZLHEIGHT / 3 + 60);
    }];
    [self.ZLImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLBackView);
        make.centerY.equalTo(self.ZLBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.ZLNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ZLBackView);
        make.top.equalTo(self.ZLImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.ZLNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.ZLBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.ZLNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ZLNicknameTextField);
        make.leading.equalTo(self.ZLNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.ZLChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((ZLWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.ZLSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ZLBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((ZLWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.ZLNicknameTextField resignFirstResponder];
    self.ZLIsEdit = NO;
  self.ZLNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)ZLNicknameButtonAction:(UIButton *)sender{
    self.ZLIsEdit = !self.ZLIsEdit;
    if (self.ZLIsEdit) {
        self.ZLNicknameTextField.userInteractionEnabled = YES;
        [self.ZLNicknameTextField becomeFirstResponder];
    }else{
        self.ZLNicknameTextField.userInteractionEnabled = NO;
        [self.ZLNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)ZLChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    ZLPasswordChangeViewController *pacVC = [[ZLPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)ZLSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [AVUser logOut];
    ZLLoginViewController *loginVC = [ZLLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    ZLKeyWindow.rootViewController = loginVCNav;
}
- (void)ZLNicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.ZLnickname forKey:@"username"];
    [bUser saveInBackground];
}
#pragma mark - 属性懒加载
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (self.ZLnickname.length && ![self.ZLnickname isEqualToString:textField.text]) {
        self.ZLnickname = textField.text;
        [self ZLNicknameUpdate];
    }
    self.ZLIsEdit = NO;
    self.ZLNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)ZLBackView{
    if (!_ZLBackView) {
        _ZLBackView = [[UIView alloc] init];
        _ZLBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _ZLBackView;
}
- (UIImageView *)ZLImageView{
    if (!_ZLImageView) {
        _ZLImageView = [[UIImageView alloc] init];
        _ZLImageView.image = [UIImage imageNamed:@"ZL_mine_football"];
        _ZLImageView.layer.masksToBounds = YES;
        _ZLImageView.layer.cornerRadius = 50.0f;
    }
    return _ZLImageView;
}
- (UILabel *)ZLNickNameLabel{
    if (!_ZLNickNameLabel) {
        _ZLNickNameLabel = [[UILabel alloc] init];
        _ZLNickNameLabel.textColor = [UIColor greenColor];
        _ZLNickNameLabel.font = [UIFont systemFontOfSize:18];
        _ZLNickNameLabel.numberOfLines = 0;
        _ZLNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _ZLNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _ZLNickNameLabel;
}
- (UITextField *)ZLNicknameTextField{
    if (!_ZLNicknameTextField) {
        _ZLNicknameTextField = [[UITextField alloc] init];
        _ZLNicknameTextField.delegate = self;
        _ZLNicknameTextField.textColor = [UIColor systemYellowColor];
        _ZLNicknameTextField.font = [UIFont systemFontOfSize:22];
        _ZLNicknameTextField.backgroundColor = [UIColor cyanColor];
        _ZLNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _ZLNicknameTextField.layer.borderWidth = 2.0f;
        _ZLNicknameTextField.layer.cornerRadius = 6.0f;
        _ZLNicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _ZLNicknameTextField.text = [user objectForKey:@"username"];
            self.ZLnickname = [user objectForKey:@"username"];
        }
    _ZLNicknameTextField.userInteractionEnabled = NO;
    }
    return _ZLNicknameTextField;
}
- (UIButton *)ZLNicknameButton{
    if (!_ZLNicknameButton) {
        _ZLNicknameButton = [[UIButton alloc] init];
        [_ZLNicknameButton setImage:[UIImage imageNamed:@"ZL_btc_edit"] forState:UIControlStateNormal];
        [_ZLNicknameButton addTarget:self action:@selector(ZLNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLNicknameButton;
}
- (UIButton *)ZLChangePasswordButton{
    if (!_ZLChangePasswordButton) {
        _ZLChangePasswordButton = [[UIButton alloc] init];
        [_ZLChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_ZLChangePasswordButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _ZLChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ZLChangePasswordButton.titleLabel.numberOfLines = 0;
        _ZLChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _ZLChangePasswordButton.layer.masksToBounds = YES;
        _ZLChangePasswordButton.layer.cornerRadius = 16.0f;
        [_ZLChangePasswordButton addTarget:self action:@selector(ZLChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLChangePasswordButton;
}
- (UIButton *)ZLSignOutButton{
    if (!_ZLSignOutButton) {
        _ZLSignOutButton = [[UIButton alloc] init];
        [_ZLSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_ZLSignOutButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _ZLSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ZLSignOutButton.titleLabel.numberOfLines = 0;
        _ZLSignOutButton.backgroundColor = [UIColor cyanColor];
        _ZLSignOutButton.layer.masksToBounds = YES;
        _ZLSignOutButton.layer.cornerRadius = 16.0f;
        [_ZLSignOutButton addTarget:self action:@selector(ZLSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ZLSignOutButton;
}
@end
