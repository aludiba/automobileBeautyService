//
//  AFgamePlanClockView.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFgamePlanClockView.h"
@interface AFgamePlanClockView()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AFbackView;
@property(nonatomic, strong)UIView *AFcontentView;
@property(nonatomic, strong)UIButton *AFsaveButton;
@end

@implementation AFgamePlanClockView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.AFbackView];
        [self.AFbackView addSubview:self.AFcontentView];
        [self.AFcontentView addSubview:self.AFcontentField];
        [self.AFcontentView addSubview:self.AFsaveButton];
        
        [self.AFbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.AFcontentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AFbackView).offset(50);
            make.centerY.equalTo(self.AFbackView).offset(-90);
            make.trailing.equalTo(self.AFbackView).offset(-50);
            make.height.mas_equalTo(180);
        }];
        [self.AFcontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AFcontentView).offset(20);
            make.top.equalTo(self.AFcontentView).offset(15);
            make.trailing.equalTo(self.AFcontentView).offset(-20);
            make.height.mas_equalTo(50);
        }];
        [self.AFsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AFcontentView).offset(80);
            make.top.equalTo(self.AFcontentField.mas_bottom).offset(35);
            make.trailing.equalTo(self.AFcontentView).offset(-80);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
- (void)AFbtnClick{
    [self.AFcontentField resignFirstResponder];
    self.hidden = YES;
    if (self.AFgamePlanClockSaveB) {
        self.AFgamePlanClockSaveB(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.hidden = YES;
}
#pragma mark - 属性懒加载
- (UIView *)AFbackView{
    if (!_AFbackView) {
        _AFbackView = [[UIView alloc] init];
        _AFbackView.backgroundColor = AFH_Color(0, 0, 0, 0.5);
    }
    return _AFbackView;
}
- (UIView *)AFcontentView{
    if (!_AFcontentView) {
        _AFcontentView = [[UIView alloc] init];
        _AFcontentView.backgroundColor = AFH_Color(44, 77, 93, 1);
        _AFcontentView.layer.cornerRadius = 16.0f;
        _AFcontentView.layer.masksToBounds = YES;
    }
    return _AFcontentView;
}
- (UITextField *)AFcontentField{
    if (!_AFcontentField) {
        _AFcontentField = [[UITextField alloc] init];
        _AFcontentField.keyboardType = UIKeyboardTypeNumberPad;
        _AFcontentField.delegate = self;
        _AFcontentField.textColor = [UIColor blackColor];
        _AFcontentField.placeholder = NSLocalizedString(@"   今天玩了几次游戏", nil);
        _AFcontentField.font = [UIFont systemFontOfSize:16];
        _AFcontentField.layer.cornerRadius = 16.0f;
        _AFcontentField.layer.masksToBounds = YES;
        _AFcontentField.layer.borderWidth = 2.0f;
        _AFcontentField.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _AFcontentField;
}
- (UIButton *)AFsaveButton{
    if (!_AFsaveButton) {
        _AFsaveButton = [[UIButton alloc] init];
        [_AFsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AFsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_AFsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AFsaveButton setBackgroundColor:AFH_Color(24, 50, 62, 1)];
        _AFsaveButton.layer.cornerRadius = 16.0f;
        _AFsaveButton.layer.masksToBounds = YES;
        _AFsaveButton.layer.borderWidth = 2.0f;
        _AFsaveButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AFsaveButton addTarget:self action:@selector(AFbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFsaveButton;
}
@end
