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
@end
@implementation SDTextThemeView
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
}
- (void)colorBtnClick:(SDTextThemeButton *)colorButton{
    NSInteger tag = colorButton.tag;
    for (int i = 0; i < self.colorsButtonArray.count; i++) {
        SDTextThemeButton *colorButton = self.colorsButtonArray[i];
        if (tag == colorButton.tag) {
            [colorButton setIsSelect:YES];
            self.themeColor = colorButton.currentColor;
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
- (NSMutableArray *)colorsArray{
    if (!_colorsArray) {
        _colorsArray = [[NSMutableArray alloc] init];
        UIColor *color0 = SDH_Color(225, 225, 225, 1);
        [_colorsArray addObject:color0];
        UIColor *color1 = SDH_Color(245, 222, 179, 1);
        [_colorsArray addObject:color1];
        UIColor *color2 = SDH_Color(61, 145, 64, 1);
        [_colorsArray addObject:color2];
        UIColor *color3 = SDH_Color(252, 230, 201, 1);
        [_colorsArray addObject:color3];
        UIColor *color4 = SDH_Color(0, 201, 87, 1);
        [_colorsArray addObject:color4];
        UIColor *color5 = SDH_Color(255, 250, 240, 1);
        [_colorsArray addObject:color5];
        UIColor *color6 = SDH_Color(128, 42, 42, 1);
        [_colorsArray addObject:color6];
        UIColor *color7 = SDH_Color(34, 139, 34, 1);
        [_colorsArray addObject:color7];
        UIColor *color8 = SDH_Color(220, 220, 220, 1);
        [_colorsArray addObject:color8];
        UIColor *color9 = SDH_Color(163, 148, 128, 1);
        [_colorsArray addObject:color9];
        UIColor *color10 = SDH_Color(124, 252, 0, 1);
        [_colorsArray addObject:color10];
        UIColor *color11 = SDH_Color(248, 248, 255, 1);
        [_colorsArray addObject:color11];
        UIColor *color12 = SDH_Color(138, 54, 15, 1);
        [_colorsArray addObject:color12];
    }
    return _colorsArray;
}
@end
