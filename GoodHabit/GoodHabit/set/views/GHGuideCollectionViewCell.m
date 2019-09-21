//
//  GHGuideCollectionViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuideCollectionViewCell.h"
#import "GHGuideModel.h"

@interface GHGuideCollectionViewCell()
@property(nonatomic, strong)UIImageView *contentImgView;
@property(nonatomic, strong)UILabel *contentLabel;
@end
@implementation GHGuideCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.contentImgView];
        [self.contentView addSubview:self.contentLabel];
        
        [self.contentImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentImgView.mas_bottom).offset(5);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setModel:(GHGuideModel *)model{
    _model = model;
    self.contentImgView.image = [UIImage imageNamed:_model.imageContent];
    self.contentLabel.text = _model.content;
    if (_model.isSelect) {
        self.contentView.backgroundColor = [UIColor grayColor];
    }else{
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)contentImgView{
    if (!_contentImgView) {
        _contentImgView = [[UIImageView alloc] init];
    }
    return _contentImgView;
}
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.font = [UIFont systemFontOfSize:14];
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.numberOfLines = 0;
        [_contentLabel sizeToFit];
    }
    return _contentLabel;
}
@end
