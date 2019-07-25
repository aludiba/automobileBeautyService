//
//  SDTextThemeView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/25.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextThemeView.h"
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
        
    }
    return self;
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
