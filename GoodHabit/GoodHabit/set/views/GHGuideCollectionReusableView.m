//
//  GHGuideCollectionReusableView.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuideCollectionReusableView.h"
@interface GHGuideCollectionReusableView()
@property(nonatomic, strong)UILabel *titleLabel;
@end
@implementation GHGuideCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.titleLabel];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(30);
            make.width.mas_equalTo(GHWIDTH - 60);
            make.top.equalTo(self);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setTitle:(NSString *)title{
    _title = title;
    self.titleLabel.text = [NSString stringWithFormat:@" %@ ",NSLocalizedString(_title, nil)];
    CGSize size = CGSizeMake(MAXFLOAT, 30);
    [self.titleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.titleLabel layoutIfNeeded];
    [self layoutSubviews];
    
}
#pragma mark - 属性懒加载
- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] init];
        _titleLabel.backgroundColor = GHH_Color(235, 240, 240, 1);
        _titleLabel.textColor = [UIColor blackColor];
        _titleLabel.font = [UIFont systemFontOfSize:15];
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.layer.cornerRadius = 15.0f;
        _titleLabel.layer.masksToBounds = YES;
        _titleLabel.numberOfLines = 0;
        [_titleLabel sizeToFit];
    }
    return _titleLabel;
}
@end
