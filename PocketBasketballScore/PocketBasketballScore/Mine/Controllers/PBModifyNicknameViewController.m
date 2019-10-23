//
//  PBModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBModifyNicknameViewController.h"

@interface PBModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PBconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PBsureButton;
@end

@implementation PBModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PBsetContent];
}
- (void)PBsetContent{
    [self.view addSubview:self.PBconfirmNickNameTextField];
    [self.view addSubview:self.PBsureButton];
    
    [self.PBconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PBconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.PBnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"error:%@",error);
            [MBProgressHUD PBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.PBnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.PBnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.PBnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PBconfirmNickNameTextField{
    if (!_PBconfirmNickNameTextField) {
        _PBconfirmNickNameTextField = [[UITextField alloc] init];
        _PBconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PBconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PBconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _PBconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _PBconfirmNickNameTextField.layer.masksToBounds = YES;
        _PBconfirmNickNameTextField.tag = 102;
        _PBconfirmNickNameTextField.delegate = self;
        _PBconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PBconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PBconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _PBconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PBconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.PBnickname = [user objectForKey:@"username"];
        }
    }
    return _PBconfirmNickNameTextField;
}
- (UIButton *)PBsureButton{
    if (!_PBsureButton) {
        _PBsureButton = [[UIButton alloc] init];
        _PBsureButton.backgroundColor = [UIColor cyanColor];
        [_PBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PBsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PBsureButton.layer.borderWidth = 1.0f;
        _PBsureButton.layer.cornerRadius = 8.0f;
        _PBsureButton.layer.masksToBounds = YES;
        [_PBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PBsureButton addTarget:self action:@selector(PBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PBsureButton;
}
@end
