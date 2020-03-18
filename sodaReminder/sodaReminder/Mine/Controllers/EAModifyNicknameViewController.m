//
//  EAModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAModifyNicknameViewController.h"

@interface EAModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *EAconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *EAsureButton;
@end

@implementation EAModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self EAsetContent];
}
- (void)EAsetContent{
    [self.view addSubview:self.EAconfirmNickNameTextField];
    [self.view addSubview:self.EAsureButton];
    
    [self.EAconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(50);
        make.height.mas_equalTo(60);
    }];
    [self.EAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.EAconfirmNickNameTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)EAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.EAnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD EAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.EAnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.EAnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.EAnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)EAconfirmNickNameTextField{
    if (!_EAconfirmNickNameTextField) {
        _EAconfirmNickNameTextField = [[UITextField alloc] init];
        _EAconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EAconfirmNickNameTextField.backgroundColor = [UIColor grayColor];
        _EAconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _EAconfirmNickNameTextField.layer.masksToBounds = YES;
        _EAconfirmNickNameTextField.tag = 102;
        _EAconfirmNickNameTextField.delegate = self;
        _EAconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _EAconfirmNickNameTextField.textColor = [UIColor blackColor];
        _EAconfirmNickNameTextField.font = [UIFont systemFontOfSize:25];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _EAconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.EAnickname = [user objectForKey:@"username"];
        }
    }
    return _EAconfirmNickNameTextField;
}
- (UIButton *)EAsureButton{
    if (!_EAsureButton) {
        _EAsureButton = [[UIButton alloc] init];
        _EAsureButton.backgroundColor = [UIColor purpleColor];
        [_EAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_EAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _EAsureButton.layer.cornerRadius = 16.0f;
        _EAsureButton.layer.masksToBounds = YES;
        [_EAsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_EAsureButton addTarget:self action:@selector(EAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAsureButton;
}
@end
