//
//  QSModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSModifyNicknameViewController.h"

@interface QSModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *QSconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *QSsureButton;
@end

@implementation QSModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self QSsetContent];
}
- (void)QSsetContent{
    [self.view addSubview:self.QSconfirmNickNameTextField];
    [self.view addSubview:self.QSsureButton];
    
    [self.QSconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.trailing.equalTo(self.view).offset(-30);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(100);
        make.height.mas_equalTo(60);
    }];
    [self.QSsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.QSconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)QSbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.QSnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD QSshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.QSnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.QSnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.QSnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)QSconfirmNickNameTextField{
    if (!_QSconfirmNickNameTextField) {
        _QSconfirmNickNameTextField = [[UITextField alloc] init];
        _QSconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _QSconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _QSconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _QSconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _QSconfirmNickNameTextField.layer.masksToBounds = YES;
        _QSconfirmNickNameTextField.tag = 102;
        _QSconfirmNickNameTextField.delegate = self;
        _QSconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _QSconfirmNickNameTextField.textColor = [UIColor blackColor];
        _QSconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _QSconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.QSnickname = [user objectForKey:@"username"];
        }
    }
    return _QSconfirmNickNameTextField;
}
- (UIButton *)QSsureButton{
    if (!_QSsureButton) {
        _QSsureButton = [[UIButton alloc] init];
        _QSsureButton.backgroundColor = [UIColor purpleColor];
        [_QSsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_QSsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _QSsureButton.layer.cornerRadius = 8.0f;
        _QSsureButton.layer.masksToBounds = YES;
        [_QSsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_QSsureButton addTarget:self action:@selector(QSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QSsureButton;
}
@end
