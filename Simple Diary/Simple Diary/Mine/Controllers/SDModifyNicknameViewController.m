//
//  SDModifyNicknameViewController.m
//  Simple Diary
//
//  Created by bykj on 2019/8/9.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDModifyNicknameViewController.h"

@interface SDModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *confirmNickNameTextField;
@property(nonatomic, strong)UIButton *sureButton;
@end

@implementation SDModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self setContent];
}
- (void)setContent{
    [self.view addSubview:self.confirmNickNameTextField];
    [self.view addSubview:self.sureButton];
    
    [self.confirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.sureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.confirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.nickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"用户更新error %@",[error description]);
            [MBProgressHUD SDshowReminderText:[NSString stringWithFormat:@"%@",[error description]]];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.nickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.nickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.nickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)confirmNickNameTextField{
    if (!_confirmNickNameTextField) {
        _confirmNickNameTextField = [[UITextField alloc] init];
        _confirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _confirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _confirmNickNameTextField.layer.borderWidth = 0.5f;
        _confirmNickNameTextField.layer.cornerRadius = 4.0f;
        _confirmNickNameTextField.layer.masksToBounds = YES;
        _confirmNickNameTextField.tag = 102;
        _confirmNickNameTextField.delegate = self;
        _confirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _confirmNickNameTextField.textColor = [UIColor blackColor];
        _confirmNickNameTextField.font = [UIFont systemFontOfSize:15];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _confirmNickNameTextField.text = [user objectForKey:@"username"];
            self.nickname = [user objectForKey:@"username"];
        }
    }
    return _confirmNickNameTextField;
}
- (UIButton *)sureButton{
    if (!_sureButton) {
        _sureButton = [[UIButton alloc] init];
        _sureButton.backgroundColor = [UIColor blueColor];
        [_sureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _sureButton.layer.cornerRadius = 4.0f;
        _sureButton.layer.masksToBounds = YES;
        [_sureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_sureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sureButton;
}
@end
