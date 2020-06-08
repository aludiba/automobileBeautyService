//
//  BGModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGModifyNicknameViewController.h"

@interface BGModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *BGconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *BGsureButton;
@end

@implementation BGModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"修改昵称";
    [self BGsetContent];
}
- (void)BGsetContent{
    [self.view addSubview:self.BGconfirmNickNameTextField];
    [self.view addSubview:self.BGsureButton];
    
    [self.BGconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.BGsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.BGconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)BGbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.BGnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD BGshowReminderText:@"更新成功"];
            if (self.BGmodifynicknameB) {
                self.BGmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD BGshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.BGnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.BGnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.BGnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)BGconfirmNickNameTextField{
    if (!_BGconfirmNickNameTextField) {
        _BGconfirmNickNameTextField = [[UITextField alloc] init];
        _BGconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BGconfirmNickNameTextField.layer.cornerRadius = 4.0f;
        _BGconfirmNickNameTextField.layer.masksToBounds = YES;
        _BGconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _BGconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _BGconfirmNickNameTextField.tag = 102;
        _BGconfirmNickNameTextField.delegate = self;
        _BGconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"请输入昵称"];
        _BGconfirmNickNameTextField.textColor = [UIColor blackColor];
        _BGconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _BGconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.BGnickname = [user objectForKey:@"username"];
        }
    }
    return _BGconfirmNickNameTextField;
}
- (UIButton *)BGsureButton{
    if (!_BGsureButton) {
        _BGsureButton = [[UIButton alloc] init];
        _BGsureButton.backgroundColor = [UIColor colorWithRed:100/255.0 green:141/255.0 blue:225/255.0 alpha:1/1.0];
        _BGsureButton.layer.cornerRadius = 4.0f;
        _BGsureButton.layer.masksToBounds = YES;
        _BGsureButton.layer.borderColor = BGH_Color(100, 141, 225, 1).CGColor;
        _BGsureButton.layer.borderWidth = 0.5f;
        [_BGsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BGsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_BGsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_BGsureButton addTarget:self action:@selector(BGbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BGsureButton;
}
@end
