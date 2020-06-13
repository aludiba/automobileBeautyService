//
//  JBModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "JBModifyNicknameViewController.h"

@interface JBModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *JBconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *JBsureButton;
@end

@implementation JBModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self JBsetContent];
}
- (void)JBsetContent{
    [self.view addSubview:self.JBconfirmNickNameTextField];
    [self.view addSubview:self.JBsureButton];
    
    [self.JBconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.JBsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.JBconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)JBbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *JBbUser = [AVUser currentUser];
    [JBbUser setObject:self.JBnickname forKey:@"username"];
    [JBbUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD JBshowReminderText:@"更新成功"];
            if (self.JBmodifynicknameB) {
                self.JBmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD JBshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.JBnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.JBnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.JBnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)JBconfirmNickNameTextField{
    if (!_JBconfirmNickNameTextField) {
        _JBconfirmNickNameTextField = [[UITextField alloc] init];
        _JBconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _JBconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _JBconfirmNickNameTextField.layer.masksToBounds = YES;
        _JBconfirmNickNameTextField.layer.borderWidth = 1.5f;
        _JBconfirmNickNameTextField.layer.borderColor = [UIColor redColor].CGColor;
        _JBconfirmNickNameTextField.tag = 102;
        _JBconfirmNickNameTextField.delegate = self;
        _JBconfirmNickNameTextField.placeholder = [NSString stringWithFormat:NSLocalizedString(@"请输入昵称", nil)];
        _JBconfirmNickNameTextField.textColor = [UIColor blackColor];
        _JBconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _JBconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.JBnickname = [user objectForKey:@"username"];
        }
    }
    return _JBconfirmNickNameTextField;
}
- (UIButton *)JBsureButton{
    if (!_JBsureButton) {
        _JBsureButton = [[UIButton alloc] init];
        _JBsureButton.backgroundColor = [UIColor greenColor];
        _JBsureButton.layer.cornerRadius = 12.0f;
        _JBsureButton.layer.masksToBounds = YES;
        [_JBsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_JBsureButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_JBsureButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_JBsureButton addTarget:self action:@selector(JBbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _JBsureButton;
}
@end
