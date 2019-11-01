//
//  PHGuideCollectionViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHGuideCollectionViewCell.h"
#import "PHGuideModel.h"

@interface PHGuideCollectionViewCell()
@property(nonatomic, strong)UIImageView *PHcontentImgView;
@property(nonatomic, strong)UILabel *PHcontentLabel;
@end
@implementation PHGuideCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.PHcontentImgView];
        [self.contentView addSubview:self.PHcontentLabel];
        
        [self.PHcontentImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.PHcontentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHcontentImgView.mas_bottom).offset(5);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setModel:(PHGuideModel *)model{
    _model = model;
    self.PHcontentImgView.image = [UIImage imageNamed:_model.PHimageContent];
    self.PHcontentLabel.text = _model.content;
    if (_model.PHisSelect) {
        self.contentView.backgroundColor = [UIColor grayColor];
    }else{
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)PHcontentImgView{
    if (!_PHcontentImgView) {
        _PHcontentImgView = [[UIImageView alloc] init];
    }
    return _PHcontentImgView;
}
- (UILabel *)PHcontentLabel{
    if (!_PHcontentLabel) {
        _PHcontentLabel = [[UILabel alloc] init];
        _PHcontentLabel.textColor = [UIColor blackColor];
        _PHcontentLabel.font = [UIFont systemFontOfSize:14];
        _PHcontentLabel.textAlignment = NSTextAlignmentCenter;
        _PHcontentLabel.numberOfLines = 0;
        [_PHcontentLabel sizeToFit];
    }
    return _PHcontentLabel;
}
@end
