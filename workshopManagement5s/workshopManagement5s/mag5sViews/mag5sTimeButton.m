//
//  mag5sTimeButton.m
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sTimeButton.h"
@interface mag5sTimeButton()

@end
@implementation mag5sTimeButton
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.1396059782608696/1.0];
        self.layer.cornerRadius = 2;
        self.layer.masksToBounds = YES;
        [self addSubview:self.dateLbl];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.dateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self);
        make.leading.equalTo(self);
        make.trailing.equalTo(self);
        make.height.mas_equalTo(22.5);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)dateLbl{
    if (!_dateLbl) {
        _dateLbl = [[UILabel alloc] init];
        _dateLbl.font = [UIFont fontWithName:@"PingFangSC-Semibold" size:16];
        _dateLbl.textColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1/1.0];
        _dateLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _dateLbl;
}

@end
