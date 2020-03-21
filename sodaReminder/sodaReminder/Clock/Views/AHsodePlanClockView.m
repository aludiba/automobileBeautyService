//
//  AHsodePlanClockView.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHsodePlanClockView.h"
@interface AHsodePlanClockView()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *AHbackView;
@property(nonatomic, strong)UIView *AHcontentView;
@property(nonatomic, strong)UIButton *AHsaveButton;
@end

@implementation AHsodePlanClockView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.AHbackView];
        [self.AHbackView addSubview:self.AHcontentView];
        [self.AHcontentView addSubview:self.AHcontentField];
        [self.AHcontentView addSubview:self.AHsaveButton];
        
        [self.AHbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.AHcontentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AHbackView).offset(50);
            make.centerY.equalTo(self.AHbackView).offset(-90);
            make.trailing.equalTo(self.AHbackView).offset(-50);
            make.height.mas_equalTo(160);
        }];
        [self.AHcontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AHcontentView).offset(20);
            make.top.equalTo(self.AHcontentView).offset(25);
            make.trailing.equalTo(self.AHcontentView).offset(-20);
            make.height.mas_equalTo(50);
        }];
        [self.AHsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.AHcontentView).offset(50);
            make.top.equalTo(self.AHcontentField.mas_bottom).offset(25);
            make.trailing.equalTo(self.AHcontentView).offset(-50);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
- (void)AHbtnClick{
    [self.AHcontentField resignFirstResponder];
    self.hidden = YES;
    if (self.AHsodePlanClockSaveB) {
        self.AHsodePlanClockSaveB(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.hidden = YES;
}
#pragma mark - 属性懒加载
- (UIView *)AHbackView{
    if (!_AHbackView) {
        _AHbackView = [[UIView alloc] init];
        _AHbackView.backgroundColor = AHH_Color(0, 0, 0, 0.5);
    }
    return _AHbackView;
}
- (UIView *)AHcontentView{
    if (!_AHcontentView) {
        _AHcontentView = [[UIView alloc] init];
        _AHcontentView.backgroundColor = [UIColor greenColor];
        _AHcontentView.layer.cornerRadius = 10.0f;
        _AHcontentView.layer.masksToBounds = YES;
    }
    return _AHcontentView;
}
- (UITextField *)AHcontentField{
    if (!_AHcontentField) {
        _AHcontentField = [[UITextField alloc] init];
        _AHcontentField.keyboardType = UIKeyboardTypeNumberPad;
        _AHcontentField.backgroundColor = [UIColor grayColor];
        _AHcontentField.delegate = self;
        _AHcontentField.textColor = [UIColor blackColor];
        _AHcontentField.placeholder = NSLocalizedString(@"   今天喝了几瓶苏打水", nil);
        _AHcontentField.font = [UIFont systemFontOfSize:16];
        _AHcontentField.layer.cornerRadius = 8.0f;
        _AHcontentField.layer.masksToBounds = YES;
    }
    return _AHcontentField;
}
- (UIButton *)AHsaveButton{
    if (!_AHsaveButton) {
        _AHsaveButton = [[UIButton alloc] init];
        [_AHsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AHsaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [_AHsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AHsaveButton setBackgroundColor:[UIColor redColor]];
        _AHsaveButton.layer.cornerRadius = 8.0f;
        _AHsaveButton.layer.masksToBounds = YES;
        [_AHsaveButton addTarget:self action:@selector(AHbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHsaveButton;
}
@end
