//
//  AJgamePlanClockView.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJgamePlanClockView.h"
@interface AJgamePlanClockView()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AJbackView;
@property(nonatomic, strong)UIView *AJcontentView;
@property(nonatomic, strong)UIButton *AJsaveButton;
@end

@implementation AJgamePlanClockView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.AJbackView];
        [self.AJbackView addSubview:self.AJcontentView];
        [self.AJcontentView addSubview:self.AJcontentField];
        [self.AJcontentView addSubview:self.AJsaveButton];
        
        [self.AJbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.AJcontentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AJbackView).offset(50);
            make.centerY.equalTo(self.AJbackView).offset(-90);
            make.trailing.equalTo(self.AJbackView).offset(-50);
            make.height.mas_equalTo(180);
        }];
        [self.AJcontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AJcontentView).offset(20);
            make.top.equalTo(self.AJcontentView).offset(15);
            make.trailing.equalTo(self.AJcontentView).offset(-20);
            make.height.mas_equalTo(50);
        }];
        [self.AJsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AJcontentView).offset(80);
            make.top.equalTo(self.AJcontentField.mas_bottom).offset(35);
            make.trailing.equalTo(self.AJcontentView).offset(-80);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
- (void)AJbtnClick{
    [self.AJcontentField resignFirstResponder];
    self.hidden = YES;
    if (self.AJgamePlanClockSaveB) {
        self.AJgamePlanClockSaveB(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.AJcontentField resignFirstResponder];
    self.hidden = YES;
}
#pragma mark - 属性懒加载
- (UIView *)AJbackView{
    if (!_AJbackView) {
        _AJbackView = [[UIView alloc] init];
        _AJbackView.backgroundColor = AJH_Color(0, 0, 0, 0.5);
    }
    return _AJbackView;
}
- (UIView *)AJcontentView{
    if (!_AJcontentView) {
        _AJcontentView = [[UIView alloc] init];
        _AJcontentView.backgroundColor = AJH_Color(44, 77, 93, 1);
        _AJcontentView.layer.cornerRadius = 16.0f;
        _AJcontentView.layer.masksToBounds = YES;
    }
    return _AJcontentView;
}
- (UITextField *)AJcontentField{
    if (!_AJcontentField) {
        _AJcontentField = [[UITextField alloc] init];
        _AJcontentField.keyboardType = UIKeyboardTypeNumberPad;
        _AJcontentField.delegate = self;
        _AJcontentField.textColor = [UIColor blackColor];
        _AJcontentField.placeholder = NSLocalizedString(@"   今天玩了几次游戏", nil);
        _AJcontentField.font = [UIFont systemFontOfSize:16];
        _AJcontentField.layer.cornerRadius = 16.0f;
        _AJcontentField.layer.masksToBounds = YES;
        _AJcontentField.layer.borderWidth = 2.0f;
        _AJcontentField.layer.borderColor = [UIColor grayColor].CGColor;
    }
    return _AJcontentField;
}
- (UIButton *)AJsaveButton{
    if (!_AJsaveButton) {
        _AJsaveButton = [[UIButton alloc] init];
        [_AJsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJsaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_AJsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AJsaveButton setBackgroundColor:AJH_Color(24, 50, 62, 1)];
        _AJsaveButton.layer.cornerRadius = 16.0f;
        _AJsaveButton.layer.masksToBounds = YES;
        _AJsaveButton.layer.borderWidth = 2.0f;
        _AJsaveButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AJsaveButton addTarget:self action:@selector(AJbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJsaveButton;
}
@end
