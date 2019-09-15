//
//  GHGuidePromptView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuidePromptView.h"
@interface GHGuidePromptView()

@end
@implementation GHGuidePromptView
- (instancetype)init{
    self = [super init];
    if (self) {
        [self addSubview:self.titleLabel];
        [self addSubview:self.numberLabel];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.leading.equalTo(self);
        make.width.mas_equalTo(GHWIDTH - 60 - 15 - 36);
        make.bottom.equalTo(self);
    }];
    [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.trailing.equalTo(self);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.font = [UIFont boldSystemFontOfSize:20];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.numberOfLines = 0;
        [_titleLabel sizeToFit];
    }
    return _titleLabel;
}
- (UILabel *)numberLabel{
    if (!_numberLabel) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.textColor = [UIColor blackColor];
        _numberLabel.font = [UIFont boldSystemFontOfSize:18];
        _numberLabel.textAlignment = NSTextAlignmentCenter;
        _numberLabel.numberOfLines = 0;
        _numberLabel.layer.cornerRadius = 18.0f;
        _numberLabel.layer.masksToBounds = YES;
        _numberLabel.backgroundColor = GHH_Color(235, 240, 240, 1);
        [_numberLabel sizeToFit];
    }
    return _numberLabel;
}
@end
