//
//  MPTailoringToolBarView.m
//  magicPicsew
//
//  Created by 123 on 2020/12/30.
//

#import "MPTailoringToolBarView.h"

@interface MPTailoringToolBarView()

@property (nonatomic, strong) UIButton *MPoperationBtn;

@property (nonatomic, strong) UIButton *MPoperationBtn1;

@property (nonatomic, strong) UIButton *MPoperationBtn2;

@property (nonatomic, strong) UIButton *MPoperationBtn3;

@end
@implementation MPTailoringToolBarView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self MPsetContentViews];
    }
    return self;
}
- (void)layoutSubviews{
    [self MPsetContentLayoutViews];
}
#pragma mark - actions
- (void)MPsetContentViews{
    [self addSubview:self.MPoperationBtn];
    [self addSubview:self.MPoperationBtn1];
    [self addSubview:self.MPoperationBtn3];
}
- (void)MPsetContentLayoutViews{
    switch (self.MPcurrentType) {
        case MPTailoringTypeAdjust:
        {
            CGFloat MPspacingX = MPWIDTH * 0.25;
            [self.MPoperationBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn1.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
        }
            break;
        case MPTailoringTypeVerticalStitching:
        {
            CGFloat MPspacingX = MPWIDTH * 0.20;
            [self.MPoperationBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self addSubview:self.MPoperationBtn2];
            [self.MPoperationBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn1.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn2.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
        }
            break;
        case MPTailoringTypeTransverseSplicing:
        {
            CGFloat MPspacingX = MPWIDTH * 0.20;
            [self.MPoperationBtn mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self addSubview:self.MPoperationBtn2];
            [self.MPoperationBtn2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn1.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
            [self.MPoperationBtn3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.equalTo(self.MPoperationBtn2.mas_right).offset(MPspacingX);
                make.top.equalTo(self);
                make.width.mas_equalTo(22);
                make.height.mas_equalTo(22);
            }];
        }
            break;
        default:
            break;
    }
}
#pragma mark - 属性懒加载
- (UIButton *)MPoperationBtn{
    if (!_MPoperationBtn) {
        _MPoperationBtn = [[UIButton alloc] init];
        [_MPoperationBtn setImage:[UIImage imageNamed:@"MP_caijian"] forState:UIControlStateNormal];
    }
    return _MPoperationBtn;
}
- (UIButton *)MPoperationBtn1{
    if (!_MPoperationBtn1) {
        _MPoperationBtn1 = [[UIButton alloc] init];
        [_MPoperationBtn1 setImage:[UIImage imageNamed:@"MP_caijian1"] forState:UIControlStateNormal];
    }
    return _MPoperationBtn1;
}
- (UIButton *)MPoperationBtn2{
    if (!_MPoperationBtn2) {
        _MPoperationBtn2 = [[UIButton alloc] init];
        [_MPoperationBtn2 setImage:[UIImage imageNamed:@"MP_caijian2"] forState:UIControlStateNormal];
    }
    return _MPoperationBtn2;
}
- (UIButton *)MPoperationBtn3{
    if (!_MPoperationBtn3) {
        _MPoperationBtn3 = [[UIButton alloc] init];
        [_MPoperationBtn3 setImage:[UIImage imageNamed:@"MP_caijian3"] forState:UIControlStateNormal];
    }
    return _MPoperationBtn3;
}
@end
