//
//  EBModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. EBl rights reserved.
//

#import "EBModifyNicknameViewController.h"

@interface EBModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *EBconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *EBsureButton;
@end

@implementation EBModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionEB setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self EBsetContent];
}
- (void)EBsetContent{
    [self.view addSubview:self.EBconfirmNickNameTextField];
    [self.view addSubview:self.EBsureButton];
    
    [self.EBconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.EBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(64);
        make.trailing.equalTo(self.view).offset(-64);
        make.top.equalTo(self.EBconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)EBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.EBnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD EBshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.EBmodifynicknameB) {
                self.EBmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangEBharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.EBnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.EBnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.EBnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)EBconfirmNickNameTextField{
    if (!_EBconfirmNickNameTextField) {
        _EBconfirmNickNameTextField = [[UITextField alloc] init];
        _EBconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _EBconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _EBconfirmNickNameTextField.layer.masksToBounds = YES;
        _EBconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _EBconfirmNickNameTextField.layer.borderColor = [UIColor systemOrangeColor].CGColor;
        _EBconfirmNickNameTextField.tag = 102;
        _EBconfirmNickNameTextField.delegate = self;
        _EBconfirmNickNameTextField.placeholder = [NSString stringWithFormat:NSLocalizedString(@"请输入昵称", nil)];
        _EBconfirmNickNameTextField.textColor = [UIColor blackColor];
        _EBconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _EBconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.EBnickname = [user objectForKey:@"username"];
        }
    }
    return _EBconfirmNickNameTextField;
}
- (UIButton *)EBsureButton{
    if (!_EBsureButton) {
        _EBsureButton = [[UIButton alloc] init];
        _EBsureButton.backgroundColor = [UIColor orangeColor];
        _EBsureButton.layer.cornerRadius = 8.0f;
        _EBsureButton.layer.masksToBounds = YES;
        [_EBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_EBsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_EBsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_EBsureButton addTarget:self action:@selector(EBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBsureButton;
}
@end
