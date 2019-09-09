//
//  PKOverallSituationHeadView.m
//  PocketBooks
//
//  Created by bykj on 2019/9/9.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKOverallSituationHeadView.h"
#import "PKOverallSituationModel.h"

@interface PKOverallSituationHeadView()
@property(nonatomic, strong)UILabel *monthLabel;//月份
@property(nonatomic, strong)UILabel *totalAmountLabel;//总额
@property(nonatomic, strong)UILabel *limitLabel;//限额
@end
@implementation PKOverallSituationHeadView
- (void)layoutSubviews{
    [super layoutSubviews];
    self.backgroundColor = PKH_Color(0, 165, 253, 1);
    [self addSubview:self.monthLabel];
    [self addSubview:self.totalAmountLabel];
    [self addSubview:self.limitLabel];
    
    [self.monthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(10);
        make.leading.equalTo(self).offset(15);
        make.trailing.equalTo(self).offset(-15);
        make.height.mas_equalTo(16);
    }];
    [self.totalAmountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.monthLabel.mas_bottom).offset(10);
        make.leading.equalTo(self).offset(15);
        make.trailing.equalTo(self).offset(-15);
        make.height.mas_equalTo(20);
    }];
    [self.limitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.totalAmountLabel.mas_bottom).offset(10);
        make.leading.equalTo(self).offset(15);
        make.trailing.equalTo(self).offset(-15);
        make.height.mas_equalTo(16);
        make.bottom.equalTo(self).offset(-10);
    }];
}
- (void)setModel:(PKOverallSituationModel *)model{
    _model = model;
    self.monthLabel.text = _model.monthString;
    self.totalAmountLabel.text = _model.totalAmountString;
    self.limitLabel.text = _model.limitString;
}
#pragma mark - 属性懒加载
- (UILabel *)monthLabel{
    if (!_monthLabel) {
        _monthLabel = [[UILabel alloc] init];
        _monthLabel.textColor = [UIColor blackColor];
        _monthLabel.font = [UIFont systemFontOfSize:15];
        _monthLabel.textAlignment = NSTextAlignmentCenter;
        _monthLabel.numberOfLines = 0;
    }
    return _monthLabel;
}
- (UILabel *)totalAmountLabel{
    if (!_totalAmountLabel) {
        _totalAmountLabel = [[UILabel alloc] init];
        _totalAmountLabel.textColor = [UIColor blackColor];
        _totalAmountLabel.font = [UIFont systemFontOfSize:18];
        _totalAmountLabel.textAlignment = NSTextAlignmentCenter;
        _totalAmountLabel.numberOfLines = 0;
    }
    return _totalAmountLabel;
}
- (UILabel *)limitLabel{
    if (!_limitLabel) {
        _limitLabel = [[UILabel alloc] init];
        _limitLabel.textColor = [UIColor blackColor];
        _limitLabel.font = [UIFont systemFontOfSize:15];
        _limitLabel.textAlignment = NSTextAlignmentCenter;
        _limitLabel.numberOfLines = 0;
    }
    return _limitLabel;
}
@end
