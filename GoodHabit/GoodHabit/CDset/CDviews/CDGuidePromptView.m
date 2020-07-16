//
//  CDGuidePromptView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDGuidePromptView.h"
@interface CDGuidePromptView()

@end
@implementation CDGuidePromptView
- (instancetype)init{
    self = [super init];
    if (self) {
        [self addSubview:self.CDtitleLabel];
        [self addSubview:self.CDnumberLabel];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.CDtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.leading.equalTo(self);
        make.width.mas_equalTo(CDWIDTH - 60 - 15 - 36);
        make.bottom.equalTo(self);
    }];
    [self.CDnumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.trailing.equalTo(self);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)CDtitleLabel{
    if (!_CDtitleLabel) {
        _CDtitleLabel = [[UILabel alloc] init];
        _CDtitleLabel.textColor = [UIColor blackColor];
        _CDtitleLabel.font = [UIFont boldSystemFontOfSize:20];
        _CDtitleLabel.textAlignment = NSTextAlignmentLeft;
        _CDtitleLabel.numberOfLines = 0;
        [_CDtitleLabel sizeToFit];
    }
    return _CDtitleLabel;
}
- (UILabel *)CDnumberLabel{
    if (!_CDnumberLabel) {
        _CDnumberLabel = [[UILabel alloc] init];
        _CDnumberLabel.textColor = [UIColor blackColor];
        _CDnumberLabel.font = [UIFont boldSystemFontOfSize:18];
        _CDnumberLabel.textAlignment = NSTextAlignmentCenter;
        _CDnumberLabel.numberOfLines = 0;
        _CDnumberLabel.layer.cornerRadius = 18.0f;
        _CDnumberLabel.layer.masksToBounds = YES;
        _CDnumberLabel.backgroundColor = CDH_Color(235, 240, 240, 1);
        [_CDnumberLabel sizeToFit];
    }
    return _CDnumberLabel;
}
@end
