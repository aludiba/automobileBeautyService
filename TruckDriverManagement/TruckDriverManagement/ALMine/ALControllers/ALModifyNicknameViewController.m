//
//  ALModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALModifyNicknameViewController.h"

@interface ALModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *ALconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *ALsureButton;
@end

@implementation ALModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"修改昵称";
    [self ALsetContent];
}
- (void)ALsetContent{
    [self.view addSubview:self.ALconfirmNickNameTextField];
    [self.view addSubview:self.ALsureButton];
    
    [self.ALconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.ALsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.ALconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)ALbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.ALnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD ALshowReminderText:@"更新成功"];
            if (self.ALmodifynicknameB) {
                self.ALmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD ALshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.ALnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.ALnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.ALnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)ALconfirmNickNameTextField{
    if (!_ALconfirmNickNameTextField) {
        _ALconfirmNickNameTextField = [[UITextField alloc] init];
        _ALconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _ALconfirmNickNameTextField.layer.cornerRadius = 4.0f;
        _ALconfirmNickNameTextField.layer.masksToBounds = YES;
        _ALconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _ALconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _ALconfirmNickNameTextField.tag = 102;
        _ALconfirmNickNameTextField.delegate = self;
        _ALconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"请输入昵称"];
        _ALconfirmNickNameTextField.textColor = [UIColor blackColor];
        _ALconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _ALconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.ALnickname = [user objectForKey:@"username"];
        }
    }
    return _ALconfirmNickNameTextField;
}
- (UIButton *)ALsureButton{
    if (!_ALsureButton) {
        _ALsureButton = [[UIButton alloc] init];
        _ALsureButton.backgroundColor = [UIColor greenColor];
        _ALsureButton.layer.cornerRadius = 4.0f;
        _ALsureButton.layer.masksToBounds = YES;
        _ALsureButton.layer.borderColor = ALH_Color(100, 141, 225, 1).CGColor;
        _ALsureButton.layer.borderWidth = 0.5f;
        [_ALsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_ALsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_ALsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_ALsureButton addTarget:self action:@selector(ALbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _ALsureButton;
}
@end
