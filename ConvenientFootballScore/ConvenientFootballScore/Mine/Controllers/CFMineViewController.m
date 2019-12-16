//
//  CFMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "CFMineViewController.h"
#import "CFPasswordChangeViewController.h"
#import "CFLoginViewController.h"

@interface CFMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *CFBackView;//背景颜色
@property(nonatomic, strong)UIImageView *CFImageView;//头像
@property(nonatomic, copy)NSString *CFnickname;
@property(nonatomic, strong)UILabel *CFNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *CFNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean CFIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *CFNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *CFChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *CFSignOutButton;//登录或者退出
@end

@implementation CFMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    [self CFSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)CFSetContentView{
    [self.view addSubview:self.CFBackView];
    [self.CFBackView addSubview:self.CFImageView];
    [self.CFBackView addSubview:self.CFNickNameLabel];
    [self.CFBackView addSubview:self.CFNicknameTextField];
    [self.CFBackView addSubview:self.CFNicknameButton];
    [self.view addSubview:self.CFChangePasswordButton];
    [self.view addSubview:self.CFSignOutButton];
    
    [self.CFBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(CFHEIGHT / 3);
    }];
    [self.CFImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFBackView);
        make.centerY.equalTo(self.CFBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.CFNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.CFBackView);
        make.top.equalTo(self.CFImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.CFNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.CFBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.CFNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.CFNicknameTextField);
        make.leading.equalTo(self.CFNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.CFChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((CFWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.CFSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.CFBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((CFWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.CFNicknameTextField resignFirstResponder];
    self.CFIsEdit = NO;
  self.CFNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)CFNicknameButtonAction:(UIButton *)sender{
    self.CFIsEdit = !self.CFIsEdit;
    if (self.CFIsEdit) {
        self.CFNicknameTextField.userInteractionEnabled = YES;
        [self.CFNicknameTextField becomeFirstResponder];
    }else{
        self.CFNicknameTextField.userInteractionEnabled = NO;
        [self.CFNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)CFChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    CFPasswordChangeViewController *pacVC = [[CFPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)CFSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    CFLoginViewController *loginVC = [CFLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    CFKeyWindow.rootViewController = loginVCNav;
}
- (void)CFNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.CFnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD CFshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD CFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.CFnickname.length && ![self.CFnickname isEqualToString:textField.text]) {
        self.CFnickname = textField.text;
        [self CFNicknameUpdate];
    }
    self.CFIsEdit = NO;
    self.CFNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)CFBackView{
    if (!_CFBackView) {
        _CFBackView = [[UIView alloc] init];
        _CFBackView.backgroundColor = CFH_Color(0, 204, 131, 1);
    }
    return _CFBackView;
}
- (UIImageView *)CFImageView{
    if (!_CFImageView) {
        _CFImageView = [[UIImageView alloc] init];
        _CFImageView.image = [UIImage imageNamed:@"CF_mine_football"];
        _CFImageView.layer.masksToBounds = YES;
        _CFImageView.layer.cornerRadius = 50.0f;
    }
    return _CFImageView;
}
- (UILabel *)CFNickNameLabel{
    if (!_CFNickNameLabel) {
        _CFNickNameLabel = [[UILabel alloc] init];
        _CFNickNameLabel.textColor = [UIColor cyanColor];
        _CFNickNameLabel.font = [UIFont systemFontOfSize:18];
        _CFNickNameLabel.numberOfLines = 0;
        _CFNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _CFNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _CFNickNameLabel;
}
- (UITextField *)CFNicknameTextField{
    if (!_CFNicknameTextField) {
        _CFNicknameTextField = [[UITextField alloc] init];
        _CFNicknameTextField.delegate = self;
        _CFNicknameTextField.textColor = [UIColor blackColor];
        _CFNicknameTextField.font = [UIFont systemFontOfSize:22];
        _CFNicknameTextField.backgroundColor = [UIColor whiteColor];
        _CFNicknameTextField.layer.borderColor = [UIColor redColor].CGColor;
        _CFNicknameTextField.layer.borderWidth = 1.0f;
        _CFNicknameTextField.layer.cornerRadius = 3.0f;
        _CFNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _CFNicknameTextField.text = [user objectForKey:@"username"];
            self.CFnickname = [user objectForKey:@"username"];
        }
    _CFNicknameTextField.userInteractionEnabled = NO;
    }
    return _CFNicknameTextField;
}
- (UIButton *)CFNicknameButton{
    if (!_CFNicknameButton) {
        _CFNicknameButton = [[UIButton alloc] init];
        [_CFNicknameButton setImage:[UIImage imageNamed:@"CF_btc_edit"] forState:UIControlStateNormal];
        [_CFNicknameButton addTarget:self action:@selector(CFNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFNicknameButton;
}
- (UIButton *)CFChangePasswordButton{
    if (!_CFChangePasswordButton) {
        _CFChangePasswordButton = [[UIButton alloc] init];
        [_CFChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_CFChangePasswordButton setTitleColor:CFH_Color(0, 204, 131, 1) forState:UIControlStateNormal];
        _CFChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _CFChangePasswordButton.titleLabel.numberOfLines = 0;
        _CFChangePasswordButton.backgroundColor = [UIColor whiteColor];
        _CFChangePasswordButton.layer.masksToBounds = YES;
        _CFChangePasswordButton.layer.cornerRadius = 8.0f;
        [_CFChangePasswordButton addTarget:self action:@selector(CFChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFChangePasswordButton;
}
- (UIButton *)CFSignOutButton{
    if (!_CFSignOutButton) {
        _CFSignOutButton = [[UIButton alloc] init];
        [_CFSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_CFSignOutButton setTitleColor:CFH_Color(0, 204, 131, 1) forState:UIControlStateNormal];
        _CFSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
     _CFSignOutButton.titleLabel.numberOfLines = 0;
        _CFSignOutButton.backgroundColor = [UIColor whiteColor];
        _CFSignOutButton.layer.masksToBounds = YES;
        _CFSignOutButton.layer.cornerRadius = 8.0f;
        [_CFSignOutButton addTarget:self action:@selector(CFSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CFSignOutButton;
}
@end
