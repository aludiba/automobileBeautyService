//
//  YBModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBModifyNicknameViewController.h"

@interface YBModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YBconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *YBsureButton;
@end

@implementation YBModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self YBsetContent];
}
- (void)YBsetContent{
    [self.view addSubview:self.YBconfirmNickNameTextField];
    [self.view addSubview:self.YBsureButton];
    
    [self.YBconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.YBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.YBconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)YBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.YBnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"error:%@",error);
            [MBProgressHUD YBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.YBnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.YBnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.YBnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)YBconfirmNickNameTextField{
    if (!_YBconfirmNickNameTextField) {
        _YBconfirmNickNameTextField = [[UITextField alloc] init];
        _YBconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YBconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YBconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _YBconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _YBconfirmNickNameTextField.layer.masksToBounds = YES;
        _YBconfirmNickNameTextField.tag = 102;
        _YBconfirmNickNameTextField.delegate = self;
        _YBconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _YBconfirmNickNameTextField.textColor = [UIColor blackColor];
        _YBconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _YBconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _YBconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.YBnickname = [user objectForKey:@"username"];
        }
    }
    return _YBconfirmNickNameTextField;
}
- (UIButton *)YBsureButton{
    if (!_YBsureButton) {
        _YBsureButton = [[UIButton alloc] init];
        _YBsureButton.backgroundColor = [UIColor cyanColor];
        [_YBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YBsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _YBsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YBsureButton.layer.borderWidth = 1.0f;
        _YBsureButton.layer.cornerRadius = 8.0f;
        _YBsureButton.layer.masksToBounds = YES;
        [_YBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_YBsureButton addTarget:self action:@selector(YBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YBsureButton;
}
@end
