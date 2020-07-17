//
//  CDGuideCollectionViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDGuideCollectionViewCell.h"
#import "CDGuideModel.h"

@interface CDGuideCollectionViewCell()
@property(nonatomic, strong)UIImageView *CDcontentImgView;
@property(nonatomic, strong)UILabel *CDcontentLabel;
@end
@implementation CDGuideCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.CDcontentImgView];
        [self.contentView addSubview:self.CDcontentLabel];
        
        [self.CDcontentImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.CDcontentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDcontentImgView.mas_bottom).offset(5);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(30);
        }];
    }
    return self;
}
- (void)setModel:(CDGuideModel *)model{
    _model = model;
    self.CDcontentImgView.image = [UIImage imageNamed:_model.CDimageContent];
    self.CDcontentLabel.text = _model.content;
    if (_model.CDisSelect) {
        self.contentView.backgroundColor = [UIColor grayColor];
    }else{
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)CDcontentImgView{
    if (!_CDcontentImgView) {
        _CDcontentImgView = [[UIImageView alloc] init];
    }
    return _CDcontentImgView;
}
- (UILabel *)CDcontentLabel{
    if (!_CDcontentLabel) {
        _CDcontentLabel = [[UILabel alloc] init];
        _CDcontentLabel.textColor = [UIColor blackColor];
        _CDcontentLabel.font = [UIFont systemFontOfSize:14];
        _CDcontentLabel.textAlignment = NSTextAlignmentCenter;
        _CDcontentLabel.numberOfLines = 0;
        [_CDcontentLabel sizeToFit];
    }
    return _CDcontentLabel;
}
@end
