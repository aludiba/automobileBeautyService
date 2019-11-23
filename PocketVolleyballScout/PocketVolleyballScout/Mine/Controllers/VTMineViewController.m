//
//  VTMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTMineViewController.h"
#import "VTPasswordChangeViewController.h"
#import "VTLoginViewController.h"

@interface VTMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *VTBackView;//背景颜色
@property(nonatomic, strong)UIImageView *VTImageView;//头像
@property(nonatomic, copy)NSString *VTnickname;
@property(nonatomic, strong)UILabel *VTNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *VTNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean VTIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *VTNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *VTChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *VTSignOutButton;//登录或者退出
@end

@implementation VTMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self VTSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)VTSetContentView{
    [self.view addSubview:self.VTBackView];
    [self.VTBackView addSubview:self.VTImageView];
    [self.VTBackView addSubview:self.VTNickNameLabel];
    [self.VTBackView addSubview:self.VTNicknameTextField];
    [self.VTBackView addSubview:self.VTNicknameButton];
    [self.view addSubview:self.VTChangePasswordButton];
    [self.view addSubview:self.VTSignOutButton];
    
    [self.VTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(VTHEIGHT / 3 - 40);
    }];
    [self.VTImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTBackView);
        make.top.equalTo(self.VTBackView).offset(VTHeightNavContentBar + 20);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.VTNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTBackView);
        make.top.equalTo(self.VTImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.VTNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.VTBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.VTNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.VTNicknameTextField);
        make.leading.equalTo(self.VTNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.VTChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTBackView.mas_bottom).offset(30);
        make.leading.equalTo(self.view).offset(64);
        make.width.mas_equalTo(VTWIDTH - 128);
        make.height.mas_equalTo(60);
    }];
    [self.VTSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTChangePasswordButton.mas_bottom).offset(30);
        make.leading.equalTo(self.view).offset(64);
        make.width.mas_equalTo(VTWIDTH - 128);
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.VTNicknameTextField resignFirstResponder];
    self.VTIsEdit = NO;
  self.VTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)VTNicknameButtonAction:(UIButton *)sender{
    self.VTIsEdit = !self.VTIsEdit;
    if (self.VTIsEdit) {
        self.VTNicknameTextField.userInteractionEnabled = YES;
        [self.VTNicknameTextField becomeFirstResponder];
    }else{
        self.VTNicknameTextField.userInteractionEnabled = NO;
        [self.VTNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)VTChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    VTPasswordChangeViewController *pacVC = [[VTPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)VTSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    VTLoginViewController *loginVC = [VTLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    VTKeyWindow.rootViewController = loginVCNav;
}
- (void)VTNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.VTnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD VTshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD VTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.VTnickname.length && ![self.VTnickname isEqualToString:textField.text]) {
        self.VTnickname = textField.text;
        [self VTNicknameUpdate];
    }
    self.VTIsEdit = NO;
    self.VTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)VTBackView{
    if (!_VTBackView) {
        _VTBackView = [[UIView alloc] init];
        _VTBackView.backgroundColor = VTH_Color(180, 177, 158, 1);
    }
    return _VTBackView;
}
- (UIImageView *)VTImageView{
    if (!_VTImageView) {
        _VTImageView = [[UIImageView alloc] init];
        _VTImageView.image = [UIImage imageNamed:@"VT_mine_football"];
        _VTImageView.layer.masksToBounds = YES;
        _VTImageView.layer.cornerRadius = 50.0f;
    }
    return _VTImageView;
}
- (UILabel *)VTNickNameLabel{
    if (!_VTNickNameLabel) {
        _VTNickNameLabel = [[UILabel alloc] init];
        _VTNickNameLabel.textColor = [UIColor cyanColor];
        _VTNickNameLabel.font = [UIFont systemFontOfSize:18];
        _VTNickNameLabel.numberOfLines = 0;
        _VTNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _VTNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _VTNickNameLabel;
}
- (UITextField *)VTNicknameTextField{
    if (!_VTNicknameTextField) {
        _VTNicknameTextField = [[UITextField alloc] init];
        _VTNicknameTextField.delegate = self;
        _VTNicknameTextField.textColor = [UIColor systemPurpleColor];
        _VTNicknameTextField.font = [UIFont systemFontOfSize:22];
        _VTNicknameTextField.backgroundColor = [UIColor cyanColor];
        _VTNicknameTextField.layer.borderColor = [UIColor systemRedColor].CGColor;
        _VTNicknameTextField.layer.borderWidth = 1.0f;
        _VTNicknameTextField.layer.cornerRadius = 4.0f;
        _VTNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _VTNicknameTextField.text = [NSString stringWithFormat:@"   %@",[user objectForKey:@"username"]];
            self.VTnickname = [user objectForKey:@"username"];
        }
    _VTNicknameTextField.userInteractionEnabled = NO;
    }
    return _VTNicknameTextField;
}
- (UIButton *)VTNicknameButton{
    if (!_VTNicknameButton) {
        _VTNicknameButton = [[UIButton alloc] init];
        [_VTNicknameButton setImage:[UIImage imageNamed:@"VT_btc_edit"] forState:UIControlStateNormal];
        [_VTNicknameButton addTarget:self action:@selector(VTNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTNicknameButton;
}
- (UIButton *)VTChangePasswordButton{
    if (!_VTChangePasswordButton) {
        _VTChangePasswordButton = [[UIButton alloc] init];
        [_VTChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_VTChangePasswordButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _VTChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _VTChangePasswordButton.titleLabel.numberOfLines = 0;
        _VTChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _VTChangePasswordButton.layer.masksToBounds = YES;
        _VTChangePasswordButton.layer.cornerRadius = 4.0f;
        [_VTChangePasswordButton addTarget:self action:@selector(VTChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTChangePasswordButton;
}
- (UIButton *)VTSignOutButton{
    if (!_VTSignOutButton) {
        _VTSignOutButton = [[UIButton alloc] init];
        [_VTSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_VTSignOutButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _VTSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _VTSignOutButton.titleLabel.numberOfLines = 0;
        _VTSignOutButton.backgroundColor = [UIColor cyanColor];
        _VTSignOutButton.layer.masksToBounds = YES;
        _VTSignOutButton.layer.cornerRadius = 4.0f;
        [_VTSignOutButton addTarget:self action:@selector(VTSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTSignOutButton;
}
@end
