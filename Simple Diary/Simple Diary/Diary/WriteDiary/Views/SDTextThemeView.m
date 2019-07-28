//
//  SDTextThemeView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/25.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextThemeView.h"
#import "SDTextThemeButton.h"
@interface SDTextThemeView()<UIScrollViewDelegate>
@property(nonatomic, strong)UIScrollView *colorsScrollView;//字体颜色可选滚动区域
@property(nonatomic, strong)UIView *colorsContentView;//字体颜色可选区域
@property(nonatomic, strong)NSMutableArray *colorsButtonArray;//字体颜色选择按钮数组
@property(nonatomic, strong)NSMutableArray *colorsArray;//字体颜色数组
@property(nonatomic, strong)NSMutableArray *fontColorsArray;//字体颜色值数组
@end
@implementation SDTextThemeView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = SDH_Color(247, 252, 251, 1);
        self.themeColor = SDH_Color(225, 225, 225, 1);
        [self setContentView];
        [self setLayoutContentView];
        [self setContentColorsButton];
    }
    return self;
}
- (void)setContentView{
    [self addSubview:self.colorsScrollView];
    [self.colorsScrollView addSubview:self.colorsContentView];
}
- (void)setLayoutContentView{
    [self.colorsScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(10);
        make.leading.equalTo(self).offset(10);
        make.trailing.equalTo(self).offset(-10);
        make.bottom.equalTo(self).offset(-10);
    }];
    [self.colorsContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.colorsScrollView);
        make.height.equalTo(self.colorsScrollView);
    }];
}
- (void)setContentColorsButton{
    CGFloat width = 125.0f;
    CGFloat height = 250.0f;
    CGFloat margin = 8.0f;
    for (int i = 0; i < self.colorsArray.count; i++) {
        UIColor *color = self.colorsArray[i];
        SDTextThemeButton *colorButton = [[SDTextThemeButton alloc] init];
        [colorButton addTarget:self action:@selector(colorBtnClick:) forControlEvents:UIControlEventTouchUpInside];
        colorButton.tag = 100 + i;
        [colorButton setCurrentColor:color];
        [self.colorsButtonArray addObject:colorButton];
        [self.colorsContentView addSubview:colorButton];
        [colorButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.colorsContentView).offset(margin * (i + 1) + width * i);
            make.top.equalTo(self.colorsContentView);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
        if (i == 0) {
            [colorButton setIsSelect:YES];
        }
        if (i == self.colorsArray.count -1) {
            [self.colorsContentView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.trailing.equalTo(colorButton.mas_trailing);
            }];
        }
    }
    self.themeColor = SDH_Color(225, 225, 225, 1);
    self.themeRGBDictionary = self.fontColorsArray[0];
}
- (void)colorBtnClick:(SDTextThemeButton *)colorButton{
    NSInteger tag = colorButton.tag;
    for (int i = 0; i < self.colorsButtonArray.count; i++) {
        SDTextThemeButton *colorButton = self.colorsButtonArray[i];
        if (tag == colorButton.tag) {
            [colorButton setIsSelect:YES];
            self.themeColor = colorButton.currentColor;
            self.themeRGBDictionary = self.fontColorsArray[i];
        }else{
            [colorButton setIsSelect:NO];
        }
    }
}
#pragma mark - 属性懒加载
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
- (NSMutableArray *)fontColorsArray{
    if (!_fontColorsArray) {
        _fontColorsArray = [[NSMutableArray alloc] init];
    }
    return _fontColorsArray;
}
- (NSMutableArray *)colorsArray{
    if (!_colorsArray) {
        _colorsArray = [[NSMutableArray alloc] init];
        UIColor *color0 = SDH_Color(225, 225, 225, 1);
        [_colorsArray addObject:color0];
        NSDictionary *dic0 = @{@"R":[NSNumber numberWithInteger:225],@"G":[NSNumber numberWithInteger:225],@"B":[NSNumber numberWithInteger:225]};
        [self.fontColorsArray addObject:dic0];
        UIColor *color1 = SDH_Color(245, 222, 179, 1);
        [_colorsArray addObject:color1];
        NSDictionary *dic1 = @{@"R":[NSNumber numberWithInteger:245],@"G":[NSNumber numberWithInteger:222],@"B":[NSNumber numberWithInteger:179]};
        [self.fontColorsArray addObject:dic1];
        UIColor *color2 = SDH_Color(61, 145, 64, 1);
        [_colorsArray addObject:color2];
        NSDictionary *dic2 = @{@"R":[NSNumber numberWithInteger:61],@"G":[NSNumber numberWithInteger:145],@"B":[NSNumber numberWithInteger:64]};
        [self.fontColorsArray addObject:dic2];
        UIColor *color3 = SDH_Color(252, 230, 201, 1);
        [_colorsArray addObject:color3];
        NSDictionary *dic3 = @{@"R":[NSNumber numberWithInteger:252],@"G":[NSNumber numberWithInteger:230],@"B":[NSNumber numberWithInteger:201]};
        [self.fontColorsArray addObject:dic3];
        UIColor *color4 = SDH_Color(0, 201, 87, 1);
        [_colorsArray addObject:color4];
        NSDictionary *dic4 = @{@"R":[NSNumber numberWithInteger:0],@"G":[NSNumber numberWithInteger:201],@"B":[NSNumber numberWithInteger:87]};
        [self.fontColorsArray addObject:dic4];
        UIColor *color5 = SDH_Color(255, 250, 240, 1);
        [_colorsArray addObject:color5];
        NSDictionary *dic5 = @{@"R":[NSNumber numberWithInteger:255],@"G":[NSNumber numberWithInteger:250],@"B":[NSNumber numberWithInteger:240]};
        [self.fontColorsArray addObject:dic5];
        UIColor *color6 = SDH_Color(128, 42, 42, 1);
        [_colorsArray addObject:color6];
        NSDictionary *dic6 = @{@"R":[NSNumber numberWithInteger:128],@"G":[NSNumber numberWithInteger:42],@"B":[NSNumber numberWithInteger:42]};
        [self.fontColorsArray addObject:dic6];
        UIColor *color7 = SDH_Color(34, 139, 34, 1);
        [_colorsArray addObject:color7];
        NSDictionary *dic7 = @{@"R":[NSNumber numberWithInteger:34],@"G":[NSNumber numberWithInteger:139],@"B":[NSNumber numberWithInteger:34]};
        [self.fontColorsArray addObject:dic7];
        UIColor *color8 = SDH_Color(220, 220, 220, 1);
        [_colorsArray addObject:color8];
        NSDictionary *dic8 = @{@"R":[NSNumber numberWithInteger:220],@"G":[NSNumber numberWithInteger:220],@"B":[NSNumber numberWithInteger:220]};
        [self.fontColorsArray addObject:dic8];
        UIColor *color9 = SDH_Color(163, 148, 128, 1);
        [_colorsArray addObject:color9];
        NSDictionary *dic9 = @{@"R":[NSNumber numberWithInteger:163],@"G":[NSNumber numberWithInteger:148],@"B":[NSNumber numberWithInteger:128]};
        [self.fontColorsArray addObject:dic9];
        UIColor *color10 = SDH_Color(124, 252, 0, 1);
        [_colorsArray addObject:color10];
        NSDictionary *dic10 = @{@"R":[NSNumber numberWithInteger:124],@"G":[NSNumber numberWithInteger:252],@"B":[NSNumber numberWithInteger:0]};
        [self.fontColorsArray addObject:dic10];
        UIColor *color11 = SDH_Color(248, 248, 255, 1);
        [_colorsArray addObject:color11];
        NSDictionary *dic11 = @{@"R":[NSNumber numberWithInteger:248],@"G":[NSNumber numberWithInteger:248],@"B":[NSNumber numberWithInteger:255]};
        [self.fontColorsArray addObject:dic11];
        UIColor *color12 = SDH_Color(138, 54, 15, 1);
        [_colorsArray addObject:color12];
        NSDictionary *dic12 = @{@"R":[NSNumber numberWithInteger:138],@"G":[NSNumber numberWithInteger:54],@"B":[NSNumber numberWithInteger:15]};
        [self.fontColorsArray addObject:dic12];
    }
    return _colorsArray;
}
@end
