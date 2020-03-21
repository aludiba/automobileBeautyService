//
//  AHModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHModifyNicknameViewController.h"

@interface AHModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *AHconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *AHsureButton;
@end

@implementation AHModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
    [self AHsetContent];
}
- (void)AHsetContent{
    [self.view addSubview:self.AHconfirmNickNameTextField];
    [self.view addSubview:self.AHsureButton];
    
    [self.AHconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(50);
        make.height.mas_equalTo(60);
    }];
    [self.AHsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.AHconfirmNickNameTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)AHbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.AHnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.AHmodifynicknameB) {
                self.AHmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD AHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.AHnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.AHnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.AHnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)AHconfirmNickNameTextField{
    if (!_AHconfirmNickNameTextField) {
        _AHconfirmNickNameTextField = [[UITextField alloc] init];
        _AHconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _AHconfirmNickNameTextField.backgroundColor = [UIColor grayColor];
        _AHconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _AHconfirmNickNameTextField.layer.masksToBounds = YES;
        _AHconfirmNickNameTextField.tag = 102;
        _AHconfirmNickNameTextField.delegate = self;
        _AHconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _AHconfirmNickNameTextField.textColor = [UIColor blackColor];
        _AHconfirmNickNameTextField.font = [UIFont systemFontOfSize:25];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _AHconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.AHnickname = [user objectForKey:@"username"];
        }
    }
    return _AHconfirmNickNameTextField;
}
- (UIButton *)AHsureButton{
    if (!_AHsureButton) {
        _AHsureButton = [[UIButton alloc] init];
        _AHsureButton.backgroundColor = [UIColor purpleColor];
        [_AHsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AHsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _AHsureButton.layer.cornerRadius = 16.0f;
        _AHsureButton.layer.masksToBounds = YES;
        [_AHsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AHsureButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHsureButton;
}
@end
