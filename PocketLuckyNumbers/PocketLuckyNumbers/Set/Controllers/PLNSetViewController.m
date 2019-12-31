//
//  PLNSetViewController.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2019/12/27.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNSetViewController.h"
#import "PLNPasswordChangeViewController.h"
#import "PLNLoginViewController.h"
@interface PLNSetViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *PLNBackView;//背景颜色
@property(nonatomic, strong)UIImageView *PLNImageView;//头像
@property(nonatomic, copy)NSString *PLNnickname;
@property(nonatomic, strong)UILabel *PLNNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *PLNNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean PLNIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *PLNNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *PLNChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *PLNSignOutButton;//登录或者退出
@end

@implementation PLNSetViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    [self PLNSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)PLNSetContentView{
    [self.view addSubview:self.PLNBackView];
    [self.PLNBackView addSubview:self.PLNImageView];
    [self.PLNBackView addSubview:self.PLNNickNameLabel];
    [self.PLNBackView addSubview:self.PLNNicknameTextField];
    [self.PLNBackView addSubview:self.PLNNicknameButton];
    [self.view addSubview:self.PLNChangePasswordButton];
    [self.view addSubview:self.PLNSignOutButton];
    
    [self.PLNBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(PLNHEIGHT / 3);
    }];
    [self.PLNImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PLNBackView.mas_centerX);
        make.centerY.equalTo(self.PLNBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.PLNNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PLNBackView.mas_centerX);
        make.top.equalTo(self.PLNImageView.mas_bottom).offset(5);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.PLNNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PLNNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.PLNBackView);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(40);
    }];
    [self.PLNNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.PLNNicknameTextField);
        make.leading.equalTo(self.PLNNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.PLNChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PLNBackView.mas_bottom).offset(50);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((PLNWIDTH - 60));
        make.height.mas_equalTo(60);
    }];
    [self.PLNSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.PLNChangePasswordButton.mas_bottom).offset(45);
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo((PLNWIDTH - 60));
        make.height.mas_equalTo(60);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.PLNNicknameTextField resignFirstResponder];
    self.PLNIsEdit = NO;
  self.PLNNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)PLNNicknameButtonAction:(UIButton *)sender{
    self.PLNIsEdit = !self.PLNIsEdit;
    if (self.PLNIsEdit) {
        self.PLNNicknameTextField.userInteractionEnabled = YES;
        [self.PLNNicknameTextField becomeFirstResponder];
    }else{
        self.PLNNicknameTextField.userInteractionEnabled = NO;
        [self.PLNNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)PLNChangePasswordAction:(UIButton *)sender{
    PLNPasswordChangeViewController *pacVC = [[PLNPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)PLNSignOutAction:(UIButton *)sender{
    [BmobUser logout];
    PLNLoginViewController *loginVC = [PLNLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    PLNKeyWindow.rootViewController = loginVCNav;
}
- (void)PLNNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.PLNnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD PLNshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.PLNnickname.length && ![self.PLNnickname isEqualToString:textField.text]) {
        self.PLNnickname = textField.text;
        [self PLNNicknameUpdate];
    }
    self.PLNIsEdit = NO;
    self.PLNNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)PLNBackView{
    if (!_PLNBackView) {
        _PLNBackView = [[UIView alloc] init];
        _PLNBackView.backgroundColor = [UIColor systemRedColor];
    }
    return _PLNBackView;
}
- (UIImageView *)PLNImageView{
    if (!_PLNImageView) {
        _PLNImageView = [[UIImageView alloc] init];
        _PLNImageView.image = [UIImage imageNamed:@"PLN_Set"];
        _PLNImageView.layer.masksToBounds = YES;
        _PLNImageView.layer.cornerRadius = 50.0f;
    }
    return _PLNImageView;
}
- (UILabel *)PLNNickNameLabel{
    if (!_PLNNickNameLabel) {
        _PLNNickNameLabel = [[UILabel alloc] init];
        _PLNNickNameLabel.textColor = [UIColor cyanColor];
        _PLNNickNameLabel.font = [UIFont systemFontOfSize:20];
        _PLNNickNameLabel.numberOfLines = 0;
        _PLNNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _PLNNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _PLNNickNameLabel;
}
- (UITextField *)PLNNicknameTextField{
    if (!_PLNNicknameTextField) {
        _PLNNicknameTextField = [[UITextField alloc] init];
        _PLNNicknameTextField.delegate = self;
        _PLNNicknameTextField.textColor = [UIColor blackColor];
        _PLNNicknameTextField.font = [UIFont systemFontOfSize:22];
        _PLNNicknameTextField.backgroundColor = [UIColor greenColor];
        _PLNNicknameTextField.layer.cornerRadius = 3.0f;
        _PLNNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PLNNicknameTextField.text = [user objectForKey:@"username"];
            self.PLNnickname = [user objectForKey:@"username"];
        }
    _PLNNicknameTextField.userInteractionEnabled = NO;
    }
    return _PLNNicknameTextField;
}
- (UIButton *)PLNNicknameButton{
    if (!_PLNNicknameButton) {
        _PLNNicknameButton = [[UIButton alloc] init];
        [_PLNNicknameButton setImage:[UIImage imageNamed:@"PLN_btc_edit"] forState:UIControlStateNormal];
        [_PLNNicknameButton addTarget:self action:@selector(PLNNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNNicknameButton;
}
- (UIButton *)PLNChangePasswordButton{
    if (!_PLNChangePasswordButton) {
        _PLNChangePasswordButton = [[UIButton alloc] init];
        [_PLNChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_PLNChangePasswordButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _PLNChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _PLNChangePasswordButton.titleLabel.numberOfLines = 0;
        _PLNChangePasswordButton.backgroundColor = [UIColor systemGreenColor];
        _PLNChangePasswordButton.layer.masksToBounds = YES;
        _PLNChangePasswordButton.layer.cornerRadius = 4.0f;
        [_PLNChangePasswordButton addTarget:self action:@selector(PLNChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNChangePasswordButton;
}
- (UIButton *)PLNSignOutButton{
    if (!_PLNSignOutButton) {
        _PLNSignOutButton = [[UIButton alloc] init];
        [_PLNSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_PLNSignOutButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _PLNSignOutButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _PLNSignOutButton.titleLabel.numberOfLines = 0;
        _PLNSignOutButton.backgroundColor = [UIColor systemGreenColor];
        _PLNSignOutButton.layer.masksToBounds = YES;
        _PLNSignOutButton.layer.cornerRadius = 4.0f;
        [_PLNSignOutButton addTarget:self action:@selector(PLNSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNSignOutButton;
}
@end
