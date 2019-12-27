//
//  AFSMineViewController.m
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSMineViewController.h"
#import "AFSPasswordChangeViewController.h"
#import "AFSLoginViewController.h"

@interface AFSMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AFSBackView;//背景颜色
@property(nonatomic, strong)UIImageView *AFSImageView;//头像
@property(nonatomic, copy)NSString *AFSnickname;
@property(nonatomic, strong)UILabel *AFSNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *AFSNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean AFSIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *AFSNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *AFSChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *AFSSignOutButton;//登录或者退出
@end

@implementation AFSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    [self AFSSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)AFSSetContentView{
    [self.view addSubview:self.AFSBackView];
    [self.AFSBackView addSubview:self.AFSImageView];
    [self.AFSBackView addSubview:self.AFSNickNameLabel];
    [self.AFSBackView addSubview:self.AFSNicknameTextField];
    [self.AFSBackView addSubview:self.AFSNicknameButton];
    [self.view addSubview:self.AFSChangePasswordButton];
    [self.view addSubview:self.AFSSignOutButton];
    
    [self.AFSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(AFSHEIGHT / 3);
    }];
    [self.AFSImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSBackView.mas_centerX).offset(-50);
        make.centerY.equalTo(self.AFSBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.AFSNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSBackView.mas_centerX).offset(60);
        make.centerY.equalTo(self.AFSImageView);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.AFSNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSImageView.mas_bottom).offset(10);
        make.centerX.equalTo(self.AFSBackView);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(40);
    }];
    [self.AFSNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFSNicknameTextField);
        make.leading.equalTo(self.AFSNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.AFSChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSBackView.mas_bottom).offset(30);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((AFSWIDTH - 60));
        make.height.mas_equalTo(60);
    }];
    [self.AFSSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSChangePasswordButton.mas_bottom).offset(25);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((AFSWIDTH - 60));
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.AFSNicknameTextField resignFirstResponder];
    self.AFSIsEdit = NO;
  self.AFSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)AFSNicknameButtonAction:(UIButton *)sender{
    self.AFSIsEdit = !self.AFSIsEdit;
    if (self.AFSIsEdit) {
        self.AFSNicknameTextField.userInteractionEnabled = YES;
        [self.AFSNicknameTextField becomeFirstResponder];
    }else{
        self.AFSNicknameTextField.userInteractionEnabled = NO;
        [self.AFSNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)AFSChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    AFSPasswordChangeViewController *pacVC = [[AFSPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)AFSSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    AFSLoginViewController *loginVC = [AFSLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    AFSKeyWindow.rootViewController = loginVCNav;
}
- (void)AFSNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.AFSnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD AFSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.AFSnickname.length && ![self.AFSnickname isEqualToString:textField.text]) {
        self.AFSnickname = textField.text;
        [self AFSNicknameUpdate];
    }
    self.AFSIsEdit = NO;
    self.AFSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)AFSBackView{
    if (!_AFSBackView) {
        _AFSBackView = [[UIView alloc] init];
        _AFSBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _AFSBackView;
}
- (UIImageView *)AFSImageView{
    if (!_AFSImageView) {
        _AFSImageView = [[UIImageView alloc] init];
        _AFSImageView.image = [UIImage imageNamed:@"AFS_mine_football"];
        _AFSImageView.layer.masksToBounds = YES;
        _AFSImageView.layer.cornerRadius = 50.0f;
    }
    return _AFSImageView;
}
- (UILabel *)AFSNickNameLabel{
    if (!_AFSNickNameLabel) {
        _AFSNickNameLabel = [[UILabel alloc] init];
        _AFSNickNameLabel.textColor = [UIColor cyanColor];
        _AFSNickNameLabel.font = [UIFont systemFontOfSize:20];
        _AFSNickNameLabel.numberOfLines = 0;
        _AFSNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _AFSNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _AFSNickNameLabel;
}
- (UITextField *)AFSNicknameTextField{
    if (!_AFSNicknameTextField) {
        _AFSNicknameTextField = [[UITextField alloc] init];
        _AFSNicknameTextField.delegate = self;
        _AFSNicknameTextField.textColor = [UIColor blackColor];
        _AFSNicknameTextField.font = [UIFont systemFontOfSize:22];
        _AFSNicknameTextField.backgroundColor = [UIColor greenColor];
        _AFSNicknameTextField.layer.cornerRadius = 3.0f;
        _AFSNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _AFSNicknameTextField.text = [user objectForKey:@"username"];
            self.AFSnickname = [user objectForKey:@"username"];
        }
    _AFSNicknameTextField.userInteractionEnabled = NO;
    }
    return _AFSNicknameTextField;
}
- (UIButton *)AFSNicknameButton{
    if (!_AFSNicknameButton) {
        _AFSNicknameButton = [[UIButton alloc] init];
        [_AFSNicknameButton setImage:[UIImage imageNamed:@"AFS_btc_edit"] forState:UIControlStateNormal];
        [_AFSNicknameButton addTarget:self action:@selector(AFSNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSNicknameButton;
}
- (UIButton *)AFSChangePasswordButton{
    if (!_AFSChangePasswordButton) {
        _AFSChangePasswordButton = [[UIButton alloc] init];
        [_AFSChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_AFSChangePasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _AFSChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _AFSChangePasswordButton.titleLabel.numberOfLines = 0;
        _AFSChangePasswordButton.backgroundColor = [UIColor systemGreenColor];
        _AFSChangePasswordButton.layer.masksToBounds = YES;
        _AFSChangePasswordButton.layer.cornerRadius = 16.0f;
        [_AFSChangePasswordButton addTarget:self action:@selector(AFSChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSChangePasswordButton;
}
- (UIButton *)AFSSignOutButton{
    if (!_AFSSignOutButton) {
        _AFSSignOutButton = [[UIButton alloc] init];
        [_AFSSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_AFSSignOutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _AFSSignOutButton.titleLabel.font = [UIFont systemFontOfSize:25];
     _AFSSignOutButton.titleLabel.numberOfLines = 0;
        _AFSSignOutButton.backgroundColor = [UIColor systemGreenColor];
        _AFSSignOutButton.layer.masksToBounds = YES;
        _AFSSignOutButton.layer.cornerRadius = 16.0f;
        [_AFSSignOutButton addTarget:self action:@selector(AFSSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSSignOutButton;
}
@end
