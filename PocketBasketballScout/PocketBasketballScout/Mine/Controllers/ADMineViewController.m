//
//  ADMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "ADMineViewController.h"
#import "ADPasswordChangeViewController.h"
#import "ADLoginViewController.h"

@interface ADMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *ADBackView;//背景颜色
@property(nonatomic, strong)UIImageView *ADImageView;//头像
@property(nonatomic, copy)NSString *ADnickname;
@property(nonatomic, strong)UILabel *ADNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *ADNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean ADIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *ADNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *ADChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *ADSignOutButton;//登录或者退出
@end

@implementation ADMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self ADSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)ADSetContentView{
    self.view.backgroundColor = [UIColor systemOrangeColor];
    [self.view addSubview:self.ADBackView];
    [self.ADBackView addSubview:self.ADImageView];
    [self.ADBackView addSubview:self.ADNickNameLabel];
    [self.ADBackView addSubview:self.ADNicknameTextField];
    [self.ADBackView addSubview:self.ADNicknameButton];
    [self.view addSubview:self.ADChangePasswordButton];
    [self.view addSubview:self.ADSignOutButton];
    
    [self.ADBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(ADHEIGHT / 3 + 60);
    }];
    [self.ADImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADBackView);
        make.centerY.equalTo(self.ADBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.ADNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.ADBackView);
        make.top.equalTo(self.ADImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.ADNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.ADBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.ADNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.ADNicknameTextField);
        make.leading.equalTo(self.ADNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.ADChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((ADWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.ADSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.ADBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((ADWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.ADNicknameTextField resignFirstResponder];
    self.ADIsEdit = NO;
  self.ADNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)ADNicknameButtonAction:(UIButton *)sender{
    self.ADIsEdit = !self.ADIsEdit;
    if (self.ADIsEdit) {
        self.ADNicknameTextField.userInteractionEnabled = YES;
        [self.ADNicknameTextField becomeFirstResponder];
    }else{
        self.ADNicknameTextField.userInteractionEnabled = NO;
        [self.ADNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)ADChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    ADPasswordChangeViewController *pacVC = [[ADPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)ADSignOutAction:(UIButton *)sender{
    [AVUser logOut];
    ADLoginViewController *loginVC = [ADLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    ADKeyWindow.rootViewController = loginVCNav;
}
- (void)ADNicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.ADnickname forKey:@"username"];
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
    if (self.ADnickname.length && ![self.ADnickname isEqualToString:textField.text]) {
        self.ADnickname = textField.text;
        [self ADNicknameUpdate];
    }
    self.ADIsEdit = NO;
    self.ADNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)ADBackView{
    if (!_ADBackView) {
        _ADBackView = [[UIView alloc] init];
        _ADBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _ADBackView;
}
- (UIImageView *)ADImageView{
    if (!_ADImageView) {
        _ADImageView = [[UIImageView alloc] init];
        _ADImageView.image = [UIImage imageNamed:@"AD_mine_football"];
        _ADImageView.layer.masksToBounds = YES;
        _ADImageView.layer.cornerRadius = 50.0f;
    }
    return _ADImageView;
}
- (UILabel *)ADNickNameLabel{
    if (!_ADNickNameLabel) {
        _ADNickNameLabel = [[UILabel alloc] init];
        _ADNickNameLabel.textColor = [UIColor greenColor];
        _ADNickNameLabel.font = [UIFont systemFontOfSize:18];
        _ADNickNameLabel.numberOfLines = 0;
        _ADNickNameLabel.text = @"Nickname";
        _ADNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _ADNickNameLabel;
}
- (UITextField *)ADNicknameTextField{
    if (!_ADNicknameTextField) {
        _ADNicknameTextField = [[UITextField alloc] init];
        _ADNicknameTextField.delegate = self;
        _ADNicknameTextField.textColor = [UIColor systemYellowColor];
        _ADNicknameTextField.font = [UIFont systemFontOfSize:22];
        _ADNicknameTextField.backgroundColor = [UIColor cyanColor];
        _ADNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _ADNicknameTextField.layer.borderWidth = 2.0f;
        _ADNicknameTextField.layer.cornerRadius = 6.0f;
        _ADNicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _ADNicknameTextField.text = [user objectForKey:@"username"];
            self.ADnickname = [user objectForKey:@"username"];
        }
    _ADNicknameTextField.userInteractionEnabled = NO;
    }
    return _ADNicknameTextField;
}
- (UIButton *)ADNicknameButton{
    if (!_ADNicknameButton) {
        _ADNicknameButton = [[UIButton alloc] init];
        [_ADNicknameButton setImage:[UIImage imageNamed:@"AD_btc_edit"] forState:UIControlStateNormal];
        [_ADNicknameButton addTarget:self action:@selector(ADNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADNicknameButton;
}
- (UIButton *)ADChangePasswordButton{
    if (!_ADChangePasswordButton) {
        _ADChangePasswordButton = [[UIButton alloc] init];
        [_ADChangePasswordButton setTitle:@"Change password" forState:UIControlStateNormal];
        [_ADChangePasswordButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _ADChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ADChangePasswordButton.titleLabel.numberOfLines = 0;
        _ADChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _ADChangePasswordButton.layer.masksToBounds = YES;
        _ADChangePasswordButton.layer.cornerRadius = 4.0f;
        [_ADChangePasswordButton addTarget:self action:@selector(ADChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADChangePasswordButton;
}
- (UIButton *)ADSignOutButton{
    if (!_ADSignOutButton) {
        _ADSignOutButton = [[UIButton alloc] init];
        [_ADSignOutButton setTitle:@"Sign out" forState:UIControlStateNormal];
        [_ADSignOutButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _ADSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _ADSignOutButton.titleLabel.numberOfLines = 0;
        _ADSignOutButton.backgroundColor = [UIColor cyanColor];
        _ADSignOutButton.layer.masksToBounds = YES;
        _ADSignOutButton.layer.cornerRadius = 4.0f;
        [_ADSignOutButton addTarget:self action:@selector(ADSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ADSignOutButton;
}
@end
