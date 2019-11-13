//
//  KTMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTMineViewController.h"
#import "KTPasswordChangeViewController.h"
#import "KTLoginViewController.h"

@interface KTMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *KTBackView;//背景颜色
@property(nonatomic, strong)UIImageView *KTImageView;//头像
@property(nonatomic, copy)NSString *KTnickname;
@property(nonatomic, strong)UILabel *KTNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *KTNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean KTIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *KTNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *KTChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *KTSignOutButton;//登录或者退出
@end

@implementation KTMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    [self KTSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)KTSetContentView{
    [self.view addSubview:self.KTBackView];
    [self.KTBackView addSubview:self.KTImageView];
    [self.KTBackView addSubview:self.KTNickNameLabel];
    [self.KTBackView addSubview:self.KTNicknameTextField];
    [self.KTBackView addSubview:self.KTNicknameButton];
    [self.view addSubview:self.KTChangePasswordButton];
    [self.view addSubview:self.KTSignOutButton];
    
    [self.KTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(KTHEIGHT / 3);
    }];
    [self.KTImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTBackView);
        make.centerY.equalTo(self.KTBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.KTNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTBackView);
        make.top.equalTo(self.KTImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.KTNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.KTBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.KTNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.KTNicknameTextField);
        make.leading.equalTo(self.KTNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.KTChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((KTWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.KTSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((KTWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.KTNicknameTextField resignFirstResponder];
    self.KTIsEdit = NO;
  self.KTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)KTNicknameButtonAction:(UIButton *)sender{
    self.KTIsEdit = !self.KTIsEdit;
    if (self.KTIsEdit) {
        self.KTNicknameTextField.userInteractionEnabled = YES;
        [self.KTNicknameTextField becomeFirstResponder];
    }else{
        self.KTNicknameTextField.userInteractionEnabled = NO;
        [self.KTNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)KTChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    KTPasswordChangeViewController *pacVC = [[KTPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)KTSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    KTLoginViewController *loginVC = [KTLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    KTKeyWindow.rootViewController = loginVCNav;
}
- (void)KTNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.KTnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD KTshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD KTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.KTnickname.length && ![self.KTnickname isEqualToString:textField.text]) {
        self.KTnickname = textField.text;
        [self KTNicknameUpdate];
    }
    self.KTIsEdit = NO;
    self.KTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)KTBackView{
    if (!_KTBackView) {
        _KTBackView = [[UIView alloc] init];
        _KTBackView.backgroundColor = KTH_Color(0, 204, 131, 1);
    }
    return _KTBackView;
}
- (UIImageView *)KTImageView{
    if (!_KTImageView) {
        _KTImageView = [[UIImageView alloc] init];
        _KTImageView.image = [UIImage imageNamed:@"KT_mine_football"];
        _KTImageView.layer.masksToBounds = YES;
        _KTImageView.layer.cornerRadius = 50.0f;
    }
    return _KTImageView;
}
- (UILabel *)KTNickNameLabel{
    if (!_KTNickNameLabel) {
        _KTNickNameLabel = [[UILabel alloc] init];
        _KTNickNameLabel.textColor = [UIColor cyanColor];
        _KTNickNameLabel.font = [UIFont systemFontOfSize:18];
        _KTNickNameLabel.numberOfLines = 0;
        _KTNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _KTNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _KTNickNameLabel;
}
- (UITextField *)KTNicknameTextField{
    if (!_KTNicknameTextField) {
        _KTNicknameTextField = [[UITextField alloc] init];
        _KTNicknameTextField.delegate = self;
        _KTNicknameTextField.textColor = [UIColor blackColor];
        _KTNicknameTextField.font = [UIFont systemFontOfSize:22];
        _KTNicknameTextField.backgroundColor = [UIColor whiteColor];
        _KTNicknameTextField.layer.borderColor = [UIColor redColor].CGColor;
        _KTNicknameTextField.layer.borderWidth = 1.0f;
        _KTNicknameTextField.layer.cornerRadius = 3.0f;
        _KTNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _KTNicknameTextField.text = [user objectForKey:@"username"];
            self.KTnickname = [user objectForKey:@"username"];
        }
    _KTNicknameTextField.userInteractionEnabled = NO;
    }
    return _KTNicknameTextField;
}
- (UIButton *)KTNicknameButton{
    if (!_KTNicknameButton) {
        _KTNicknameButton = [[UIButton alloc] init];
        [_KTNicknameButton setImage:[UIImage imageNamed:@"KT_btc_edit"] forState:UIControlStateNormal];
        [_KTNicknameButton addTarget:self action:@selector(KTNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTNicknameButton;
}
- (UIButton *)KTChangePasswordButton{
    if (!_KTChangePasswordButton) {
        _KTChangePasswordButton = [[UIButton alloc] init];
        [_KTChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_KTChangePasswordButton setTitleColor:KTH_Color(0, 204, 131, 1) forState:UIControlStateNormal];
        _KTChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _KTChangePasswordButton.titleLabel.numberOfLines = 0;
        _KTChangePasswordButton.backgroundColor = [UIColor whiteColor];
        _KTChangePasswordButton.layer.masksToBounds = YES;
        _KTChangePasswordButton.layer.cornerRadius = 8.0f;
        [_KTChangePasswordButton addTarget:self action:@selector(KTChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTChangePasswordButton;
}
- (UIButton *)KTSignOutButton{
    if (!_KTSignOutButton) {
        _KTSignOutButton = [[UIButton alloc] init];
        [_KTSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_KTSignOutButton setTitleColor:KTH_Color(0, 204, 131, 1) forState:UIControlStateNormal];
        _KTSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
     _KTSignOutButton.titleLabel.numberOfLines = 0;
        _KTSignOutButton.backgroundColor = [UIColor whiteColor];
        _KTSignOutButton.layer.masksToBounds = YES;
        _KTSignOutButton.layer.cornerRadius = 8.0f;
        [_KTSignOutButton addTarget:self action:@selector(KTSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTSignOutButton;
}
@end
