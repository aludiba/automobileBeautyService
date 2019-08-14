//
//  ABMeasurementPositionTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementPositionTableViewCell.h"
#import "ABMeasurementModel.h"

@interface ABMeasurementPositionTableViewCell()
@property(nonatomic, strong)UIImageView *positionImgView;
@property(nonatomic, strong)UILabel *positionLabel;
@property(nonatomic, assign)CGFloat positionLblWidth;
@end
@implementation ABMeasurementPositionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.positionImgView];
        [self.contentView addSubview:self.positionLabel];
        self.positionLblWidth = 136.0f;
        
        [self.positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView).offset(7.5);
            make.width.mas_equalTo(self.positionLblWidth);
            make.height.mas_equalTo(18);
            make.bottom.equalTo(self.contentView);
        }];
        [self.positionImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.contentView);
            make.trailing.equalTo(self.positionLabel.mas_leading);
            make.width.mas_equalTo(15);
            make.height.mas_equalTo(15);
        }];
    }
    return self;
}
- (void)setModel:(ABMeasurementModel *)model{
    _model = model;
    self.positionLabel.text = _model.position;
    CGSize size = [self.positionLabel sizeThatFits:CGSizeMake(MAXFLOAT, 18)];
    self.positionLblWidth = size.width;
    if (self.positionLblWidth > ABWIDTH - 15) {
        self.positionLblWidth = ABWIDTH - 15;
    }
    [self.positionLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(self.positionLblWidth);
    }];
    [self.positionLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UIImageView *)positionImgView{
    if (!_positionImgView) {
        _positionImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ab_positioning"]];
    }
    return _positionImgView;
}
- (UILabel *)positionLabel{
    if (!_positionLabel) {
        _positionLabel = [[UILabel alloc] init];
        _positionLabel.font = [UIFont systemFontOfSize:17];
        _positionLabel.textColor = [UIColor grayColor];
        _positionLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _positionLabel.text = @"点击刷新位置信息";
        [_positionLabel sizeToFit];
    }
    return _positionLabel;
}
@end
