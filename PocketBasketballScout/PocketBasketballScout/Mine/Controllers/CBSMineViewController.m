//
//  CBSMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CBSMineViewController.h"
#import "CBSPasswordChangeViewController.h"
#import "CBSLoginViewController.h"

@interface CBSMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CBSBackView;//背景颜色
@property(nonatomic, strong)UIImageView *CBSImageView;//头像
@property(nonatomic, copy)NSString *CBSnickname;
@property(nonatomic, strong)UILabel *CBSNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *CBSNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean CBSIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *CBSNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *CBSChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *CBSSignOutButton;//登录或者退出
@end

@implementation CBSMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self CBSSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CBSSetContentView{
    [self.view addSubview:self.CBSBackView];
    [self.CBSBackView addSubview:self.CBSImageView];
    [self.CBSBackView addSubview:self.CBSNickNameLabel];
    [self.CBSBackView addSubview:self.CBSNicknameTextField];
    [self.CBSBackView addSubview:self.CBSNicknameButton];
    [self.view addSubview:self.CBSChangePasswordButton];
    [self.view addSubview:self.CBSSignOutButton];
    
    [self.CBSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(CBSHEIGHT / 3 + 60);
    }];
    [self.CBSImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSBackView);
        make.centerY.equalTo(self.CBSBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.CBSNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CBSBackView);
        make.top.equalTo(self.CBSImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.CBSNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.CBSBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.CBSNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CBSNicknameTextField);
        make.leading.equalTo(self.CBSNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.CBSChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((CBSWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.CBSSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CBSBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((CBSWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.CBSNicknameTextField resignFirstResponder];
    self.CBSIsEdit = NO;
  self.CBSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)CBSNicknameButtonAction:(UIButton *)sender{
    self.CBSIsEdit = !self.CBSIsEdit;
    if (self.CBSIsEdit) {
        self.CBSNicknameTextField.userInteractionEnabled = YES;
        [self.CBSNicknameTextField becomeFirstResponder];
    }else{
        self.CBSNicknameTextField.userInteractionEnabled = NO;
        [self.CBSNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)CBSChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    CBSPasswordChangeViewController *pacVC = [[CBSPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)CBSSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    CBSLoginViewController *loginVC = [CBSLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    CBSKeyWindow.rootViewController = loginVCNav;
}
- (void)CBSNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.CBSnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD CBSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.CBSnickname.length && ![self.CBSnickname isEqualToString:textField.text]) {
        self.CBSnickname = textField.text;
        [self CBSNicknameUpdate];
    }
    self.CBSIsEdit = NO;
    self.CBSNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)CBSBackView{
    if (!_CBSBackView) {
        _CBSBackView = [[UIView alloc] init];
        _CBSBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _CBSBackView;
}
- (UIImageView *)CBSImageView{
    if (!_CBSImageView) {
        _CBSImageView = [[UIImageView alloc] init];
        _CBSImageView.image = [UIImage imageNamed:@"CBS_mine_football"];
        _CBSImageView.layer.masksToBounds = YES;
        _CBSImageView.layer.cornerRadius = 50.0f;
    }
    return _CBSImageView;
}
- (UILabel *)CBSNickNameLabel{
    if (!_CBSNickNameLabel) {
        _CBSNickNameLabel = [[UILabel alloc] init];
        _CBSNickNameLabel.textColor = [UIColor greenColor];
        _CBSNickNameLabel.font = [UIFont systemFontOfSize:18];
        _CBSNickNameLabel.numberOfLines = 0;
        _CBSNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _CBSNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _CBSNickNameLabel;
}
- (UITextField *)CBSNicknameTextField{
    if (!_CBSNicknameTextField) {
        _CBSNicknameTextField = [[UITextField alloc] init];
        _CBSNicknameTextField.delegate = self;
        _CBSNicknameTextField.textColor = [UIColor systemYellowColor];
        _CBSNicknameTextField.font = [UIFont systemFontOfSize:22];
        _CBSNicknameTextField.backgroundColor = [UIColor cyanColor];
        _CBSNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _CBSNicknameTextField.layer.borderWidth = 2.0f;
        _CBSNicknameTextField.layer.cornerRadius = 6.0f;
        _CBSNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _CBSNicknameTextField.text = [user objectForKey:@"username"];
            self.CBSnickname = [user objectForKey:@"username"];
        }
    _CBSNicknameTextField.userInteractionEnabled = NO;
    }
    return _CBSNicknameTextField;
}
- (UIButton *)CBSNicknameButton{
    if (!_CBSNicknameButton) {
        _CBSNicknameButton = [[UIButton alloc] init];
        [_CBSNicknameButton setImage:[UIImage imageNamed:@"CBS_btc_edit"] forState:UIControlStateNormal];
        [_CBSNicknameButton addTarget:self action:@selector(CBSNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSNicknameButton;
}
- (UIButton *)CBSChangePasswordButton{
    if (!_CBSChangePasswordButton) {
        _CBSChangePasswordButton = [[UIButton alloc] init];
        [_CBSChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_CBSChangePasswordButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _CBSChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CBSChangePasswordButton.titleLabel.numberOfLines = 0;
        _CBSChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _CBSChangePasswordButton.layer.masksToBounds = YES;
        _CBSChangePasswordButton.layer.cornerRadius = 16.0f;
        [_CBSChangePasswordButton addTarget:self action:@selector(CBSChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSChangePasswordButton;
}
- (UIButton *)CBSSignOutButton{
    if (!_CBSSignOutButton) {
        _CBSSignOutButton = [[UIButton alloc] init];
        [_CBSSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_CBSSignOutButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        _CBSSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CBSSignOutButton.titleLabel.numberOfLines = 0;
        _CBSSignOutButton.backgroundColor = [UIColor cyanColor];
        _CBSSignOutButton.layer.masksToBounds = YES;
        _CBSSignOutButton.layer.cornerRadius = 16.0f;
        [_CBSSignOutButton addTarget:self action:@selector(CBSSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CBSSignOutButton;
}
@end
