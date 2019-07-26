//
//  SDTextThemeButton.m
//  Simple Diary
//
//  Created by bykj on 2019/7/26.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextThemeButton.h"
@interface SDTextThemeButton()
@property(nonatomic, strong)UIImageView *selectImgView;
@end
@implementation SDTextThemeButton
- (instancetype)init{
    self = [super init];
    if (self) {
        [self addSubview:self.selectImgView];
        [self.selectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        self.selectImgView.hidden = YES;
    }
    return self;
}
- (void)setCurrentColor:(UIColor *)currentColor{
    _currentColor = currentColor;
    self.backgroundColor = _currentColor;
}
- (void)setIsSelect:(Boolean)isSelect{
    _isSelect = isSelect;
    if (_isSelect) {
        self.selectImgView.hidden = NO;
    }else{
        self.selectImgView.hidden = YES;
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)selectImgView{
    if (!_selectImgView) {
        _selectImgView = [[UIImageView alloc] init];
        _selectImgView.image = [UIImage imageNamed:@"SD_selected_textColor"];
    }
    return _selectImgView;
}
@end
