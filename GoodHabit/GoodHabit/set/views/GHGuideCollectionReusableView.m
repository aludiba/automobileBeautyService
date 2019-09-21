//
//  GHGuideCollectionReusableView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuideCollectionReusableView.h"
@interface GHGuideCollectionReusableView()
@end
@implementation GHGuideCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.titleLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(30);
            make.width.mas_equalTo(GHWIDTH - 60);
            make.top.equalTo(self);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setTitleString:(NSString *)titleString{
    _titleString = titleString;
    self.titleLbl.text = [NSString stringWithFormat:@"   %@   ",_titleString];
    CGSize size = [self.titleLbl sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.titleLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.titleLbl layoutIfNeeded];
    [self layoutSubviews];

}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.backgroundColor = GHH_Color(235, 240, 240, 1);
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:15];
        _titleLbl.layer.cornerRadius = 15.0f;
        _titleLbl.layer.masksToBounds = YES;
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
@end
