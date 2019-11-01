//
//  PHGuidePromptView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHGuidePromptView.h"
@interface PHGuidePromptView()

@end
@implementation PHGuidePromptView
- (instancetype)init{
    self = [super init];
    if (self) {
        [self addSubview:self.PHtitleLabel];
        [self addSubview:self.PHnumberLabel];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.PHtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.leading.equalTo(self);
        make.width.mas_equalTo(PHWIDTH - 60 - 15 - 36);
        make.bottom.equalTo(self);
    }];
    [self.PHnumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.trailing.equalTo(self);
        make.width.mas_equalTo(36);
        make.height.mas_equalTo(36);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)PHtitleLabel{
    if (!_PHtitleLabel) {
        _PHtitleLabel = [[UILabel alloc] init];
        _PHtitleLabel.textColor = [UIColor blackColor];
        _PHtitleLabel.font = [UIFont boldSystemFontOfSize:20];
        _PHtitleLabel.textAlignment = NSTextAlignmentLeft;
        _PHtitleLabel.numberOfLines = 0;
        [_PHtitleLabel sizeToFit];
    }
    return _PHtitleLabel;
}
- (UILabel *)PHnumberLabel{
    if (!_PHnumberLabel) {
        _PHnumberLabel = [[UILabel alloc] init];
        _PHnumberLabel.textColor = [UIColor blackColor];
        _PHnumberLabel.font = [UIFont boldSystemFontOfSize:18];
        _PHnumberLabel.textAlignment = NSTextAlignmentCenter;
        _PHnumberLabel.numberOfLines = 0;
        _PHnumberLabel.layer.cornerRadius = 18.0f;
        _PHnumberLabel.layer.masksToBounds = YES;
        _PHnumberLabel.backgroundColor = PHH_Color(235, 240, 240, 1);
        [_PHnumberLabel sizeToFit];
    }
    return _PHnumberLabel;
}
@end
