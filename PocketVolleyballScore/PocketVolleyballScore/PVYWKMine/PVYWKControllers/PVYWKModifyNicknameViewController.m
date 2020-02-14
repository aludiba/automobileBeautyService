//
//  PVYWKModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKModifyNicknameViewController.h"

@interface PVYWKModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVYWKconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PVYWKsureButton;
@end

@implementation PVYWKModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PVYWKsetContent];
}
- (void)PVYWKsetContent{
    [self.view addSubview:self.PVYWKconfirmNickNameTextField];
    [self.view addSubview:self.PVYWKsureButton];
    
    [self.PVYWKconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PVYWKsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PVYWKconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVYWKbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.PVYWKnickname forKey:@"username"];
    [bUser saveInBackground];
    [MBProgressHUD PVYWKshowReminderText:NSLocalizedString(@"更新成功", nil)];
    if (self.modifynicknameB) {
                self.modifynicknameB(self);
    }
    [self.navigationController popViewControllerAnimated:YES];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.PVYWKnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.PVYWKnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.PVYWKnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PVYWKconfirmNickNameTextField{
    if (!_PVYWKconfirmNickNameTextField) {
        _PVYWKconfirmNickNameTextField = [[UITextField alloc] init];
        _PVYWKconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVYWKconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _PVYWKconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _PVYWKconfirmNickNameTextField.layer.masksToBounds = YES;
        _PVYWKconfirmNickNameTextField.tag = 102;
        _PVYWKconfirmNickNameTextField.delegate = self;
        _PVYWKconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PVYWKconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PVYWKconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _PVYWKconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PVYWKconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.PVYWKnickname = [user objectForKey:@"username"];
        }
    }
    return _PVYWKconfirmNickNameTextField;
}
- (UIButton *)PVYWKsureButton{
    if (!_PVYWKsureButton) {
        _PVYWKsureButton = [[UIButton alloc] init];
        _PVYWKsureButton.backgroundColor = [UIColor cyanColor];
        [_PVYWKsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVYWKsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVYWKsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVYWKsureButton.layer.borderWidth = 1.0f;
        _PVYWKsureButton.layer.cornerRadius = 8.0f;
        _PVYWKsureButton.layer.masksToBounds = YES;
        [_PVYWKsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PVYWKsureButton addTarget:self action:@selector(PVYWKbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVYWKsureButton;
}
@end
