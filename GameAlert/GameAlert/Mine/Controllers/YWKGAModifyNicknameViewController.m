//
//  YWKGAModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAModifyNicknameViewController.h"

@interface YWKGAModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *YWKGAconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *YWKGAsureButton;
@end

@implementation YWKGAModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self YWKGAsetContent];
}
- (void)YWKGAsetContent{
    [self.view addSubview:self.YWKGAconfirmNickNameTextField];
    [self.view addSubview:self.YWKGAsureButton];
    
    [self.YWKGAconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(50);
        make.height.mas_equalTo(60);
    }];
    [self.YWKGAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.YWKGAconfirmNickNameTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)YWKGAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.YWKGAnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD YWKGAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.YWKGAnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.YWKGAnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.YWKGAnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)YWKGAconfirmNickNameTextField{
    if (!_YWKGAconfirmNickNameTextField) {
        _YWKGAconfirmNickNameTextField = [[UITextField alloc] init];
        _YWKGAconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _YWKGAconfirmNickNameTextField.layer.cornerRadius = 8.0f;
        _YWKGAconfirmNickNameTextField.layer.masksToBounds = YES;
        _YWKGAconfirmNickNameTextField.layer.borderWidth = 2.0f;
        _YWKGAconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAconfirmNickNameTextField.tag = 102;
        _YWKGAconfirmNickNameTextField.delegate = self;
        _YWKGAconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _YWKGAconfirmNickNameTextField.textColor = [UIColor blackColor];
        _YWKGAconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _YWKGAconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.YWKGAnickname = [user objectForKey:@"username"];
        }
    }
    return _YWKGAconfirmNickNameTextField;
}
- (UIButton *)YWKGAsureButton{
    if (!_YWKGAsureButton) {
        _YWKGAsureButton = [[UIButton alloc] init];
        _YWKGAsureButton.backgroundColor = [UIColor cyanColor];
        [_YWKGAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_YWKGAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _YWKGAsureButton.layer.cornerRadius = 8.0f;
        _YWKGAsureButton.layer.masksToBounds = YES;
        _YWKGAsureButton.layer.borderWidth = 2.0f;
        _YWKGAsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_YWKGAsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_YWKGAsureButton addTarget:self action:@selector(YWKGAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAsureButton;
}
@end
