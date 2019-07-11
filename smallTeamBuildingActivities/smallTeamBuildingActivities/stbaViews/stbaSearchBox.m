//
//  stbaSearchBox.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/11.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaSearchBox.h"
@interface stbaSearchBox()
@property(nonatomic, strong)UIView *backview;
@property(nonatomic, strong)UIImageView *searchimgview;
@end
@implementation stbaSearchBox
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.backview];
        [self.backview addSubview:self.searchimgview];
        [self.backview addSubview:self.nameLbl];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self.backview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self).offset(8.5);
        make.leading.equalTo(self).offset(15);
        make.trailing.equalTo(self).offset(-15);
        make.bottom.equalTo(self).offset(-8.5);
    }];
    [self.searchimgview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.backview);
        make.leading.equalTo(self.backview).offset(15);
        make.width.mas_equalTo(15);
        make.height.mas_equalTo(15);
    }];
    [self.nameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.backview);
        make.leading.equalTo(self.searchimgview.mas_trailing).offset(10);
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(30);
    }];
}
- (UIView *)backview{
    if (!_backview) {
        _backview = [[UIView alloc] init];
        _backview.backgroundColor = stbaH_Color(239, 239, 239, 1);
        _backview.layer.cornerRadius = 4;
        _backview.layer.masksToBounds = YES;
    }
    return _backview;
}
- (UIImageView *)searchimgview{
    if (!_searchimgview) {
        _searchimgview = [[UIImageView alloc] init];
        _searchimgview.image = [UIImage imageNamed:@"search"];
    }
    return _searchimgview;
}
- (UILabel *)nameLbl{
    if (!_nameLbl) {
        _nameLbl = [[UILabel alloc] init];
        _nameLbl.text = @"Please enter contact name";
        _nameLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:13];
        _nameLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
    }
    return _nameLbl;
}
@end
