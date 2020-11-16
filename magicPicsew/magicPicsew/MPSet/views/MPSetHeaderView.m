//
//  MPSetHeaderView.m
//  magicPicsew
//
//  Created by 123 on 2020/11/16.
//

#import "MPSetHeaderView.h"
@interface MPSetHeaderView()

@end
@implementation MPSetHeaderView
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self MPsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)MPsetContentView{
    self.contentView.backgroundColor = [UIColor grayColor];
    [self.contentView addSubview:self.MPtitleLbl];
    
    [self.MPtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(32);
        make.right.equalTo(self.contentView).offset(-16);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)MPtitleLbl{
    if (!_MPtitleLbl) {
        _MPtitleLbl = [[UILabel alloc] init];
        _MPtitleLbl.textColor = MPH_Color(242, 242, 242, 1);
        _MPtitleLbl.font = [UIFont systemFontOfSize:12];
    }
    return _MPtitleLbl;
}
@end
