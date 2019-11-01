//
//  PHGuideCollectionReusableView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHGuideCollectionReusableView.h"
@interface PHGuideCollectionReusableView()
@end
@implementation PHGuideCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.PHtitleLbl];
        
        [self.PHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(30);
            make.width.mas_equalTo(PHWIDTH - 60);
            make.top.equalTo(self);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setPHtitleString:(NSString *)PHtitleString{
    _PHtitleString = PHtitleString;
    self.PHtitleLbl.text = [NSString stringWithFormat:@"   %@   ",_PHtitleString];
    CGSize size = [self.PHtitleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.PHtitleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PHtitleLbl layoutIfNeeded];
    [self layoutSubviews];

}
#pragma mark - 属性懒加载
- (UILabel *)PHtitleLbl{
    if (!_PHtitleLbl) {
        _PHtitleLbl = [[UILabel alloc] init];
        _PHtitleLbl.backgroundColor = PHH_Color(235, 240, 240, 1);
        _PHtitleLbl.textColor = [UIColor blackColor];
        _PHtitleLbl.font = [UIFont systemFontOfSize:15];
        _PHtitleLbl.layer.cornerRadius = 15.0f;
        _PHtitleLbl.layer.masksToBounds = YES;
        _PHtitleLbl.numberOfLines = 0;
    }
    return _PHtitleLbl;
}
@end
