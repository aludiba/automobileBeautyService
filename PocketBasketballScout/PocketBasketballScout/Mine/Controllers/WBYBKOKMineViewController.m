//
//  WBYBKOKMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "WBYBKOKMineViewController.h"
#import "WBYBKOKPasswordChangeViewController.h"
#import "WBYBKOKLoginViewController.h"

@interface WBYBKOKMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *WBYBKOKBackView;//背景颜色
@property(nonatomic, strong)UIImageView *WBYBKOKImageView;//头像
@property(nonatomic, copy)NSString *WBYBKOKnickname;
@property(nonatomic, strong)UILabel *WBYBKOKNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *WBYBKOKNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean WBYBKOKIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *WBYBKOKNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *WBYBKOKChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *WBYBKOKSignOutButton;//登录或者退出
@end

@implementation WBYBKOKMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self WBYBKOKSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)WBYBKOKSetContentView{
    [self.view addSubview:self.WBYBKOKBackView];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKImageView];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKNickNameLabel];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKNicknameTextField];
    [self.WBYBKOKBackView addSubview:self.WBYBKOKNicknameButton];
    [self.view addSubview:self.WBYBKOKChangePasswordButton];
    [self.view addSubview:self.WBYBKOKSignOutButton];
    
    [self.WBYBKOKBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(WBYBKOKHEIGHT / 3 + 60);
    }];
    [self.WBYBKOKImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKBackView);
        make.centerY.equalTo(self.WBYBKOKBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.WBYBKOKNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.WBYBKOKBackView);
        make.top.equalTo(self.WBYBKOKImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.WBYBKOKNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.WBYBKOKBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.WBYBKOKNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.WBYBKOKNicknameTextField);
        make.leading.equalTo(self.WBYBKOKNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.WBYBKOKChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((WBYBKOKWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.WBYBKOKSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.WBYBKOKBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((WBYBKOKWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.WBYBKOKNicknameTextField resignFirstResponder];
    self.WBYBKOKIsEdit = NO;
  self.WBYBKOKNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)WBYBKOKNicknameButtonAction:(UIButton *)sender{
    self.WBYBKOKIsEdit = !self.WBYBKOKIsEdit;
    if (self.WBYBKOKIsEdit) {
        self.WBYBKOKNicknameTextField.userInteractionEnabled = YES;
        [self.WBYBKOKNicknameTextField becomeFirstResponder];
    }else{
        self.WBYBKOKNicknameTextField.userInteractionEnabled = NO;
        [self.WBYBKOKNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)WBYBKOKChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    WBYBKOKPasswordChangeViewController *pacVC = [[WBYBKOKPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)WBYBKOKSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
//    [BmobUser logout];
    WBYBKOKLoginViewController *loginVC = [WBYBKOKLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    WBYBKOKKeyWindow.rootViewController = loginVCNav;
}
- (void)WBYBKOKNicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.WBYBKOKnickname forKey:@"username"];
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
    if (self.WBYBKOKnickname.length && ![self.WBYBKOKnickname isEqualToString:textField.text]) {
        self.WBYBKOKnickname = textField.text;
        [self WBYBKOKNicknameUpdate];
    }
    self.WBYBKOKIsEdit = NO;
    self.WBYBKOKNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)WBYBKOKBackView{
    if (!_WBYBKOKBackView) {
        _WBYBKOKBackView = [[UIView alloc] init];
        _WBYBKOKBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _WBYBKOKBackView;
}
- (UIImageView *)WBYBKOKImageView{
    if (!_WBYBKOKImageView) {
        _WBYBKOKImageView = [[UIImageView alloc] init];
        _WBYBKOKImageView.image = [UIImage imageNamed:@"WBYBKOK_mine_football"];
        _WBYBKOKImageView.layer.masksToBounds = YES;
        _WBYBKOKImageView.layer.cornerRadius = 50.0f;
    }
    return _WBYBKOKImageView;
}
- (UILabel *)WBYBKOKNickNameLabel{
    if (!_WBYBKOKNickNameLabel) {
        _WBYBKOKNickNameLabel = [[UILabel alloc] init];
        _WBYBKOKNickNameLabel.textColor = [UIColor greenColor];
        _WBYBKOKNickNameLabel.font = [UIFont systemFontOfSize:18];
        _WBYBKOKNickNameLabel.numberOfLines = 0;
        _WBYBKOKNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _WBYBKOKNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _WBYBKOKNickNameLabel;
}
- (UITextField *)WBYBKOKNicknameTextField{
    if (!_WBYBKOKNicknameTextField) {
        _WBYBKOKNicknameTextField = [[UITextField alloc] init];
        _WBYBKOKNicknameTextField.delegate = self;
        _WBYBKOKNicknameTextField.textColor = [UIColor systemYellowColor];
        _WBYBKOKNicknameTextField.font = [UIFont systemFontOfSize:22];
        _WBYBKOKNicknameTextField.backgroundColor = [UIColor cyanColor];
        _WBYBKOKNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _WBYBKOKNicknameTextField.layer.borderWidth = 2.0f;
        _WBYBKOKNicknameTextField.layer.cornerRadius = 6.0f;
        _WBYBKOKNicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _WBYBKOKNicknameTextField.text = [user objectForKey:@"username"];
            self.WBYBKOKnickname = [user objectForKey:@"username"];
        }
    _WBYBKOKNicknameTextField.userInteractionEnabled = NO;
    }
    return _WBYBKOKNicknameTextField;
}
- (UIButton *)WBYBKOKNicknameButton{
    if (!_WBYBKOKNicknameButton) {
        _WBYBKOKNicknameButton = [[UIButton alloc] init];
        [_WBYBKOKNicknameButton setImage:[UIImage imageNamed:@"WBYBKOK_btc_edit"] forState:UIControlStateNormal];
        [_WBYBKOKNicknameButton addTarget:self action:@selector(WBYBKOKNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKNicknameButton;
}
- (UIButton *)WBYBKOKChangePasswordButton{
    if (!_WBYBKOKChangePasswordButton) {
        _WBYBKOKChangePasswordButton = [[UIButton alloc] init];
        [_WBYBKOKChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_WBYBKOKChangePasswordButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _WBYBKOKChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _WBYBKOKChangePasswordButton.titleLabel.numberOfLines = 0;
        _WBYBKOKChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _WBYBKOKChangePasswordButton.layer.masksToBounds = YES;
        _WBYBKOKChangePasswordButton.layer.cornerRadius = 16.0f;
        [_WBYBKOKChangePasswordButton addTarget:self action:@selector(WBYBKOKChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKChangePasswordButton;
}
- (UIButton *)WBYBKOKSignOutButton{
    if (!_WBYBKOKSignOutButton) {
        _WBYBKOKSignOutButton = [[UIButton alloc] init];
        [_WBYBKOKSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_WBYBKOKSignOutButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _WBYBKOKSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _WBYBKOKSignOutButton.titleLabel.numberOfLines = 0;
        _WBYBKOKSignOutButton.backgroundColor = [UIColor cyanColor];
        _WBYBKOKSignOutButton.layer.masksToBounds = YES;
        _WBYBKOKSignOutButton.layer.cornerRadius = 16.0f;
        [_WBYBKOKSignOutButton addTarget:self action:@selector(WBYBKOKSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WBYBKOKSignOutButton;
}
@end
