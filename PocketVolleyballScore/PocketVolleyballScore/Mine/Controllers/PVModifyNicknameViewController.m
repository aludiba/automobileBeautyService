//
//  PVModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVModifyNicknameViewController.h"

@interface PVModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PVconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PVsureButton;
@end

@implementation PVModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PVsetContent];
}
- (void)PVsetContent{
    [self.view addSubview:self.PVconfirmNickNameTextField];
    [self.view addSubview:self.PVsureButton];
    
    [self.PVconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PVsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PVconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PVbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.PVnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"error:%@",error);
            [MBProgressHUD PVshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.PVnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.PVnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.PVnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PVconfirmNickNameTextField{
    if (!_PVconfirmNickNameTextField) {
        _PVconfirmNickNameTextField = [[UITextField alloc] init];
        _PVconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PVconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PVconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _PVconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _PVconfirmNickNameTextField.layer.masksToBounds = YES;
        _PVconfirmNickNameTextField.tag = 102;
        _PVconfirmNickNameTextField.delegate = self;
        _PVconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PVconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PVconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _PVconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PVconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.PVnickname = [user objectForKey:@"username"];
        }
    }
    return _PVconfirmNickNameTextField;
}
- (UIButton *)PVsureButton{
    if (!_PVsureButton) {
        _PVsureButton = [[UIButton alloc] init];
        _PVsureButton.backgroundColor = [UIColor cyanColor];
        [_PVsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PVsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PVsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PVsureButton.layer.borderWidth = 1.0f;
        _PVsureButton.layer.cornerRadius = 8.0f;
        _PVsureButton.layer.masksToBounds = YES;
        [_PVsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PVsureButton addTarget:self action:@selector(PVbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PVsureButton;
}
@end
