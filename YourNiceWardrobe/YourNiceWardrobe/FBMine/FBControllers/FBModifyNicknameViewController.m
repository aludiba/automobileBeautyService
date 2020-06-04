//
//  FBModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. FBl rights reserved.
//

#import "FBModifyNicknameViewController.h"

@interface FBModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *FBconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *FBsureButton;
@end

@implementation FBModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionFB setup after loading the view.
    self.title = @"修改昵称";
    [self FBsetContent];
}
- (void)FBsetContent{
    [self.view addSubview:self.FBconfirmNickNameTextField];
    [self.view addSubview:self.FBsureButton];
    
    [self.FBconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.FBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.FBconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)FBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.FBnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD FBshowReminderText:@"更新成功"];
            if (self.FBmodifynicknameB) {
                self.FBmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD FBshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.FBnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.FBnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.FBnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)FBconfirmNickNameTextField{
    if (!_FBconfirmNickNameTextField) {
        _FBconfirmNickNameTextField = [[UITextField alloc] init];
        _FBconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _FBconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _FBconfirmNickNameTextField.layer.masksToBounds = YES;
        _FBconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _FBconfirmNickNameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _FBconfirmNickNameTextField.tag = 102;
        _FBconfirmNickNameTextField.delegate = self;
        _FBconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"请输入昵称"];
        _FBconfirmNickNameTextField.textColor = [UIColor blackColor];
        _FBconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _FBconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.FBnickname = [user objectForKey:@"username"];
        }
    }
    return _FBconfirmNickNameTextField;
}
- (UIButton *)FBsureButton{
    if (!_FBsureButton) {
        _FBsureButton = [[UIButton alloc] init];
        _FBsureButton.backgroundColor = [UIColor blueColor];
        _FBsureButton.layer.cornerRadius = 8.0f;
        _FBsureButton.layer.masksToBounds = YES;
        [_FBsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_FBsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_FBsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_FBsureButton addTarget:self action:@selector(FBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _FBsureButton;
}
@end
