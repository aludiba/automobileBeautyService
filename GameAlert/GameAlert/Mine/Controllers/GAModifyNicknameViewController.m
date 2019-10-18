//
//  GAModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAModifyNicknameViewController.h"

@interface GAModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GAconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *GAsureButton;
@end

@implementation GAModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self GAsetContent];
}
- (void)GAsetContent{
    [self.view addSubview:self.GAconfirmNickNameTextField];
    [self.view addSubview:self.GAsureButton];
    
    [self.GAconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(50);
        make.height.mas_equalTo(60);
    }];
    [self.GAsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.GAconfirmNickNameTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)GAbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.GAnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD GAshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.GAnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.GAnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.GAnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)GAconfirmNickNameTextField{
    if (!_GAconfirmNickNameTextField) {
        _GAconfirmNickNameTextField = [[UITextField alloc] init];
        _GAconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GAconfirmNickNameTextField.backgroundColor = [UIColor grayColor];
        _GAconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _GAconfirmNickNameTextField.layer.masksToBounds = YES;
        _GAconfirmNickNameTextField.tag = 102;
        _GAconfirmNickNameTextField.delegate = self;
        _GAconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _GAconfirmNickNameTextField.textColor = [UIColor blackColor];
        _GAconfirmNickNameTextField.font = [UIFont systemFontOfSize:25];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _GAconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.GAnickname = [user objectForKey:@"username"];
        }
    }
    return _GAconfirmNickNameTextField;
}
- (UIButton *)GAsureButton{
    if (!_GAsureButton) {
        _GAsureButton = [[UIButton alloc] init];
        _GAsureButton.backgroundColor = [UIColor purpleColor];
        [_GAsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GAsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _GAsureButton.layer.cornerRadius = 16.0f;
        _GAsureButton.layer.masksToBounds = YES;
        [_GAsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_GAsureButton addTarget:self action:@selector(GAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAsureButton;
}
@end
