//
//  SDButton.m
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDButton.h"
@interface SDButton()

@end
@implementation SDButton
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.numberLabel];
        [self.numberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.trailing.equalTo(self);
            make.width.mas_equalTo(12);
            make.height.mas_equalTo(12);
        }];
        self.numberLabel.hidden = YES;
    }
    return self;
}
- (void)setHighlighted:(BOOL)highlighted{
    
}
#pragma mark - 属性懒加载
- (UILabel *)numberLabel{
    if (!_numberLabel) {
        _numberLabel = [[UILabel alloc] init];
        _numberLabel.backgroundColor = [UIColor blackColor];
        _numberLabel.textColor = [UIColor whiteColor];
        _numberLabel.textAlignment = NSTextAlignmentCenter;
        _numberLabel.font = [UIFont systemFontOfSize:10];
        _numberLabel.layer.cornerRadius = 6.0f;
        _numberLabel.layer.masksToBounds = YES;
    }
    return _numberLabel;
}
@end
