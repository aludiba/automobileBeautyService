//
//  AJModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJModifyNicknameViewController.h"

@interface AJModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AJconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *AJsureButton;
@end

@implementation AJModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self AJsetContent];
}
- (void)AJsetContent{
    self.view.backgroundColor = AJH_Color(44, 77, 93, 1);
    [self.view addSubview:self.AJconfirmNickNameTextField];
    [self.view addSubview:self.AJsureButton];
    
    [self.AJconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(120);
        make.height.mas_equalTo(60);
    }];
    [self.AJsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AJconfirmNickNameTextField.mas_bottom).offset(150);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AJbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.AJnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.AJmodifynicknameB) {
                self.AJmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD AJshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.AJnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.AJnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.AJnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AJconfirmNickNameTextField{
    if (!_AJconfirmNickNameTextField) {
        _AJconfirmNickNameTextField = [[UITextField alloc] init];
        _AJconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AJconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _AJconfirmNickNameTextField.layer.masksToBounds = YES;
        _AJconfirmNickNameTextField.layer.borderWidth = 2.0f;
        _AJconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AJconfirmNickNameTextField.tag = 102;
        _AJconfirmNickNameTextField.delegate = self;
        _AJconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _AJconfirmNickNameTextField.textColor = [UIColor blackColor];
        _AJconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _AJconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.AJnickname = [user objectForKey:@"username"];
        }
    }
    return _AJconfirmNickNameTextField;
}
- (UIButton *)AJsureButton{
    if (!_AJsureButton) {
        _AJsureButton = [[UIButton alloc] init];
        _AJsureButton.backgroundColor = AJH_Color(24, 50, 62, 1);
        [_AJsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _AJsureButton.layer.cornerRadius = 16.0f;
        _AJsureButton.layer.masksToBounds = YES;
        _AJsureButton.layer.borderWidth = 2.0f;
        _AJsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AJsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AJsureButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJsureButton;
}
@end
