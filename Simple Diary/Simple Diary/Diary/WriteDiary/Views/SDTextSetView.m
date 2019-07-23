//
//  SDTextSetView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextSetView.h"
@interface SDTextSetView()<UIScrollViewDelegate>
@property(nonatomic, strong)UILabel *textFontLabel;//字体大小标题及提示
@property(nonatomic, strong)UILabel *sliderMinLabel;//字体最小值提示
@property(nonatomic, strong)UISlider *slider;//字体调节控件
@property(nonatomic, strong)UILabel *sliderMaxLabel;//字体最大提示
@property(nonatomic, strong)UILabel *textColorLabel;//字体颜色标题
@property(nonatomic, strong)UIView *colorTipsView;//字体颜色提示块
@property(nonatomic, strong)UIScrollView *colorsView;//字体颜色可选区域
@end
@implementation SDTextSetView
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)setContentView{
    [self addSubview:self.textFontLabel];
    [self addSubview:self.sliderMinLabel];
    [self addSubview:self.slider];
    [self addSubview:self.sliderMaxLabel];
    [self addSubview:self.textColorLabel];
    [self addSubview:self.colorTipsView];
    [self addSubview:self.colorsView];
}
- (void)setLayoutContentView{
    [self.textFontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(16);
        make.leading.equalTo(self).offset(16);
        make.trailing.equalTo(self).offset(-16);
        make.height.mas_equalTo(16);
    }];
    [self.sliderMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textFontLabel.mas_bottom).offset(16);
        make.leading.equalTo(self).offset(16);
        make.width.mas_equalTo(16);
        make.height.mas_equalTo(16);
    }];
    [self.slider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.sliderMinLabel);
        make.leading.equalTo(self.sliderMinLabel.mas_trailing).offset(16);
        make.height.mas_equalTo(20);
        make.trailing.equalTo(self.sliderMaxLabel.mas_leading).offset(-16);
    }];
    [self.sliderMaxLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textFontLabel.mas_bottom).offset(16);
        make.trailing.equalTo(self).offset(-16);
        make.width.mas_equalTo(16);
        make.height.mas_equalTo(16);
    }];
    [self.textColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.slider.mas_bottom).offset(16);
        make.leading.equalTo(self).offset(16);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(16);
    }];
    [self.colorTipsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.textColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(16);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(20);
    }];
    
}
#pragma mark - actions
#pragma mark - 字体大小调节实现
-(void)sliderValueChanged:(UISlider *)slider{
    
}
#pragma mark - getters
- (UILabel *)textFontLabel{
    if (!_textFontLabel) {
        _textFontLabel = [[UILabel alloc] init];
        _textFontLabel.textColor = [UIColor blackColor];
        [_textFontLabel setFont:[UIFont systemFontOfSize:12]];
        _textFontLabel.text = @"字体大小:17";
    }
    return _textFontLabel;
}
- (UILabel *)sliderMinLabel{
    if (!_sliderMinLabel) {
        _sliderMinLabel = [[UILabel alloc] init];
        _sliderMinLabel.textColor = [UIColor blackColor];
        _sliderMinLabel.font = [UIFont systemFontOfSize:12];
        _sliderMinLabel.text = @"10";
    }
    return _sliderMinLabel;
}
- (UISlider *)slider{
    if (!_slider) {
        _slider = [[UISlider alloc] init];
        _slider.minimumValue = 0.0;
        _slider.maximumValue = 100.0;
        _slider.value = (7/30) * 100;
        [_slider setContinuous:YES];
        [_slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    }
    return _slider;
}
- (UILabel *)sliderMaxLabel{
    if (!_sliderMaxLabel) {
        _sliderMaxLabel = [[UILabel alloc] init];
        _sliderMaxLabel.textColor = [UIColor blackColor];
        _sliderMaxLabel.font = [UIFont systemFontOfSize:12];
        _sliderMaxLabel.text = @"40";
    }
    return _sliderMaxLabel;
}
- (UILabel *)textColorLabel{
    if (!_textColorLabel) {
        _textColorLabel = [[UILabel alloc] init];
        _textColorLabel.textColor = [UIColor blackColor];
        [_textColorLabel setFont:[UIFont systemFontOfSize:12]];
        _textColorLabel.text = @"字体大小:17";
    }
    return _textColorLabel;
}
- (UIView *)colorTipsView{
    if (!_colorTipsView) {
        _colorTipsView = [[UIView alloc] init];
        _colorTipsView.backgroundColor = [UIColor whiteColor];
    }
    return _colorTipsView;
}
- (UIScrollView *)colorsView{
    if (!_colorsView) {
        _colorsView = [[UIScrollView alloc] init];
        _colorsView.delegate = self;
        _colorsView.backgroundColor = [UIColor whiteColor];
    }
    return _colorsView;
}
@end
