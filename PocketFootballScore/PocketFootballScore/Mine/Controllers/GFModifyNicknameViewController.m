//
//  GFModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFModifyNicknameViewController.h"

@interface GFModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *GFconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *GFsureButton;
@end

@implementation GFModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self GFsetContent];
}
- (void)GFsetContent{
    [self.view addSubview:self.GFconfirmNickNameTextField];
    [self.view addSubview:self.GFsureButton];
    
    [self.GFconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(60);
        make.height.mas_equalTo(60);
    }];
    [self.GFsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(160);
        make.trailing.equalTo(self.view).offset(-160);
        make.top.equalTo(self.GFconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)GFbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.GFnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            NSLog(@"error:%@",error);
            [MBProgressHUD GFshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.GFnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.GFnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.GFnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)GFconfirmNickNameTextField{
    if (!_GFconfirmNickNameTextField) {
        _GFconfirmNickNameTextField = [[UITextField alloc] init];
        _GFconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _GFconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _GFconfirmNickNameTextField.layer.borderWidth = 1.0f;
        _GFconfirmNickNameTextField.layer.cornerRadius = 12.0f;
        _GFconfirmNickNameTextField.layer.masksToBounds = YES;
        _GFconfirmNickNameTextField.tag = 102;
        _GFconfirmNickNameTextField.delegate = self;
        _GFconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _GFconfirmNickNameTextField.textColor = [UIColor blackColor];
        _GFconfirmNickNameTextField.backgroundColor = [UIColor cyanColor];
        _GFconfirmNickNameTextField.font = [UIFont systemFontOfSize:20];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _GFconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.GFnickname = [user objectForKey:@"username"];
        }
    }
    return _GFconfirmNickNameTextField;
}
- (UIButton *)GFsureButton{
    if (!_GFsureButton) {
        _GFsureButton = [[UIButton alloc] init];
        _GFsureButton.backgroundColor = [UIColor cyanColor];
        [_GFsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_GFsureButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _GFsureButton.layer.borderColor = [UIColor grayColor].CGColor;
        _GFsureButton.layer.borderWidth = 1.0f;
        _GFsureButton.layer.cornerRadius = 8.0f;
        _GFsureButton.layer.masksToBounds = YES;
        [_GFsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_GFsureButton addTarget:self action:@selector(GFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GFsureButton;
}
@end
