//
//  SDTextSetView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextSetView.h"
#import "SDTextColorButton.h"
#import "SDJournalEditingToolbar.h"

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
@property(nonatomic, strong)NSMutableArray *fontColorsArray;//字体颜色值数组
@end
@implementation SDTextSetView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = SDH_Color(247, 252, 251, 1);
        [self setContentColorsButton];
    }
    return self;
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
- (void)setFontSize:(CGFloat)fontSize{
    _fontSize = fontSize;
    self.slider.value = _fontSize;
    self.textFontLabel.text = [NSString stringWithFormat:@"%@   :   %ld",NSLocalizedString(@"字体大小", nil),(int)_fontSize];
}
- (void)setFontRGBDictionary:(NSDictionary *)fontRGBDictionary{
    _fontRGBDictionary = fontRGBDictionary;
    NSInteger fontR = [[_fontRGBDictionary objectForKey:@"R"] integerValue];
    NSInteger fontG = [[_fontRGBDictionary objectForKey:@"G"] integerValue];
    NSInteger fontB = [[_fontRGBDictionary objectForKey:@"B"] integerValue];
    UIColor *currentColor = SDH_Color(fontR, fontG, fontB, 1);
    for (int i = 0; i < self.colorsButtonArray.count; i++) {
        SDTextColorButton *colorButton = self.colorsButtonArray[i];
        if ([currentColor isEqual:colorButton.currentColor]) {
            [colorButton setIsSelect:YES];
            self.colorTipsView.backgroundColor = colorButton.currentColor;
            self.fontColor = colorButton.currentColor;
        }else{
            [colorButton setIsSelect:NO];
        }
    }
}
- (void)colorBtnClick:(SDTextColorButton *)colorButton{
    NSInteger tag = colorButton.tag;
    for (int i = 0; i < self.colorsButtonArray.count; i++) {
        SDTextColorButton *colorButton = self.colorsButtonArray[i];
        if (tag == colorButton.tag) {
            [colorButton setIsSelect:YES];
            self.fontRGBDictionary = self.fontColorsArray[i];
        }
    }
}
#pragma mark - actions
#pragma mark - 字体大小调节实现
-(void)sliderValueChanged:(UISlider *)slider{
    self.fontSize = slider.value;
    self.textFontLabel.text = [NSString stringWithFormat:@"%@   :   %.lf",NSLocalizedString(@"字体大小", nil),slider.value];
//    if (self.superView.editingToolbarBlock) {
//        self.superView.editingToolbarBlock(self.superView);
//    }
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
        self.fontSize = 17;
        _slider.value = 17;
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
        _colorTipsView.backgroundColor = SDH_Color(0, 0, 0, 1);
        self.fontColor = SDH_Color(0, 0, 0, 1);
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
        [self addSubview:self.textFontLabel];
        [self addSubview:self.sliderMinLabel];
        [self addSubview:self.slider];
        [self addSubview:self.sliderMaxLabel];
        [self addSubview:self.textColorLabel];
        [self addSubview:self.colorTipsView];
        [self addSubview:self.colorsScrollView];
        [self.colorsScrollView addSubview:_colorsContentView];
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
        [_colorsContentView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.colorsScrollView);//上下滚动
            make.width.equalTo(self.colorsScrollView);
        }];
    }
    return _colorsContentView;
}
- (NSMutableArray *)colorsButtonArray{
    if (!_colorsButtonArray) {
        _colorsButtonArray = [[NSMutableArray alloc] init];
    }
    return _colorsButtonArray;
}
- (NSMutableArray *)fontColorsArray{
    if (!_fontColorsArray) {
        _fontColorsArray = [[NSMutableArray alloc] init];
    }
    return _fontColorsArray;
}
- (NSMutableArray *)colorsArray{
    if (!_colorsArray) {
        _colorsArray = [[NSMutableArray alloc] init];
        UIColor *color0 = SDH_Color(0, 0, 0, 1);
        [_colorsArray addObject:color0];
        NSDictionary *dic0 = @{@"R":[NSNumber numberWithInteger:0],@"G":[NSNumber numberWithInteger:0],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic0];
        UIColor *color1 = SDH_Color(255, 255, 255, 1);
        [_colorsArray addObject:color1];
        NSDictionary *dic1 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:255]};
        [self.fontColorsArray addObject:dic1];
        UIColor *color2 = SDH_Color(176, 224, 230, 1);
        [_colorsArray addObject:color2];
        NSDictionary *dic2 = @{@"R":[NSNumber numberWithInteger:176],@"G":[NSNumber numberWithInteger:224],@"B":[NSNumber numberWithInteger:230]};
        [self.fontColorsArray addObject:dic2];
        UIColor *color3 = SDH_Color(41, 36, 33, 1);
        [_colorsArray addObject:color3];
        NSDictionary *dic3 = @{@"R":[NSNumber numberWithInteger:41],@"G":[NSNumber numberWithInteger:36],@"B":[NSNumber numberWithInteger:33]};
        [self.fontColorsArray addObject:dic3];
        UIColor *color4 = SDH_Color(227, 207, 87, 1);
        [_colorsArray addObject:color4];
        NSDictionary *dic4 = @{@"R":[NSNumber numberWithInteger:227],@"G":[NSNumber numberWithInteger:207],@"B":[NSNumber numberWithInteger:87]};
        [self.fontColorsArray addObject:dic4];
        UIColor *color5 = SDH_Color(65, 105, 225, 1);
        [_colorsArray addObject:color5];
        NSDictionary *dic5 = @{@"R":[NSNumber numberWithInteger:65],@"G":[NSNumber numberWithInteger:105],@"B":[NSNumber numberWithInteger:225]};
        [self.fontColorsArray addObject:dic5];
        UIColor *color6 = SDH_Color(192, 192, 192, 1);
        [_colorsArray addObject:color6];
        NSDictionary *dic6 = @{@"R":[NSNumber numberWithInteger:192],@"G":[NSNumber numberWithInteger:192],@"B":[NSNumber numberWithInteger:192]};
        [self.fontColorsArray addObject:dic6];
        UIColor *color7 = SDH_Color(255, 153, 18, 1);
        [_colorsArray addObject:color7];
        NSDictionary *dic7 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:153],@"B":[NSNumber numberWithInteger:18]};
        [self.fontColorsArray addObject:dic7];
        UIColor *color8 = SDH_Color(106, 90, 205, 1);
        [_colorsArray addObject:color8];
        NSDictionary *dic8 = @{@"R":[NSNumber numberWithInteger:106],@"G":[NSNumber numberWithInteger:90],@"B":[NSNumber numberWithInteger:205]};
        [self.fontColorsArray addObject:dic8];
        UIColor *color9 = SDH_Color(128, 138, 135, 1);
        [_colorsArray addObject:color9];
        NSDictionary *dic9 = @{@"R":[NSNumber numberWithInteger:128],@"G":[NSNumber numberWithInteger:138],@"B":[NSNumber numberWithInteger:135]};
        [self.fontColorsArray addObject:dic9];
        UIColor *color10 = SDH_Color(235, 142, 85, 1);
        [_colorsArray addObject:color10];
        NSDictionary *dic10 = @{@"R":[NSNumber numberWithInteger:235],@"G":[NSNumber numberWithInteger:142],@"B":[NSNumber numberWithInteger:85]};
        [self.fontColorsArray addObject:dic10];
        UIColor *color11 = SDH_Color(135, 206, 235, 1);
        [_colorsArray addObject:color11];
        NSDictionary *dic11 = @{@"R":[NSNumber numberWithInteger:135],@"G":[NSNumber numberWithInteger:206],@"B":[NSNumber numberWithInteger:235]};
        [self.fontColorsArray addObject:dic11];
        UIColor *color12 = SDH_Color(112, 128, 105, 1);
        [_colorsArray addObject:color12];
        NSDictionary *dic12 = @{@"R":[NSNumber numberWithInteger:112],@"G":[NSNumber numberWithInteger:128],@"B":[NSNumber numberWithInteger:105]};
        [self.fontColorsArray addObject:dic12];
        UIColor *color13 = SDH_Color(255, 227, 132, 1);
        [_colorsArray addObject:color13];
        NSDictionary *dic13 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:227],@"B":[NSNumber numberWithInteger:132]};
        [self.fontColorsArray addObject:dic13];
        UIColor *color14 = SDH_Color(128, 128, 105, 1);
        [_colorsArray addObject:color14];
        NSDictionary *dic14 = @{@"R":[NSNumber numberWithInteger:128],@"G":[NSNumber numberWithInteger:128],@"B":[NSNumber numberWithInteger:105]};
        [self.fontColorsArray addObject:dic14];
        UIColor *color15 = SDH_Color(255, 215, 0, 1);
        [_colorsArray addObject:color15];
        NSDictionary *dic15 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:215],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic15];
        UIColor *color16 = SDH_Color(0, 255, 255, 1);
        [_colorsArray addObject:color16];
        NSDictionary *dic16 = @{@"R":[NSNumber numberWithInteger:0],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:255]};
        [self.fontColorsArray addObject:dic16];
        UIColor *color17 = SDH_Color(218, 165, 105, 1);
        [_colorsArray addObject:color17];
        NSDictionary *dic17 = @{@"R":[NSNumber numberWithInteger:218],@"G":[NSNumber numberWithInteger:165],@"B":[NSNumber numberWithInteger:105]};
        [self.fontColorsArray addObject:dic17];
        UIColor *color18 = SDH_Color(56, 94, 15, 1);
        [_colorsArray addObject:color18];
        NSDictionary *dic18 = @{@"R":[NSNumber numberWithInteger:56],@"G":[NSNumber numberWithInteger:94],@"B":[NSNumber numberWithInteger:15]};
        [self.fontColorsArray addObject:dic18];
        UIColor *color19 = SDH_Color(227, 168, 105, 1);
        [_colorsArray addObject:color19];
        NSDictionary *dic19 = @{@"R":[NSNumber numberWithInteger:227],@"G":[NSNumber numberWithInteger:168],@"B":[NSNumber numberWithInteger:105]};
        [self.fontColorsArray addObject:dic19];
        UIColor *color20 = SDH_Color(8, 46, 84, 1);
        [_colorsArray addObject:color20];
        NSDictionary *dic20 = @{@"R":[NSNumber numberWithInteger:8],@"G":[NSNumber numberWithInteger:46],@"B":[NSNumber numberWithInteger:84]};
        [self.fontColorsArray addObject:dic20];
        UIColor *color21 = SDH_Color(250, 235, 215, 1);
        [_colorsArray addObject:color21];
        NSDictionary *dic21 = @{@"R":[NSNumber numberWithInteger:250],@"G":[NSNumber numberWithInteger:235],@"B":[NSNumber numberWithInteger:215]};
        [self.fontColorsArray addObject:dic21];
        UIColor *color22 = SDH_Color(255, 97, 0, 1);
        [_colorsArray addObject:color22];
        NSDictionary *dic22 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:97],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic22];
        UIColor *color23 = SDH_Color(127, 255, 212, 1);
        [_colorsArray addObject:color23];
        NSDictionary *dic23 = @{@"R":[NSNumber numberWithInteger:127],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:212]};
        [self.fontColorsArray addObject:dic23];
        UIColor *color24 = SDH_Color(240, 255, 255, 1);
        [_colorsArray addObject:color24];
        NSDictionary *dic24 = @{@"R":[NSNumber numberWithInteger:240],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:255]};
        [self.fontColorsArray addObject:dic24];
        UIColor *color25 = SDH_Color(255, 97, 3, 1);
        [_colorsArray addObject:color25];
        NSDictionary *dic25 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:97],@"B":[NSNumber numberWithInteger:3]};
        [self.fontColorsArray addObject:dic25];
        UIColor *color26 = SDH_Color(64, 224, 208, 1);
        [_colorsArray addObject:color26];
        NSDictionary *dic26 = @{@"R":[NSNumber numberWithInteger:64],@"G":[NSNumber numberWithInteger:224],@"B":[NSNumber numberWithInteger:208]};
        [self.fontColorsArray addObject:dic26];
        UIColor *color27 = SDH_Color(245, 245, 245, 1);
        [_colorsArray addObject:color27];
        NSDictionary *dic27 = @{@"R":[NSNumber numberWithInteger:245],@"G":[NSNumber numberWithInteger:245],@"B":[NSNumber numberWithInteger:245]};
        [self.fontColorsArray addObject:dic27];
        UIColor *color28 = SDH_Color(237, 145, 33, 1);
        [_colorsArray addObject:color28];
        NSDictionary *dic28 = @{@"R":[NSNumber numberWithInteger:237],@"G":[NSNumber numberWithInteger:145],@"B":[NSNumber numberWithInteger:33]};
        [self.fontColorsArray addObject:dic28];
        UIColor *color29 = SDH_Color(0, 255, 0, 1);
        [_colorsArray addObject:color29];
        NSDictionary *dic29 = @{@"R":[NSNumber numberWithInteger:0],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic29];
        UIColor *color30 = SDH_Color(255, 235, 205, 1);
        [_colorsArray addObject:color30];
        NSDictionary *dic30 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:235],@"B":[NSNumber numberWithInteger:205]};
        [self.fontColorsArray addObject:dic30];
        UIColor *color31 = SDH_Color(255, 128, 0, 1);
        [_colorsArray addObject:color31];
        NSDictionary *dic31 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:128],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic31];
        UIColor *color32 = SDH_Color(127, 255, 0, 1);
        [_colorsArray addObject:color32];
        NSDictionary *dic32 = @{@"R":[NSNumber numberWithInteger:127],@"G":[NSNumber numberWithInteger:255],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic32];
        UIColor *color33 = SDH_Color(255, 248, 220, 1);
        [_colorsArray addObject:color33];
        NSDictionary *dic33 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:248],@"B":[NSNumber numberWithInteger:220]};
        [self.fontColorsArray addObject:dic33];
        UIColor *color34 = SDH_Color(245, 222, 179, 1);
        [_colorsArray addObject:color34];
        NSDictionary *dic34 = @{@"R":[NSNumber numberWithInteger:245],@"G":[NSNumber numberWithInteger:222],@"B":[NSNumber numberWithInteger:179]};
        [self.fontColorsArray addObject:dic34];
        self.fontRGBDictionary = self.fontColorsArray[0];
    }
    return _colorsArray;
}
@end
