//
//  AFModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFModifyNicknameViewController.h"

@interface AFModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AFconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *AFsureButton;
@end

@implementation AFModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self AFsetContent];
}
- (void)AFsetContent{
    self.view.backgroundColor = AFH_Color(44, 77, 93, 1);
    [self.view addSubview:self.AFconfirmNickNameTextField];
    [self.view addSubview:self.AFsureButton];
    
    [self.AFconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(120);
        make.height.mas_equalTo(60);
    }];
    [self.AFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AFconfirmNickNameTextField.mas_bottom).offset(150);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.AFnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.AFmodifynicknameB) {
                self.AFmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD AFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.AFnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.AFnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.AFnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AFconfirmNickNameTextField{
    if (!_AFconfirmNickNameTextField) {
        _AFconfirmNickNameTextField = [[UITextField alloc] init];
        _AFconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AFconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _AFconfirmNickNameTextField.layer.masksToBounds = YES;
        _AFconfirmNickNameTextField.layer.borderWidth = 2.0f;
        _AFconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AFconfirmNickNameTextField.tag = 102;
        _AFconfirmNickNameTextField.delegate = self;
        _AFconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _AFconfirmNickNameTextField.textColor = [UIColor blackColor];
        _AFconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _AFconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.AFnickname = [user objectForKey:@"username"];
        }
    }
    return _AFconfirmNickNameTextField;
}
- (UIButton *)AFsureButton{
    if (!_AFsureButton) {
        _AFsureButton = [[UIButton alloc] init];
        _AFsureButton.backgroundColor = AFH_Color(24, 50, 62, 1);
        [_AFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _AFsureButton.layer.cornerRadius = 16.0f;
        _AFsureButton.layer.masksToBounds = YES;
        _AFsureButton.layer.borderWidth = 2.0f;
        _AFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AFsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AFsureButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFsureButton;
}
@end
