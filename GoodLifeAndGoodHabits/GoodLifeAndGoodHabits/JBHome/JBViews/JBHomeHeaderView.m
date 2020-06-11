//
//  JBHomeHeaderView.m
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/11.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBHomeHeaderView.h"
@interface JBHomeHeaderView()
@property(nonatomic, strong)UILabel *JBTitleLbl;
@end
@implementation JBHomeHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.JBTitleLbl];
        
        [self.JBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(7.5);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(25);
            make.bottom.equalTo(self.contentView).offset(-7.5);
        }];
    }
    return self;
}
- (void)setJBTitleString:(NSString *)JBTitleString{
    _JBTitleString = JBTitleString;
    self.JBTitleLbl.text = _JBTitleString;
}
#pragma mark - 属性懒加载
- (UILabel *)JBTitleLbl{
    if (!_JBTitleLbl) {
        _JBTitleLbl = [[UILabel alloc] init];
        _JBTitleLbl.textColor = [UIColor systemGreenColor];
        _JBTitleLbl.font = [UIFont systemFontOfSize:22];
        [_JBTitleLbl sizeToFit];
    }
    return _JBTitleLbl;
}
@end
