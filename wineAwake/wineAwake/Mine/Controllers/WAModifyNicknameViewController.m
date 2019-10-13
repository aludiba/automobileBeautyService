//
//  WAModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "WAModifyNicknameViewController.h"

@interface WAModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *WAconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *WAsureButton;
@end

@implementation WAModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self WAsetContent];
}
- (void)WAsetContent{
    self.view.backgroundColor = WAH_Color(244, 245, 246, 1);
    [self.view addSubview:self.WAconfirmNickNameTextField];
    [self.view addSubview:self.WAsureButton];
    
    [self.WAconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.WAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.WAconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.WAnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD WAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD WAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.WAnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.WAnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.WAnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)WAconfirmNickNameTextField{
    if (!_WAconfirmNickNameTextField) {
        _WAconfirmNickNameTextField = [[UITextField alloc] init];
        _WAconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _WAconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _WAconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _WAconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _WAconfirmNickNameTextField.layer.masksToBounds = YES;
        _WAconfirmNickNameTextField.tag = 102;
        _WAconfirmNickNameTextField.delegate = self;
        _WAconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _WAconfirmNickNameTextField.textColor = [UIColor blackColor];
        _WAconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _WAconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.WAnickname = [user objectForKey:@"username"];
        }
    }
    return _WAconfirmNickNameTextField;
}
- (UIButton *)WAsureButton{
    if (!_WAsureButton) {
        _WAsureButton = [[UIButton alloc] init];
        _WAsureButton.backgroundColor = [UIColor purpleColor];
        [_WAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_WAsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _WAsureButton.layer.cornerRadius = 8.0f;
        _WAsureButton.layer.masksToBounds = YES;
        [_WAsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_WAsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _WAsureButton;
}
@end
