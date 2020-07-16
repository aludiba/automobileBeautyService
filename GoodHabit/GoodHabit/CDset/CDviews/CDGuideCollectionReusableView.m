//
//  CDGuideCollectionReusableView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDGuideCollectionReusableView.h"
@interface CDGuideCollectionReusableView()
@end
@implementation CDGuideCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.CDtitleLbl];
        
        [self.CDtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(30);
            make.width.mas_equalTo(CDWIDTH - 60);
            make.top.equalTo(self);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setCDtitleString:(NSString *)CDtitleString{
    _CDtitleString = CDtitleString;
    self.CDtitleLbl.text = [NSString stringWithFormat:@"   %@   ",_CDtitleString];
    CGSize size = [self.CDtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.CDtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.CDtitleLbl layoutIfNeeded];
    [self layoutSubviews];

}
#pragma mark - 属性懒加载
- (UILabel *)CDtitleLbl{
    if (!_CDtitleLbl) {
        _CDtitleLbl = [[UILabel alloc] init];
        _CDtitleLbl.backgroundColor = CDH_Color(235, 240, 240, 1);
        _CDtitleLbl.textColor = [UIColor blackColor];
        _CDtitleLbl.font = [UIFont systemFontOfSize:15];
        _CDtitleLbl.layer.cornerRadius = 15.0f;
        _CDtitleLbl.layer.masksToBounds = YES;
        _CDtitleLbl.numberOfLines = 0;
    }
    return _CDtitleLbl;
}
@end
