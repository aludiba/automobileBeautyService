//
//  SDTextSetView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextSetView.h"
#import "SDTextColorButton.h"
@interface SDTextSetView()<UIScrollViewDelegate>
@property(nonatomic, strong)UILabel *textFontLabel;//字体大小标题及提示
@property(nonatomic, strong)UILabel *sliderMinLabel;//字体最小值提示
@property(nonatomic, strong)UISlider *slider;//字体调节控件
@property(nonatomic, strong)UILabel *sliderMaxLabel;//字体最大提示
@property(nonatomic, strong)UILabel *textColorLabel;//字体颜色标题
@property(nonatomic, strong)UIView *colorTipsView;//字体颜色提示块
@property(nonatomic, strong)UIScrollView *colorsScrollView;//字体颜色可选滚动区域
@property(nonatomic, strong)UIView *colorsContentView;//字体颜色可选区域
@property(nonatomic, strong)NSMutableArray *colorsButtonArray;//字体颜色选择按钮数组
@property(nonatomic, strong)NSMutableArray *colorsArray;//字体颜色数组
@end
@implementation SDTextSetView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setContentView];
        [self setLayoutContentView];
        [self setContentColorsButton];
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
    [self addSubview:self.colorsScrollView];
    [self.colorsScrollView addSubview:self.colorsContentView];
}
- (void)setLayoutContentView{
    [self.textFontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(10);
        make.leading.equalTo(self).offset(16);
        make.trailing.equalTo(self).offset(-16);
        make.height.mas_equalTo(16);
    }];
    [self.sliderMinLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.textFontLabel.mas_bottom).offset(10);
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
        make.top.equalTo(self.textFontLabel.mas_bottom).offset(10);
        make.trailing.equalTo(self).offset(-16);
        make.width.mas_equalTo(16);
        make.height.mas_equalTo(16);
    }];
    CGSize size = [self.textColorLabel sizeThatFits:CGSizeMake(MAXFLOAT, 16)];
    [self.textColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.slider.mas_bottom).offset(10);
        make.leading.equalTo(self).offset(16);
        make.width.mas_equalTo(size.width);
        make.height.mas_equalTo(16);
    }];
    [self.colorTipsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.textColorLabel);
        make.leading.equalTo(self.textColorLabel.mas_trailing).offset(16);
        make.width.mas_equalTo(50);
        make.height.mas_equalTo(20);
    }];
    [self.colorsScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.colorTipsView.mas_bottom).offset(10);
        make.leading.equalTo(self).offset(16);
        make.trailing.equalTo(self).offset(-16);
        make.bottom.equalTo(self).offset(-10);
    }];
    [self.colorsContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.colorsScrollView);//上下滚动
        make.width.equalTo(self.colorsScrollView);
    }];
}
- (void)setContentColorsButton{
    CGFloat width = 44.0f;
    CGFloat height = 44.0f;
    CGFloat margin = (SDWIDTH - 32 - width * 7) / 8;
    for (int i = 0; i < self.colorsArray.count; i++) {
        UIColor *color = self.colorsArray[i];
        SDTextColorButton *colorButton = [[SDTextColorButton alloc] init];
        [colorButton addTarget:self action:@selector(colorBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        colorButton.tag = 100 + i;
        [colorButton setCurrentColor:color];
        [self.colorsButtonArray addObject:colorButton];
        [self.colorsContentView addSubview:colorButton];
        NSInteger line = i / 7;
        NSInteger column = i % 7;
        [colorButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.colorsContentView).offset(margin * (column + 1) + width * column);
            make.top.equalTo(self.colorsContentView).offset(margin * (line + 1) + width * line);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
        if (i == 0) {
            [colorButton setIsSelect:YES];
        }
        if (i == self.colorsArray.count -1) {
            [self.colorsContentView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.bottom.equalTo(colorButton.mas_bottom).offset(margin);
            }];
        }
    }
}
- (void)colorBtnClick:(SDTextColorButton *)colorButton{
    NSInteger tag = colorButton.tag;
    for (int i = 0; i < self.colorsButtonArray.count; i++) {
        SDTextColorButton *colorButton = self.colorsButtonArray[i];
        if (tag == colorButton.tag) {
            [colorButton setIsSelect:YES];
            self.colorTipsView.backgroundColor = colorButton.currentColor;
            self.fontColor = colorButton.currentColor;
        }else{
            [colorButton setIsSelect:NO];
        }
    }
}
#pragma mark - actions
#pragma mark - 字体大小调节实现
-(void)sliderValueChanged:(UISlider *)slider{
    self.fontSize = slider.value;
    self.textFontLabel.text = [NSString stringWithFormat:@"%@   :   %.lf",NSLocalizedString(@"字体大小", nil),slider.value];
}
#pragma mark - getters
- (UILabel *)textFontLabel{
    if (!_textFontLabel) {
        _textFontLabel = [[UILabel alloc] init];
        _textFontLabel.textColor = [UIColor blackColor];
        [_textFontLabel setFont:[UIFont systemFontOfSize:14]];
        _textFontLabel.text = [NSString stringWithFormat:@"%@   :   17",NSLocalizedString(@"字体大小", nil)];
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
        _slider.minimumValue = 10.0;
        _slider.maximumValue = 40.0;
        _slider.value = 17;
        self.fontSize = 17;
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
        [_textColorLabel setFont:[UIFont systemFontOfSize:14]];
        _textColorLabel.text = NSLocalizedString(@"字体颜色", nil);
    }
    return _textColorLabel;
}
- (UIView *)colorTipsView{
    if (!_colorTipsView) {
        _colorTipsView = [[UIView alloc] init];
        _colorTipsView.backgroundColor = [UIColor blackColor];
    }
    return _colorTipsView;
}
- (UIScrollView *)colorsScrollView{
    if (!_colorsScrollView) {
        _colorsScrollView = [[UIScrollView alloc] init];
        _colorsScrollView.delegate = self;
        _colorsScrollView.backgroundColor = [UIColor whiteColor];
    }
    return _colorsScrollView;
}
- (UIView *)colorsContentView{
    if (!_colorsContentView) {
        _colorsContentView = [[UIView alloc] init];
        _colorsContentView.backgroundColor = [UIColor whiteColor];
    }
    return _colorsContentView;
}
- (NSMutableArray *)colorsButtonArray{
    if (!_colorsButtonArray) {
        _colorsButtonArray = [[NSMutableArray alloc] init];
    }
    return _colorsButtonArray;
}
- (NSMutableArray *)colorsArray{
    if (!_colorsArray) {
        _colorsArray = [[NSMutableArray alloc] init];
        UIColor *color0 = SDH_Color(0, 0, 0, 1);
        [_colorsArray addObject:color0];
        UIColor *color1 = SDH_Color(255, 255, 255, 1);
        [_colorsArray addObject:color1];
        UIColor *color2 = SDH_Color(176, 224, 230, 1);
        [_colorsArray addObject:color2];
        UIColor *color3 = SDH_Color(41, 36, 33, 1);
        [_colorsArray addObject:color3];
        UIColor *color4 = SDH_Color(227, 207, 87, 1);
        [_colorsArray addObject:color4];
        UIColor *color5 = SDH_Color(65, 105, 225, 1);
        [_colorsArray addObject:color5];
        UIColor *color6 = SDH_Color(192, 192, 192, 1);
        [_colorsArray addObject:color6];
        UIColor *color7 = SDH_Color(255, 153, 18, 1);
        [_colorsArray addObject:color7];
        UIColor *color8 = SDH_Color(106, 90, 205, 1);
        [_colorsArray addObject:color8];
        UIColor *color9 = SDH_Color(128, 138, 135, 1);
        [_colorsArray addObject:color9];
        UIColor *color10 = SDH_Color(235, 142, 85, 1);
        [_colorsArray addObject:color10];
        UIColor *color11 = SDH_Color(135, 206, 235, 1);
        [_colorsArray addObject:color11];
        UIColor *color12 = SDH_Color(112, 128, 105, 1);
        [_colorsArray addObject:color12];
        UIColor *color13 = SDH_Color(255, 227, 132, 1);
        [_colorsArray addObject:color13];
        UIColor *color14 = SDH_Color(128, 128, 105, 1);
        [_colorsArray addObject:color14];
        UIColor *color15 = SDH_Color(255, 215, 0, 1);
        [_colorsArray addObject:color15];
        UIColor *color16 = SDH_Color(0, 255, 255, 1);
        [_colorsArray addObject:color16];
        UIColor *color17 = SDH_Color(218, 165, 105, 1);
        [_colorsArray addObject:color17];
        UIColor *color18 = SDH_Color(56, 94, 15, 1);
        [_colorsArray addObject:color18];
        UIColor *color19 = SDH_Color(227, 168, 105, 1);
        [_colorsArray addObject:color19];
        UIColor *color20 = SDH_Color(8, 46, 84, 1);
        [_colorsArray addObject:color20];
        UIColor *color21 = SDH_Color(250, 235, 215, 1);
        [_colorsArray addObject:color21];
        UIColor *color22 = SDH_Color(255, 97, 0, 1);
        [_colorsArray addObject:color22];
        UIColor *color23 = SDH_Color(127, 255, 212, 1);
        [_colorsArray addObject:color23];
        UIColor *color24 = SDH_Color(240, 255, 255, 1);
        [_colorsArray addObject:color24];
        UIColor *color25 = SDH_Color(255, 97, 3, 1);
        [_colorsArray addObject:color25];
        UIColor *color26 = SDH_Color(64, 224, 208, 1);
        [_colorsArray addObject:color26];
        UIColor *color27 = SDH_Color(245, 245, 245, 1);
        [_colorsArray addObject:color27];
        UIColor *color28 = SDH_Color(237, 145, 33, 1);
        [_colorsArray addObject:color28];
        UIColor *color29 = SDH_Color(0, 255, 0, 1);
        [_colorsArray addObject:color29];
        UIColor *color30 = SDH_Color(255, 235, 205, 1);
        [_colorsArray addObject:color30];
        UIColor *color31 = SDH_Color(255, 128, 0, 1);
        [_colorsArray addObject:color31];
        UIColor *color32 = SDH_Color(127, 255, 0, 1);
        [_colorsArray addObject:color32];
        UIColor *color33 = SDH_Color(255, 248, 220, 1);
        [_colorsArray addObject:color33];
        UIColor *color34 = SDH_Color(245, 222, 179, 1);
        [_colorsArray addObject:color34];
    }
    return _colorsArray;
}
@end
