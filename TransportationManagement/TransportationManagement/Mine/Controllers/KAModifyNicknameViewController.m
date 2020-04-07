//
//  KAModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAModifyNicknameViewController.h"

@interface KAModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *KAconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *KAsureButton;
@end

@implementation KAModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"修改昵称";
    [self KAsetContent];
}
- (void)KAsetContent{
    [self.view addSubview:self.KAconfirmNickNameTextField];
    [self.view addSubview:self.KAsureButton];
    
    [self.KAconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.KAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.KAconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)KAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.KAnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD KAshowReminderText:@"更新成功"];
            if (self.KAmodifynicknameB) {
                self.KAmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD KAshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.KAnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.KAnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.KAnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)KAconfirmNickNameTextField{
    if (!_KAconfirmNickNameTextField) {
        _KAconfirmNickNameTextField = [[UITextField alloc] init];
        _KAconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _KAconfirmNickNameTextField.layer.cornerRadius = 4.0f;
        _KAconfirmNickNameTextField.layer.masksToBounds = YES;
        _KAconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _KAconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _KAconfirmNickNameTextField.tag = 102;
        _KAconfirmNickNameTextField.delegate = self;
        _KAconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"请输入昵称"];
        _KAconfirmNickNameTextField.textColor = [UIColor blackColor];
        _KAconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _KAconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.KAnickname = [user objectForKey:@"username"];
        }
    }
    return _KAconfirmNickNameTextField;
}
- (UIButton *)KAsureButton{
    if (!_KAsureButton) {
        _KAsureButton = [[UIButton alloc] init];
        _KAsureButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _KAsureButton.layer.cornerRadius = 4.0f;
        _KAsureButton.layer.masksToBounds = YES;
        _KAsureButton.layer.borderColor = KAH_Color(100, 141, 225, 1).CGColor;
        _KAsureButton.layer.borderWidth = 0.5f;
        [_KAsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_KAsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_KAsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_KAsureButton addTarget:self action:@selector(KAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KAsureButton;
}
@end
