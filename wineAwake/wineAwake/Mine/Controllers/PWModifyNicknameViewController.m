//
//  PWModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWModifyNicknameViewController.h"

@interface PWModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PWconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PWsureButton;
@end

@implementation PWModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PWsetContent];
}
- (void)PWsetContent{
    self.view.backgroundColor = PWH_Color(244, 245, 246, 1);
    [self.view addSubview:self.PWconfirmNickNameTextField];
    [self.view addSubview:self.PWsureButton];
    
    [self.PWconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.PWsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.PWconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)btnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.PWnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD PWshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD PWshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.PWnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.PWnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.PWnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PWconfirmNickNameTextField{
    if (!_PWconfirmNickNameTextField) {
        _PWconfirmNickNameTextField = [[UITextField alloc] init];
        _PWconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PWconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PWconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _PWconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _PWconfirmNickNameTextField.layer.masksToBounds = YES;
        _PWconfirmNickNameTextField.tag = 102;
        _PWconfirmNickNameTextField.delegate = self;
        _PWconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PWconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PWconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PWconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.PWnickname = [user objectForKey:@"username"];
        }
    }
    return _PWconfirmNickNameTextField;
}
- (UIButton *)PWsureButton{
    if (!_PWsureButton) {
        _PWsureButton = [[UIButton alloc] init];
        _PWsureButton.backgroundColor = [UIColor purpleColor];
        [_PWsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_PWsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PWsureButton.layer.cornerRadius = 8.0f;
        _PWsureButton.layer.masksToBounds = YES;
        [_PWsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PWsureButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PWsureButton;
}
@end
