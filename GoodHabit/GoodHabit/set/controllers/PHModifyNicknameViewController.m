//
//  PHModifyNicknameViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHModifyNicknameViewController.h"

@interface PHModifyNicknameViewController ()<UITextFieldDelegate>
@property(nonatomic, strong)UITextField *PHconfirmNickNameTextField;
@property(nonatomic, strong)UIButton *PHsureButton;
@end

@implementation PHModifyNicknameViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"修改昵称", nil);
    [self PHsetContent];
}
- (void)PHsetContent{
    self.view.backgroundColor = PHH_Color(244, 245, 246, 1);
    [self.view addSubview:self.PHconfirmNickNameTextField];
    [self.view addSubview:self.PHsureButton];
    
    [self.PHconfirmNickNameTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(self.view).offset(-15);
        make.top.equalTo(self.mas_topLayoutGuideBottom).offset(20);
        make.height.mas_equalTo(44);
    }];
    [self.PHsureButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(26.5);
        make.trailing.equalTo(self.view).offset(-26.5);
        make.top.equalTo(self.PHconfirmNickNameTextField.mas_bottom).offset(30);
        make.height.mas_equalTo(44);
    }];
}
#pragma mark - actions
- (void)PHbtnClick:(UIButton *)sender{
    [self.view endEditing:YES];
    BmobUser *bUser = [BmobUser currentUser];
    [bUser setObject:self.nickname forKey:@"username"];
    [bUser updateInBackgroundWithResultBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
            [MBProgressHUD PHshowReminderText:NSLocalizedString(@"更新成功", nil)];
            if (self.PHmodifyNicknameB) {
                self.PHmodifyNicknameB(self);
            }
            [self.navigationController popViewControllerAnimated:YES];
        }else{
            [MBProgressHUD PHshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
    }];
}
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    self.nickname = textField.text;
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    self.nickname = textField.text;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    self.nickname = textField.text;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
#pragma mark - 属性懒加载
- (UITextField *)PHconfirmNickNameTextField{
    if (!_PHconfirmNickNameTextField) {
        _PHconfirmNickNameTextField = [[UITextField alloc] init];
        _PHconfirmNickNameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        _PHconfirmNickNameTextField.layer.borderColor = [UIColor grayColor].CGColor;
        _PHconfirmNickNameTextField.layer.borderWidth = 0.5f;
        _PHconfirmNickNameTextField.layer.cornerRadius = 4.0f;
        _PHconfirmNickNameTextField.layer.masksToBounds = YES;
        _PHconfirmNickNameTextField.tag = 102;
        _PHconfirmNickNameTextField.delegate = self;
        _PHconfirmNickNameTextField.placeholder = [NSString stringWithFormat:@"  %@",NSLocalizedString(@"请输入昵称", nil)];
        _PHconfirmNickNameTextField.textColor = [UIColor blackColor];
        _PHconfirmNickNameTextField.font = [UIFont systemFontOfSize:15];
        BmobUser *user = [BmobUser currentUser];
        if ([[user objectForKey:@"username"] length]) {
            _PHconfirmNickNameTextField.text = [user objectForKey:@"username"];
            self.nickname = [user objectForKey:@"username"];
        }
    }
    return _PHconfirmNickNameTextField;
}
- (UIButton *)PHsureButton{
    if (!_PHsureButton) {
        _PHsureButton = [[UIButton alloc] init];
        _PHsureButton.backgroundColor = [UIColor blueColor];
        [_PHsureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PHsureButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        _PHsureButton.layer.cornerRadius = 4.0f;
        _PHsureButton.layer.masksToBounds = YES;
        [_PHsureButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_PHsureButton addTarget:self action:@selector(PHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PHsureButton;
}
@end
