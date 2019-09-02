//
//  PKCategoryManagerCollectionReusableView.m
//  PocketBooks
//
//  Created by bykj on 2019/9/2.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKCategoryManagerCollectionReusableView.h"
@interface PKCategoryManagerCollectionReusableView()
@property(nonatomic, strong)UIView *line;
@end
@implementation PKCategoryManagerCollectionReusableView
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.contentLabel];
        [self addSubview:self.line];
        
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self).offset(15);
            make.top.equalTo(self).offset(5);
            make.bottom.equalTo(self.line.mas_top).offset(-4);
            make.trailing.equalTo(self).offset(-15);
        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
            make.height.mas_equalTo(1);
        }];
    }
    return self;
}
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        [self addSubview:self.contentLabel];
//        [self addSubview:self.line];
//        
//        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.leading.equalTo(self).offset(15);
//            make.top.equalTo(self);
//            make.bottom.equalTo(self);
//            make.trailing.equalTo(self).offset(-15);
//        }];
//        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.leading.equalTo(self);
//            make.trailing.equalTo(self);
//            make.bottom.equalTo(self);
//            make.height.mas_equalTo(1);
//        }];
//    }
//    return self;
//}
#pragma mark - 属性懒加载
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.font = [UIFont boldSystemFontOfSize:18];
        _contentLabel.textColor = [UIColor blackColor];
    }
    return _contentLabel;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = PKH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
