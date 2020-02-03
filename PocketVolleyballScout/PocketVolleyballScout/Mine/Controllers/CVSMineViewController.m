//
//  CVSMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CVSMineViewController.h"
#import "CVSPasswordChangeViewController.h"
#import "CVSLoginViewController.h"

@interface CVSMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CVSBackView;//背景颜色
@property(nonatomic, strong)UIImageView *CVSImageView;//头像
@property(nonatomic, copy)NSString *CVSnickname;
@property(nonatomic, strong)UILabel *CVSNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *CVSNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean CVSIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *CVSNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *CVSChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *CVSSignOutButton;//登录或者退出
@end

@implementation CVSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CVSSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CVSSetContentView{
    [self.view addSubview:self.CVSBackView];
    [self.CVSBackView addSubview:self.CVSImageView];
    [self.CVSBackView addSubview:self.CVSNickNameLabel];
    [self.CVSBackView addSubview:self.CVSNicknameTextField];
    [self.CVSBackView addSubview:self.CVSNicknameButton];
    [self.view addSubview:self.CVSChangePasswordButton];
    [self.view addSubview:self.CVSSignOutButton];
    
    [self.CVSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(CVSHEIGHT / 3 - 40);
    }];
    [self.CVSImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSBackView);
        make.top.equalTo(self.CVSBackView).offset(CVSHeightNavContentBar + 20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.CVSNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CVSBackView);
        make.top.equalTo(self.CVSImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.CVSNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.CVSBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.CVSNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CVSNicknameTextField);
        make.leading.equalTo(self.CVSNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.CVSChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSBackView.mas_bottom).offset(30);
        make.leading.equalTo(self.view).offset(64);
        make.width.mas_equalTo(CVSWIDTH - 128);
        make.height.mas_equalTo(60);
    }];
    [self.CVSSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CVSChangePasswordButton.mas_bottom).offset(30);
        make.leading.equalTo(self.view).offset(64);
        make.width.mas_equalTo(CVSWIDTH - 128);
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.CVSNicknameTextField resignFirstResponder];
    self.CVSIsEdit = NO;
  self.CVSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)CVSNicknameButtonAction:(UIButton *)sender{
    self.CVSIsEdit = !self.CVSIsEdit;
    if (self.CVSIsEdit) {
        self.CVSNicknameTextField.userInteractionEnabled = YES;
        [self.CVSNicknameTextField becomeFirstResponder];
    }else{
        self.CVSNicknameTextField.userInteractionEnabled = NO;
        [self.CVSNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)CVSChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    CVSPasswordChangeViewController *pacVC = [[CVSPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)CVSSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    CVSLoginViewController *loginVC = [CVSLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    CVSKeyWindow.rootViewController = loginVCNav;
}
- (void)CVSNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.CVSnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD CVSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.CVSnickname.length && ![self.CVSnickname isEqualToString:textField.text]) {
        self.CVSnickname = textField.text;
        [self CVSNicknameUpdate];
    }
    self.CVSIsEdit = NO;
    self.CVSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)CVSBackView{
    if (!_CVSBackView) {
        _CVSBackView = [[UIView alloc] init];
        _CVSBackView.backgroundColor = CVSH_Color(180, 177, 158, 1);
    }
    return _CVSBackView;
}
- (UIImageView *)CVSImageView{
    if (!_CVSImageView) {
        _CVSImageView = [[UIImageView alloc] init];
        _CVSImageView.image = [UIImage imageNamed:@"CVS_mine_football"];
        _CVSImageView.layer.masksToBounds = YES;
        _CVSImageView.layer.cornerRadius = 50.0f;
    }
    return _CVSImageView;
}
- (UILabel *)CVSNickNameLabel{
    if (!_CVSNickNameLabel) {
        _CVSNickNameLabel = [[UILabel alloc] init];
        _CVSNickNameLabel.textColor = [UIColor cyanColor];
        _CVSNickNameLabel.font = [UIFont systemFontOfSize:18];
        _CVSNickNameLabel.numberOfLines = 0;
        _CVSNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _CVSNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _CVSNickNameLabel;
}
- (UITextField *)CVSNicknameTextField{
    if (!_CVSNicknameTextField) {
        _CVSNicknameTextField = [[UITextField alloc] init];
        _CVSNicknameTextField.delegate = self;
        _CVSNicknameTextField.textColor = [UIColor systemPurpleColor];
        _CVSNicknameTextField.font = [UIFont systemFontOfSize:22];
        _CVSNicknameTextField.backgroundColor = [UIColor cyanColor];
        _CVSNicknameTextField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _CVSNicknameTextField.layer.borderWidth = 1.0f;
        _CVSNicknameTextField.layer.cornerRadius = 4.0f;
        _CVSNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _CVSNicknameTextField.text = [NSString stringWithFormat:@"   %@",[user objectForKey:@"username"]];
            self.CVSnickname = [user objectForKey:@"username"];
        }
    _CVSNicknameTextField.userInteractionEnabled = NO;
    }
    return _CVSNicknameTextField;
}
- (UIButton *)CVSNicknameButton{
    if (!_CVSNicknameButton) {
        _CVSNicknameButton = [[UIButton alloc] init];
        [_CVSNicknameButton setImage:[UIImage imageNamed:@"CVS_btc_edit"] forState:UIControlStateNormal];
        [_CVSNicknameButton addTarget:self action:@selector(CVSNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSNicknameButton;
}
- (UIButton *)CVSChangePasswordButton{
    if (!_CVSChangePasswordButton) {
        _CVSChangePasswordButton = [[UIButton alloc] init];
        [_CVSChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_CVSChangePasswordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CVSChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CVSChangePasswordButton.titleLabel.numberOfLines = 0;
        _CVSChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _CVSChangePasswordButton.layer.masksToBounds = YES;
        _CVSChangePasswordButton.layer.cornerRadius = 4.0f;
        [_CVSChangePasswordButton addTarget:self action:@selector(CVSChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSChangePasswordButton;
}
- (UIButton *)CVSSignOutButton{
    if (!_CVSSignOutButton) {
        _CVSSignOutButton = [[UIButton alloc] init];
        [_CVSSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_CVSSignOutButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _CVSSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CVSSignOutButton.titleLabel.numberOfLines = 0;
        _CVSSignOutButton.backgroundColor = [UIColor cyanColor];
        _CVSSignOutButton.layer.masksToBounds = YES;
        _CVSSignOutButton.layer.cornerRadius = 4.0f;
        [_CVSSignOutButton addTarget:self action:@selector(CVSSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CVSSignOutButton;
}
@end
