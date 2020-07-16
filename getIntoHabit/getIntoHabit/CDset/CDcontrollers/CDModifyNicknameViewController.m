//
//  CDModifyNicknameViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDModifyNicknameViewController.h"

@interface CDModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *CDconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *CDsureButton;
@end

@implementation CDModifyNicknameViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self CDsetContent];
}
- (void)CDsetContent{
    self.view.backgroundColor = CDH_Color(244, 245, 246, 1);
    [self.view addSubview:self.CDconfirmNickNameTextField];
    [self.view addSubview:self.CDsureButton];
    
    [self.CDconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.CDsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.CDconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)CDbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *CDUser = [AVUser currentUser];
    [CDUser setObject:self.CDnickname forKey:@"username"];
    [CDUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD CDshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.CDmodifyNicknameB) {
                self.CDmodifyNicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD CDshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.CDnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.CDnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.CDnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)CDconfirmNickNameTextField{
    if (!_CDconfirmNickNameTextField) {
        _CDconfirmNickNameTextField = [[UITextField alloc] init];
        _CDconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _CDconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _CDconfirmNickNameTextField.layer.borderWidth = 0.5f;
        _CDconfirmNickNameTextField.layer.cornerRadius = 4.0f;
        _CDconfirmNickNameTextField.layer.masksToBounds = YES;
        _CDconfirmNickNameTextField.tag = 102;
        _CDconfirmNickNameTextField.delegate = self;
        _CDconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _CDconfirmNickNameTextField.textColor = [UIColor blackColor];
        _CDconfirmNickNameTextField.font = [UIFont systemFontOfSize:15];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _CDconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.CDnickname = [user objectForKey:@"username"];
        }
    }
    return _CDconfirmNickNameTextField;
}
- (UIButton *)CDsureButton{
    if (!_CDsureButton) {
        _CDsureButton = [[UIButton alloc] init];
        _CDsureButton.backgroundColor = [UIColor blueColor];
        [_CDsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_CDsureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _CDsureButton.layer.cornerRadius = 4.0f;
        _CDsureButton.layer.masksToBounds = YES;
        [_CDsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_CDsureButton addTarget:self action:@selector(CDbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _CDsureButton;
}
@end
