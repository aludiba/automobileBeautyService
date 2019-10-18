//
//  GAgamePlanClockView.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAgamePlanClockView.h"
@interface GAgamePlanClockView()<UITextFieldDelegate>
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)UIView *contentView;
@property(nonatomic, strong)UIButton *saveButton;
@end

@implementation GAgamePlanClockView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.backView];
        [self.backView addSubview:self.contentView];
        [self.contentView addSubview:self.contentField];
        [self.contentView addSubview:self.saveButton];
        
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.backView).offset(50);
            make.centerY.equalTo(self.backView).offset(-90);
            make.trailing.equalTo(self.backView).offset(-50);
            make.height.mas_equalTo(160);
        }];
        [self.contentField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(25);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_equalTo(50);
        }];
        [self.saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(50);
            make.top.equalTo(self.contentField.mas_bottom).offset(25);
            make.trailing.equalTo(self.contentView).offset(-50);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
- (void)btnClick{
    self.hidden = YES;
    if (self.GAgamePlanClockSaveB) {
        self.GAgamePlanClockSaveB(self);
    }
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.hidden = YES;
}
#pragma mark - 属性懒加载
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = GAH_Color(0, 0, 0, 0.5);
    }
    return _backView;
}
- (UIView *)contentView{
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
        _contentView.backgroundColor = [UIColor greenColor];
        _contentView.layer.cornerRadius = 10.0f;
        _contentView.layer.masksToBounds = YES;
    }
    return _contentView;
}
- (UITextField *)contentField{
    if (!_contentField) {
        _contentField = [[UITextField alloc] init];
        _contentField.keyboardType = UIKeyboardTypeNumberPad;
        _contentField.backgroundColor = [UIColor grayColor];
        _contentField.delegate = self;
        _contentField.textColor = [UIColor blackColor];
        _contentField.placeholder = NSLocalizedString(@"   今天喝了几瓶苏打水", nil);
        _contentField.font = [UIFont systemFontOfSize:16];
        _contentField.layer.cornerRadius = 8.0f;
        _contentField.layer.masksToBounds = YES;
    }
    return _contentField;
}
- (UIButton *)saveButton{
    if (!_saveButton) {
        _saveButton = [[UIButton alloc] init];
        [_saveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_saveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        [_saveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_saveButton setBackgroundColor:[UIColor redColor]];
        _saveButton.layer.cornerRadius = 8.0f;
        _saveButton.layer.masksToBounds = YES;
        [_saveButton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _saveButton;
}
@end
