//
//  AKModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKModifyNicknameViewController.h"

@interface AKModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AKconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *AKsureButton;
@end

@implementation AKModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self AKsetContent];
}
- (void)AKsetContent{
    self.view.backgroundColor = AKH_Color(244, 245, 246, 1);
    [self.view addSubview:self.AKconfirmNickNameTextField];
    [self.view addSubview:self.AKsureButton];
    
    [self.AKconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.AKsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.AKconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.AKnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD AKshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.AKnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.AKnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.AKnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AKconfirmNickNameTextField{
    if (!_AKconfirmNickNameTextField) {
        _AKconfirmNickNameTextField = [[UITextField alloc] init];
        _AKconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AKconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _AKconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _AKconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _AKconfirmNickNameTextField.layer.masksToBounds = YES;
        _AKconfirmNickNameTextField.tag = 102;
        _AKconfirmNickNameTextField.delegate = self;
        _AKconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _AKconfirmNickNameTextField.textColor = [UIColor blackColor];
        _AKconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _AKconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.AKnickname = [user objectForKey:@"username"];
        }
    }
    return _AKconfirmNickNameTextField;
}
- (UIButton *)AKsureButton{
    if (!_AKsureButton) {
        _AKsureButton = [[UIButton alloc] init];
        _AKsureButton.backgroundColor = [UIColor purpleColor];
        [_AKsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AKsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _AKsureButton.layer.cornerRadius = 8.0f;
        _AKsureButton.layer.masksToBounds = YES;
        [_AKsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AKsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AKsureButton;
}
@end
