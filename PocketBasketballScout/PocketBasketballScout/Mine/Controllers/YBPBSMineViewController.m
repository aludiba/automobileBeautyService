//
//  YBPBSMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "YBPBSMineViewController.h"
#import "YBPBSPasswordChangeViewController.h"
#import "YBPBSLoginViewController.h"

@interface YBPBSMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *YBPBSBackView;//背景颜色
@property(nonatomic, strong)UIImageView *YBPBSImageView;//头像
@property(nonatomic, copy)NSString *YBPBSnickname;
@property(nonatomic, strong)UILabel *YBPBSNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *YBPBSNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean YBPBSIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *YBPBSNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *YBPBSChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *YBPBSSignOutButton;//登录或者退出
@end

@implementation YBPBSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self YBPBSSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)YBPBSSetContentView{
    [self.view addSubview:self.YBPBSBackView];
    [self.YBPBSBackView addSubview:self.YBPBSImageView];
    [self.YBPBSBackView addSubview:self.YBPBSNickNameLabel];
    [self.YBPBSBackView addSubview:self.YBPBSNicknameTextField];
    [self.YBPBSBackView addSubview:self.YBPBSNicknameButton];
    [self.view addSubview:self.YBPBSChangePasswordButton];
    [self.view addSubview:self.YBPBSSignOutButton];
    
    [self.YBPBSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(YBPBSHEIGHT / 3 + 60);
    }];
    [self.YBPBSImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSBackView);
        make.centerY.equalTo(self.YBPBSBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.YBPBSNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.YBPBSBackView);
        make.top.equalTo(self.YBPBSImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.YBPBSNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.YBPBSBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.YBPBSNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.YBPBSNicknameTextField);
        make.leading.equalTo(self.YBPBSNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.YBPBSChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((YBPBSWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.YBPBSSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.YBPBSBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((YBPBSWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.YBPBSNicknameTextField resignFirstResponder];
    self.YBPBSIsEdit = NO;
  self.YBPBSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)YBPBSNicknameButtonAction:(UIButton *)sender{
    self.YBPBSIsEdit = !self.YBPBSIsEdit;
    if (self.YBPBSIsEdit) {
        self.YBPBSNicknameTextField.userInteractionEnabled = YES;
        [self.YBPBSNicknameTextField becomeFirstResponder];
    }else{
        self.YBPBSNicknameTextField.userInteractionEnabled = NO;
        [self.YBPBSNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)YBPBSChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    YBPBSPasswordChangeViewController *pacVC = [[YBPBSPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)YBPBSSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
//    [BmobUser logout];
    YBPBSLoginViewController *loginVC = [YBPBSLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    YBPBSKeyWindow.rootViewController = loginVCNav;
}
- (void)YBPBSNicknameUpdate{
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.YBPBSnickname forKey:@"username"];
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
    if (self.YBPBSnickname.length && ![self.YBPBSnickname isEqualToString:textField.text]) {
        self.YBPBSnickname = textField.text;
        [self YBPBSNicknameUpdate];
    }
    self.YBPBSIsEdit = NO;
    self.YBPBSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)YBPBSBackView{
    if (!_YBPBSBackView) {
        _YBPBSBackView = [[UIView alloc] init];
        _YBPBSBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _YBPBSBackView;
}
- (UIImageView *)YBPBSImageView{
    if (!_YBPBSImageView) {
        _YBPBSImageView = [[UIImageView alloc] init];
        _YBPBSImageView.image = [UIImage imageNamed:@"YBPBS_mine_football"];
        _YBPBSImageView.layer.masksToBounds = YES;
        _YBPBSImageView.layer.cornerRadius = 50.0f;
    }
    return _YBPBSImageView;
}
- (UILabel *)YBPBSNickNameLabel{
    if (!_YBPBSNickNameLabel) {
        _YBPBSNickNameLabel = [[UILabel alloc] init];
        _YBPBSNickNameLabel.textColor = [UIColor greenColor];
        _YBPBSNickNameLabel.font = [UIFont systemFontOfSize:18];
        _YBPBSNickNameLabel.numberOfLines = 0;
        _YBPBSNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _YBPBSNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _YBPBSNickNameLabel;
}
- (UITextField *)YBPBSNicknameTextField{
    if (!_YBPBSNicknameTextField) {
        _YBPBSNicknameTextField = [[UITextField alloc] init];
        _YBPBSNicknameTextField.delegate = self;
        _YBPBSNicknameTextField.textColor = [UIColor systemYellowColor];
        _YBPBSNicknameTextField.font = [UIFont systemFontOfSize:22];
        _YBPBSNicknameTextField.backgroundColor = [UIColor cyanColor];
        _YBPBSNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _YBPBSNicknameTextField.layer.borderWidth = 2.0f;
        _YBPBSNicknameTextField.layer.cornerRadius = 6.0f;
        _YBPBSNicknameTextField.layer.masksToBounds = YES;
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _YBPBSNicknameTextField.text = [user objectForKey:@"username"];
            self.YBPBSnickname = [user objectForKey:@"username"];
        }
    _YBPBSNicknameTextField.userInteractionEnabled = NO;
    }
    return _YBPBSNicknameTextField;
}
- (UIButton *)YBPBSNicknameButton{
    if (!_YBPBSNicknameButton) {
        _YBPBSNicknameButton = [[UIButton alloc] init];
        [_YBPBSNicknameButton setImage:[UIImage imageNamed:@"YBPBS_btc_edit"] forState:UIControlStateNormal];
        [_YBPBSNicknameButton addTarget:self action:@selector(YBPBSNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSNicknameButton;
}
- (UIButton *)YBPBSChangePasswordButton{
    if (!_YBPBSChangePasswordButton) {
        _YBPBSChangePasswordButton = [[UIButton alloc] init];
        [_YBPBSChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_YBPBSChangePasswordButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _YBPBSChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _YBPBSChangePasswordButton.titleLabel.numberOfLines = 0;
        _YBPBSChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _YBPBSChangePasswordButton.layer.masksToBounds = YES;
        _YBPBSChangePasswordButton.layer.cornerRadius = 16.0f;
        [_YBPBSChangePasswordButton addTarget:self action:@selector(YBPBSChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSChangePasswordButton;
}
- (UIButton *)YBPBSSignOutButton{
    if (!_YBPBSSignOutButton) {
        _YBPBSSignOutButton = [[UIButton alloc] init];
        [_YBPBSSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_YBPBSSignOutButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _YBPBSSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _YBPBSSignOutButton.titleLabel.numberOfLines = 0;
        _YBPBSSignOutButton.backgroundColor = [UIColor cyanColor];
        _YBPBSSignOutButton.layer.masksToBounds = YES;
        _YBPBSSignOutButton.layer.cornerRadius = 16.0f;
        [_YBPBSSignOutButton addTarget:self action:@selector(YBPBSSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBPBSSignOutButton;
}
@end
