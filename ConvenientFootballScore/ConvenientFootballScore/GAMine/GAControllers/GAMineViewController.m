//
//  GAMineViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "GAMineViewController.h"
#import "GAPasswordChangeViewController.h"
#import "GALoginViewController.h"

@interface GAMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *GABackView;//背景颜色
@property(nonatomic, strong)UIImageView *GAImageView;//头像
@property(nonatomic, copy)NSString *GAnickname;
@property(nonatomic, strong)UILabel *GANickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *GANicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean GAIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *GANicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *GAChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *GASignOutButton;//登录或者退出
@end

@implementation GAMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    [self GASetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)GASetContentView{
    [self.view addSubview:self.GABackView];
    [self.GABackView addSubview:self.GAImageView];
    [self.GABackView addSubview:self.GANickNameLabel];
    [self.GABackView addSubview:self.GANicknameTextField];
    [self.GABackView addSubview:self.GANicknameButton];
    [self.view addSubview:self.GAChangePasswordButton];
    [self.view addSubview:self.GASignOutButton];
    
    [self.GABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(GAHEIGHT / 2 - 20);
    }];
    [self.GAImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GABackView.mas_centerX).offset(-50);
        make.centerY.equalTo(self.GABackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.GANickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GABackView.mas_centerX).offset(60);
        make.centerY.equalTo(self.GAImageView);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.GANicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAImageView.mas_bottom).offset(10);
        make.centerX.equalTo(self.GABackView);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(40);
    }];
    [self.GANicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GANicknameTextField);
        make.leading.equalTo(self.GANicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.GAChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GABackView.mas_bottom).offset(30);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((GAWIDTH - 100));
        make.height.mas_equalTo(60);
    }];
    [self.GASignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAChangePasswordButton.mas_bottom).offset(25);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((GAWIDTH - 100));
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.GANicknameTextField resignFirstResponder];
    self.GAIsEdit = NO;
  self.GANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)GANicknameButtonAction:(UIButton *)sender{
    self.GAIsEdit = !self.GAIsEdit;
    if (self.GAIsEdit) {
        self.GANicknameTextField.userInteractionEnabled = YES;
        [self.GANicknameTextField becomeFirstResponder];
    }else{
        self.GANicknameTextField.userInteractionEnabled = NO;
        [self.GANicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)GAChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    GAPasswordChangeViewController *pacVC = [[GAPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)GASignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [AVUser logOut];
    GALoginViewController *loginVC = [GALoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    GAKeyWindow.rootViewController = loginVCNav;
}
- (void)GANicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.GAnickname forKey:@"username"];
    [bUser saveInBackground];
    [MBProgressHUD GAshowReminderText:NSLocalizedString(@"更新成功", nil)];
}
#pragma mark - 属性懒加载
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    
    return YES;
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if (self.GAnickname.length && ![self.GAnickname isEqualToString:textField.text]) {
        self.GAnickname = textField.text;
        [self GANicknameUpdate];
    }
    self.GAIsEdit = NO;
    self.GANicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)GABackView{
    if (!_GABackView) {
        _GABackView = [[UIView alloc] init];
        _GABackView.backgroundColor = [UIColor redColor];
    }
    return _GABackView;
}
- (UIImageView *)GAImageView{
    if (!_GAImageView) {
        _GAImageView = [[UIImageView alloc] init];
        _GAImageView.image = [UIImage imageNamed:@"GA_mine_football"];
        _GAImageView.layer.masksToBounds = YES;
        _GAImageView.layer.cornerRadius = 50.0f;
    }
    return _GAImageView;
}
- (UILabel *)GANickNameLabel{
    if (!_GANickNameLabel) {
        _GANickNameLabel = [[UILabel alloc] init];
        _GANickNameLabel.textColor = [UIColor whiteColor];
        _GANickNameLabel.font = [UIFont systemFontOfSize:20];
        _GANickNameLabel.numberOfLines = 0;
        _GANickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _GANickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _GANickNameLabel;
}
- (UITextField *)GANicknameTextField{
    if (!_GANicknameTextField) {
        _GANicknameTextField = [[UITextField alloc] init];
        _GANicknameTextField.delegate = self;
        _GANicknameTextField.textColor = [UIColor blackColor];
        _GANicknameTextField.font = [UIFont systemFontOfSize:22];
        _GANicknameTextField.backgroundColor = [UIColor greenColor];
        _GANicknameTextField.layer.cornerRadius = 3.0f;
        _GANicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _GANicknameTextField.text = [user objectForKey:@"username"];
            self.GAnickname = [user objectForKey:@"username"];
        }
    _GANicknameTextField.userInteractionEnabled = NO;
    }
    return _GANicknameTextField;
}
- (UIButton *)GANicknameButton{
    if (!_GANicknameButton) {
        _GANicknameButton = [[UIButton alloc] init];
        [_GANicknameButton setImage:[UIImage imageNamed:@"GA_btc_edit"] forState:UIControlStateNormal];
        [_GANicknameButton addTarget:self action:@selector(GANicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GANicknameButton;
}
- (UIButton *)GAChangePasswordButton{
    if (!_GAChangePasswordButton) {
        _GAChangePasswordButton = [[UIButton alloc] init];
        [_GAChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_GAChangePasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GAChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _GAChangePasswordButton.titleLabel.numberOfLines = 0;
        _GAChangePasswordButton.backgroundColor = [UIColor systemGreenColor];
        _GAChangePasswordButton.layer.masksToBounds = YES;
        _GAChangePasswordButton.layer.cornerRadius = 4.0f;
        [_GAChangePasswordButton addTarget:self action:@selector(GAChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAChangePasswordButton;
}
- (UIButton *)GASignOutButton{
    if (!_GASignOutButton) {
        _GASignOutButton = [[UIButton alloc] init];
        [_GASignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_GASignOutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _GASignOutButton.titleLabel.font = [UIFont systemFontOfSize:25];
     _GASignOutButton.titleLabel.numberOfLines = 0;
        _GASignOutButton.backgroundColor = [UIColor systemGreenColor];
        _GASignOutButton.layer.masksToBounds = YES;
        _GASignOutButton.layer.cornerRadius = 4.0f;
        [_GASignOutButton addTarget:self action:@selector(GASignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GASignOutButton;
}
@end
