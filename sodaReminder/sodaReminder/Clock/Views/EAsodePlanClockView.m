//
//  EAsodePlanClockView.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAsodePlanClockView.h"
@interface EAsodePlanClockView()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *EAbackView;
@property(nonatomic, strong)UIView *EAcontentView;
@property(nonatomic, strong)UIButton *EAsaveButton;
@end

@implementation EAsodePlanClockView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.EAbackView];
        [self.EAbackView addSubview:self.EAcontentView];
        [self.EAcontentView addSubview:self.EAcontentField];
        [self.EAcontentView addSubview:self.EAsaveButton];
        
        [self.EAbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.EAcontentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.EAbackView).offset(50);
            make.centerY.equalTo(self.EAbackView).offset(-90);
            make.trailing.equalTo(self.EAbackView).offset(-50);
            make.height.mas_equalTo(160);
        }];
        [self.EAcontentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.EAcontentView).offset(20);
            make.top.equalTo(self.EAcontentView).offset(25);
            make.trailing.equalTo(self.EAcontentView).offset(-20);
            make.height.mas_equalTo(50);
        }];
        [self.EAsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.EAcontentView).offset(50);
            make.top.equalTo(self.EAcontentField.mas_bottom).offset(25);
            make.trailing.equalTo(self.EAcontentView).offset(-50);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
- (void)EAbtnClick{
    [self.EAcontentField resignFirstResponder];
    self.hidden = YES;
    if (self.EAsodePlanClockSaveB) {
        self.EAsodePlanClockSaveB(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.hidden = YES;
}
#pragma mark - 属性懒加载
- (UIView *)EAbackView{
    if (!_EAbackView) {
        _EAbackView = [[UIView alloc] init];
        _EAbackView.backgroundColor = EAH_Color(0, 0, 0, 0.5);
    }
    return _EAbackView;
}
- (UIView *)EAcontentView{
    if (!_EAcontentView) {
        _EAcontentView = [[UIView alloc] init];
        _EAcontentView.backgroundColor = [UIColor greenColor];
        _EAcontentView.layer.cornerRadius = 10.0f;
        _EAcontentView.layer.masksToBounds = YES;
    }
    return _EAcontentView;
}
- (UITextField *)EAcontentField{
    if (!_EAcontentField) {
        _EAcontentField = [[UITextField alloc] init];
        _EAcontentField.keyboardType = UIKeyboardTypeNumberPad;
        _EAcontentField.backgroundColor = [UIColor grayColor];
        _EAcontentField.delegate = self;
        _EAcontentField.textColor = [UIColor blackColor];
        _EAcontentField.placeholder = NSLocalizedString(@"   今天喝了几瓶苏打水", nil);
        _EAcontentField.font = [UIFont systemFontOfSize:16];
        _EAcontentField.layer.cornerRadius = 8.0f;
        _EAcontentField.layer.masksToBounds = YES;
    }
    return _EAcontentField;
}
- (UIButton *)EAsaveButton{
    if (!_EAsaveButton) {
        _EAsaveButton = [[UIButton alloc] init];
        [_EAsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_EAsaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [_EAsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_EAsaveButton setBackgroundColor:[UIColor redColor]];
        _EAsaveButton.layer.cornerRadius = 8.0f;
        _EAsaveButton.layer.masksToBounds = YES;
        [_EAsaveButton addTarget:self action:@selector(EAbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAsaveButton;
}
@end
