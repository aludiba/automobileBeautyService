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

@end
