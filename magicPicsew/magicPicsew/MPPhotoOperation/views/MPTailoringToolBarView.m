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
        case MPPhotoOperationTypeAdjust:
        {
            CGFloat MPspacingX = (MPWIDTH - 22 * 3) * 0.25;
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
        case MPPhotoOperationTypeVerticalStitching:
        {
            CGFloat MPspacingX = (MPWIDTH - 22 * 4) * 0.20;
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
        case MPPhotoOperationTypeTransverseSplicing:
        {
            CGFloat MPspacingX = (MPWIDTH - 22 * 4) * 0.20;
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
#pragma mark - actions
- (void)MPoperationAction:(UIButton *)sender{
    if (sender.tag == 99) {
        NSLog(@"裁剪~~~");
    }else if (sender.tag == 100){
        NSLog(@"裁剪1~~~");
    }else if (sender.tag == 101){
        NSLog(@"裁剪2~~~");
    }else if (sender.tag == 102){
        NSLog(@"裁剪3~~~");
    }
}
#pragma mark - 属性懒加载
- (UIButton *)MPoperationBtn{
    if (!_MPoperationBtn) {
        _MPoperationBtn = [[UIButton alloc] init];
        [_MPoperationBtn setImage:[UIImage imageNamed:@"MP_caijian"] forState:UIControlStateNormal];
        [_MPoperationBtn setImage:[UIImage imageNamed:@"MP_caijian"] forState:UIControlStateHighlighted];
        _MPoperationBtn.tag = 99;
        [_MPoperationBtn addTarget:self action:@selector(MPoperationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPoperationBtn;
}
- (UIButton *)MPoperationBtn1{
    if (!_MPoperationBtn1) {
        _MPoperationBtn1 = [[UIButton alloc] init];
        [_MPoperationBtn1 setImage:[UIImage imageNamed:@"MP_caijian1"] forState:UIControlStateNormal];
        [_MPoperationBtn1 setImage:[UIImage imageNamed:@"MP_caijian1"] forState:UIControlStateHighlighted];
        _MPoperationBtn1.tag = 100;
        [_MPoperationBtn1 addTarget:self action:@selector(MPoperationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPoperationBtn1;
}
- (UIButton *)MPoperationBtn2{
    if (!_MPoperationBtn2) {
        _MPoperationBtn2 = [[UIButton alloc] init];
        [_MPoperationBtn2 setImage:[UIImage imageNamed:@"MP_caijian2"] forState:UIControlStateNormal];
        [_MPoperationBtn2 setImage:[UIImage imageNamed:@"MP_caijian2"] forState:UIControlStateHighlighted];
        _MPoperationBtn2.tag = 101;
        [_MPoperationBtn2 addTarget:self action:@selector(MPoperationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPoperationBtn2;
}
- (UIButton *)MPoperationBtn3{
    if (!_MPoperationBtn3) {
        _MPoperationBtn3 = [[UIButton alloc] init];
        [_MPoperationBtn3 setImage:[UIImage imageNamed:@"MP_caijian3"] forState:UIControlStateNormal];
        [_MPoperationBtn3 setImage:[UIImage imageNamed:@"MP_caijian3"] forState:UIControlStateHighlighted];
        _MPoperationBtn3.tag = 102;
        [_MPoperationBtn3 addTarget:self action:@selector(MPoperationAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _MPoperationBtn3;
}
@end
