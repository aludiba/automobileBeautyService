//
//  BCModifyNicknameViewController.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. BCl rights reserved.
//

#import "BCModifyNicknameViewController.h"

@interface BCModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *BCconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *BCsureButton;
@end

@implementation BCModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additionBC setup after loading the view.
    self.title = @"修改昵称";
    [self BCsetContent];
}
- (void)BCsetContent{
    [self.view addSubview:self.BCconfirmNickNameTextField];
    [self.view addSubview:self.BCsureButton];
    
    [self.BCconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(45);
        make.trailing.equalTo(self.view).offset(-45);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(90);
        make.height.mas_equalTo(50);
    }];
    [self.BCsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(90);
        make.trailing.equalTo(self.view).offset(-90);
        make.top.equalTo(self.BCconfirmNickNameTextField.mas_bottom).offset(120);
        make.height.mas_equalTo(45);
    }];
}
#pragma mark - actions
- (void)BCbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    AVUser *bUser = [AVUser currentUser];
    [bUser setObject:self.BCnickname forKey:@"username"];
    [bUser saveInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD BCshowReminderText:@"更新成功"];
            if (self.BCmodifynicknameB) {
                self.BCmodifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD BCshowReminderText:@"请稍后重试"];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.BCnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.BCnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.BCnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)BCconfirmNickNameTextField{
    if (!_BCconfirmNickNameTextField) {
        _BCconfirmNickNameTextField = [[UITextField alloc] init];
        _BCconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _BCconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _BCconfirmNickNameTextField.layer.masksToBounds = YES;
        _BCconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _BCconfirmNickNameTextField.layer.borderColor = [UIColor systemPurpleColor].CGColor;
        _BCconfirmNickNameTextField.tag = 102;
        _BCconfirmNickNameTextField.delegate = self;
        _BCconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"请输入昵称"];
        _BCconfirmNickNameTextField.textColor = [UIColor blackColor];
        _BCconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        AVUser *user = [AVUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _BCconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.BCnickname = [user objectForKey:@"username"];
        }
    }
    return _BCconfirmNickNameTextField;
}
- (UIButton *)BCsureButton{
    if (!_BCsureButton) {
        _BCsureButton = [[UIButton alloc] init];
        _BCsureButton.backgroundColor = [UIColor blueColor];
        _BCsureButton.layer.cornerRadius = 8.0f;
        _BCsureButton.layer.masksToBounds = YES;
        [_BCsureButton setTitle:@"保存" forState:UIControlStateNormal];
        [_BCsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_BCsureButton.titleLabel setFont:[UIFont systemFontOfSize:17]];
        [_BCsureButton addTarget:self action:@selector(BCbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BCsureButton;
}
@end
