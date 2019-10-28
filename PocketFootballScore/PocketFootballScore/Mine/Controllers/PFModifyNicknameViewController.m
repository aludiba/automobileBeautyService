//
//  PFModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFModifyNicknameViewController.h"

@interface PFModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PFconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PFsureButton;
@end

@implementation PFModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PFsetContent];
}
- (void)PFsetContent{
    [self.view addSubview:self.PFconfirmNickNameTextField];
    [self.view addSubview:self.PFsureButton];
    
    [self.PFconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.PFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.PFconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.PFnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"error:%@",error);
            [MBProgressHUD PFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.PFnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.PFnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.PFnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PFconfirmNickNameTextField{
    if (!_PFconfirmNickNameTextField) {
        _PFconfirmNickNameTextField = [[UITextField alloc] init];
        _PFconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PFconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PFconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _PFconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _PFconfirmNickNameTextField.layer.masksToBounds = YES;
        _PFconfirmNickNameTextField.tag = 102;
        _PFconfirmNickNameTextField.delegate = self;
        _PFconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PFconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PFconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _PFconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PFconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.PFnickname = [user objectForKey:@"username"];
        }
    }
    return _PFconfirmNickNameTextField;
}
- (UIButton *)PFsureButton{
    if (!_PFsureButton) {
        _PFsureButton = [[UIButton alloc] init];
        _PFsureButton.backgroundColor = [UIColor cyanColor];
        [_PFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PFsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _PFsureButton.layer.borderWidth = 1.0f;
        _PFsureButton.layer.cornerRadius = 8.0f;
        _PFsureButton.layer.masksToBounds = YES;
        [_PFsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PFsureButton addTarget:self action:@selector(PFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PFsureButton;
}
@end
