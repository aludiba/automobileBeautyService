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
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        [self MPsetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)MPsetContentView{
    self.contentView.backgroundColor = MPH_Color(242, 242, 242, 1);
    [self.contentView addSubview:self.MPtitleLbl];
    
    [self.MPtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(16);
        make.top.equalTo(self.contentView).offset(16);
        make.right.equalTo(self.contentView).offset(-16);
        make.height.mas_equalTo(20);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)MPtitleLbl{
    if (!_MPtitleLbl) {
        _MPtitleLbl = [[UILabel alloc] init];
        _MPtitleLbl.textColor = [UIColor grayColor];
        _MPtitleLbl.font = [UIFont systemFontOfSize:12];
    }
    return _MPtitleLbl;
}
@end
