//
//  mag5sChildrenTimeView.m
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sChildrenTimeView.h"
#import "mag5sTimeButton.h"

@interface mag5sChildrenTimeView()

@end
@implementation mag5sChildrenTimeView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self addSubview:self.weekDateLbl];
        [self addSubview:self.backView];
        [self.backView addSubview:self.childBtn];
        
        [self.weekDateLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self).offset(10.5);
            make.centerX.equalTo(self);
            make.width.mas_equalTo(71);
            make.height.mas_equalTo(20);
        }];
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self);
            make.centerX.equalTo(self);
            make.width.mas_equalTo(71);
            make.height.mas_equalTo(70);
        }];
        [self.childBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.backView);
            make.centerX.equalTo(self.backView);
            make.width.mas_equalTo(61);
            make.height.mas_equalTo(56);
        }];
    }
    return self;
}
#pragma mark - 属性懒加载
- (UILabel *)weekDateLbl{
    if (!_weekDateLbl) {
        _weekDateLbl = [[UILabel alloc] init];
        _weekDateLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _weekDateLbl.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _weekDateLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _weekDateLbl;
}
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor colorWithRed:68/255.0 green:92/255.0 blue:149/255.0 alpha:1/1.0];
    }
    return _backView;
}
- (mag5sTimeButton *)childBtn{
    if (!_childBtn) {
        _childBtn = [[mag5sTimeButton alloc] init];
    }
    return _childBtn;
}
@end
