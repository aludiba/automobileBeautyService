//
//  SOModifyNicknameViewController.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOModifyNicknameViewController.h"

@interface SOModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *SOconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *SOsureButton;
@end

@implementation SOModifyNicknameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self SOsetContent];
}
- (void)SOsetContent{
    [self.view addSubview:self.SOconfirmNickNameTextField];
    [self.view addSubview:self.SOsureButton];
    
    [self.SOconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(60);
        make.trailing.equalTo(self.view).offset(-60);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(50);
        make.height.mas_equalTo(60);
    }];
    [self.SOsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(120);
        make.trailing.equalTo(self.view).offset(-120);
        make.top.equalTo(self.SOconfirmNickNameTextField.mas_bottom).offset(80);
        make.height.mas_equalTo(60);
    }];
}
#pragma mark - actions
- (void)SObtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.SOnickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.modifynicknameB) {
                self.modifynicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD SOshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.SOnickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.SOnickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.SOnickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)SOconfirmNickNameTextField{
    if (!_SOconfirmNickNameTextField) {
        _SOconfirmNickNameTextField = [[UITextField alloc] init];
        _SOconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _SOconfirmNickNameTextField.backgroundColor = [UIColor grayColor];
        _SOconfirmNickNameTextField.layer.cornerRadius = 16.0f;
        _SOconfirmNickNameTextField.layer.masksToBounds = YES;
        _SOconfirmNickNameTextField.tag = 102;
        _SOconfirmNickNameTextField.delegate = self;
        _SOconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _SOconfirmNickNameTextField.textColor = [UIColor blackColor];
        _SOconfirmNickNameTextField.font = [UIFont systemFontOfSize:25];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _SOconfirmNickNameTextField.text = [NSString stringWithFormat:@"  %@",[user objectForKey:@"username"]];
            self.SOnickname = [user objectForKey:@"username"];
        }
    }
    return _SOconfirmNickNameTextField;
}
- (UIButton *)SOsureButton{
    if (!_SOsureButton) {
        _SOsureButton = [[UIButton alloc] init];
        _SOsureButton.backgroundColor = [UIColor purpleColor];
        [_SOsureButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_SOsureButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        _SOsureButton.layer.cornerRadius = 16.0f;
        _SOsureButton.layer.masksToBounds = YES;
        [_SOsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_SOsureButton addTarget:self action:@selector(SObtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOsureButton;
}
@end
