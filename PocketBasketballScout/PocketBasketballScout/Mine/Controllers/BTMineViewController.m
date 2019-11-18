//
//  BTMineViewController.m
//  PocketScout
//
//  Created by bykj on 2019/11/12.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTMineViewController.h"
#import "BTPasswordChangeViewController.h"
#import "BTLoginViewController.h"

@interface BTMineViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *BTBackView;//背景颜色
@property(nonatomic, strong)UIImageView *BTImageView;//头像
@property(nonatomic, copy)NSString *BTnickname;
@property(nonatomic, strong)UILabel *BTNickNameLabel;//昵称标题
@property(nonatomic, strong)UITextField *BTNicknameTextField;//昵称修改
@property(nonatomic, assign)Boolean BTIsEdit;//是否修改昵称
@property(nonatomic, strong)UIButton *BTNicknameButton;//昵称修改按钮
@property(nonatomic, strong)UIButton *BTChangePasswordButton;//密码修改
@property(nonatomic, strong)UIButton *BTSignOutButton;//登录或者退出
@end

@implementation BTMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self BTSetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.hidden = NO;
}
- (void)BTSetContentView{
    [self.view addSubview:self.BTBackView];
    [self.BTBackView addSubview:self.BTImageView];
    [self.BTBackView addSubview:self.BTNickNameLabel];
    [self.BTBackView addSubview:self.BTNicknameTextField];
    [self.BTBackView addSubview:self.BTNicknameButton];
    [self.view addSubview:self.BTChangePasswordButton];
    [self.view addSubview:self.BTSignOutButton];
    
    [self.BTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.mas_topLayoutGuideTop);
        make.leading.equalTo(self.view);
        make.trailing.equalTo(self.view);
        make.height.mas_equalTo(BTHEIGHT / 3);
    }];
    [self.BTImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTBackView);
        make.centerY.equalTo(self.BTBackView);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
    }];
    [self.BTNickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTBackView);
        make.top.equalTo(self.BTImageView.mas_bottom).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];
    [self.BTNicknameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTNickNameLabel.mas_bottom).offset(10);
        make.centerX.equalTo(self.BTBackView.mas_centerX).offset(-20);
        make.width.mas_equalTo(80);
        make.height.mas_equalTo(30);
    }];
    [self.BTNicknameButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BTNicknameTextField);
        make.leading.equalTo(self.BTNicknameTextField.mas_trailing).offset(5);
        make.width.mas_equalTo(29);
        make.height.mas_equalTo(29);
    }];
    [self.BTChangePasswordButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTBackView.mas_bottom).offset(15);
        make.leading.equalTo(self.view).offset(16);
        make.width.mas_equalTo((BTWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    [self.BTSignOutButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTBackView.mas_bottom).offset(15);
        make.trailing.equalTo(self.view).offset(-16);
        make.width.mas_equalTo((BTWIDTH - 52) * 0.5);
        make.height.mas_equalTo(120);
    }];
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyBoard)];
    [self.view addGestureRecognizer:tapGes];
}
#pragma mark - action
#pragma mark - 关闭键盘
- (void)closeKeyBoard{
    [self.BTNicknameTextField resignFirstResponder];
    self.BTIsEdit = NO;
  self.BTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 昵称更新
- (void)BTNicknameButtonAction:(UIButton *)sender{
    self.BTIsEdit = !self.BTIsEdit;
    if (self.BTIsEdit) {
        self.BTNicknameTextField.userInteractionEnabled = YES;
        [self.BTNicknameTextField becomeFirstResponder];
    }else{
        self.BTNicknameTextField.userInteractionEnabled = NO;
        [self.BTNicknameTextField resignFirstResponder];
    }
}
#pragma mark - 密码更新
- (void)BTChangePasswordAction:(UIButton *)sender{
    NSLog(@"密码更新~~~");
    BTPasswordChangeViewController *pacVC = [[BTPasswordChangeViewController alloc] init];
    pacVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:pacVC animated:YES];
}
#pragma mark - 登录或者退出
- (void)BTSignOutAction:(UIButton *)sender{
    NSLog(@"登录或者退出~~~");
    [BmobUser logout];
    BTLoginViewController *loginVC = [BTLoginViewController shareInstance];
    loginVC.type = 0;
    UINavigationController *loginVCNav = [[UINavigationController alloc] initWithRootViewController:loginVC];
    BTKeyWindow.rootViewController = loginVCNav;
}
- (void)BTNicknameUpdate{
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.BTnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
        [MBProgressHUD BTshowReminderText:NSLocalizedString(@"更新成功", nil)];
        }else{
            [MBProgressHUD BTshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
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
    if (self.BTnickname.length && ![self.BTnickname isEqualToString:textField.text]) {
        self.BTnickname = textField.text;
        [self BTNicknameUpdate];
    }
    self.BTIsEdit = NO;
    self.BTNicknameTextField.userInteractionEnabled = NO;
}
#pragma mark - 属性懒加载
- (UIView *)BTBackView{
    if (!_BTBackView) {
        _BTBackView = [[UIView alloc] init];
        _BTBackView.backgroundColor = [UIColor systemRedColor];
    }
    return _BTBackView;
}
- (UIImageView *)BTImageView{
    if (!_BTImageView) {
        _BTImageView = [[UIImageView alloc] init];
        _BTImageView.image = [UIImage imageNamed:@"BT_mine_football"];
        _BTImageView.layer.masksToBounds = YES;
        _BTImageView.layer.cornerRadius = 50.0f;
    }
    return _BTImageView;
}
- (UILabel *)BTNickNameLabel{
    if (!_BTNickNameLabel) {
        _BTNickNameLabel = [[UILabel alloc] init];
        _BTNickNameLabel.textColor = [UIColor greenColor];
        _BTNickNameLabel.font = [UIFont systemFontOfSize:18];
        _BTNickNameLabel.numberOfLines = 0;
        _BTNickNameLabel.text = NSLocalizedString(@"昵称", nil);
        _BTNickNameLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _BTNickNameLabel;
}
- (UITextField *)BTNicknameTextField{
    if (!_BTNicknameTextField) {
        _BTNicknameTextField = [[UITextField alloc] init];
        _BTNicknameTextField.delegate = self;
        _BTNicknameTextField.textColor = [UIColor systemYellowColor];
        _BTNicknameTextField.font = [UIFont systemFontOfSize:22];
        _BTNicknameTextField.backgroundColor = [UIColor cyanColor];
        _BTNicknameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BTNicknameTextField.layer.borderWidth = 2.0f;
        _BTNicknameTextField.layer.cornerRadius = 6.0f;
        _BTNicknameTextField.layer.masksToBounds = YES;
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _BTNicknameTextField.text = [user objectForKey:@"username"];
            self.BTnickname = [user objectForKey:@"username"];
        }
    _BTNicknameTextField.userInteractionEnabled = NO;
    }
    return _BTNicknameTextField;
}
- (UIButton *)BTNicknameButton{
    if (!_BTNicknameButton) {
        _BTNicknameButton = [[UIButton alloc] init];
        [_BTNicknameButton setImage:[UIImage imageNamed:@"BT_btc_edit"] forState:UIControlStateNormal];
        [_BTNicknameButton addTarget:self action:@selector(BTNicknameButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTNicknameButton;
}
- (UIButton *)BTChangePasswordButton{
    if (!_BTChangePasswordButton) {
        _BTChangePasswordButton = [[UIButton alloc] init];
        [_BTChangePasswordButton setTitle:NSLocalizedString(@"更改密码", nil) forState:UIControlStateNormal];
        [_BTChangePasswordButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTChangePasswordButton.titleLabel.font = [UIFont systemFontOfSize:20];
        _BTChangePasswordButton.titleLabel.numberOfLines = 0;
        _BTChangePasswordButton.backgroundColor = [UIColor cyanColor];
        _BTChangePasswordButton.layer.masksToBounds = YES;
        _BTChangePasswordButton.layer.cornerRadius = 16.0f;
        [_BTChangePasswordButton addTarget:self action:@selector(BTChangePasswordAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTChangePasswordButton;
}
- (UIButton *)BTSignOutButton{
    if (!_BTSignOutButton) {
        _BTSignOutButton = [[UIButton alloc] init];
        [_BTSignOutButton setTitle:NSLocalizedString(@"退出", nil) forState:UIControlStateNormal];
        [_BTSignOutButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _BTSignOutButton.titleLabel.font = [UIFont systemFontOfSize:20];
     _BTSignOutButton.titleLabel.numberOfLines = 0;
        _BTSignOutButton.backgroundColor = [UIColor cyanColor];
        _BTSignOutButton.layer.masksToBounds = YES;
        _BTSignOutButton.layer.cornerRadius = 16.0f;
        [_BTSignOutButton addTarget:self action:@selector(BTSignOutAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTSignOutButton;
}
@end
