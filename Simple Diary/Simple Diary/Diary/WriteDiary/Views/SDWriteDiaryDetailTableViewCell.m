//
//  SDWriteDiaryDetailTableViewCell.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDWriteDiaryDetailTableViewCell.h"
#import "SDWriteDiaryModel.h"
@interface SDWriteDiaryDetailTableViewCell()
@property(nonatomic, strong)UILabel *dateLabel;
@property(nonatomic, strong)UIImageView *weatherImgView;
@property(nonatomic, strong)UIImageView *locationHeadImgView;
@property(nonatomic, strong)UILabel *locationLabel;
@property(nonatomic, strong)UILabel *contentLabel;
@property(nonatomic, assign)CGFloat contentHeight;
@end
@implementation SDWriteDiaryDetailTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.dateLabel];
        [self.contentView addSubview:self.weatherImgView];
        [self.contentView addSubview:self.locationHeadImgView];
        [self.contentView addSubview:self.locationLabel];
        [self.contentView addSubview:self.contentLabel];
        
        [self.weatherImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView).offset(15);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(30);
        }];
        [self.locationHeadImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.weatherImgView.mas_bottom).offset(15);
            make.trailing.equalTo(self.locationLabel.mas_leading).offset(-5);
            make.width.mas_equalTo(17);
            make.height.mas_equalTo(20);
        }];
        [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.locationHeadImgView);
            make.centerX.equalTo(self.contentView).offset(11);
            make.width.mas_equalTo(SDWIDTH);
            make.height.mas_equalTo(16);
        }];
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.locationLabel.mas_bottom).offset(15);
            make.centerX.equalTo(self.locationLabel);
            make.width.mas_equalTo(SDWIDTH - 30);
            make.height.mas_equalTo(17);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.dateLabel.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(1);
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(line.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(15);
            make.trailing.equalTo(self.contentView).offset(-15);
            make.height.mas_equalTo(self.contentHeight);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(SDWriteDiaryModel *)model{
    _model = model;
    NSDictionary *themeDic = _model.themeRGB;
    NSInteger themeR = [[themeDic objectForKey:@"R"] integerValue];
    NSInteger themeG = [[themeDic objectForKey:@"G"] integerValue];
    NSInteger themeB = [[themeDic objectForKey:@"B"] integerValue];
    NSDictionary *fontRGBDic = _model.fontRGB;
    NSInteger fontRGBR = [[fontRGBDic objectForKey:@"R"] integerValue];
    NSInteger fontRGBG = [[fontRGBDic objectForKey:@"G"] integerValue];
    NSInteger fontRGBB = [[fontRGBDic objectForKey:@"B"] integerValue];
    CGFloat fontSize = [_model.fontSize floatValue];
    self.contentView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    self.dateLabel.textColor = SDH_Color(fontRGBR, fontRGBG, fontRGBB, 1);
    self.dateLabel.text = [NSString stringWithFormat:@"%@ %@",_model.date,NSLocalizedString(_model.weekDay, nil)];
    CGSize dateSize = [self.dateLabel sizeThatFits:CGSizeMake(MAXFLOAT, 17)];
    [self.dateLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(dateSize.width);
    }];
    [self.dateLabel layoutIfNeeded];
    self.weatherImgView.image = [UIImage imageNamed:_model.weather];
    self.locationLabel.textColor = SDH_Color(fontRGBR, fontRGBG, fontRGBB, 1);
    self.locationLabel.text = _model.location;
    CGSize locationSize = [self.locationLabel sizeThatFits:CGSizeMake(MAXFLOAT, 16)];
    [self.locationLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(locationSize.width);
    }];
    [self.locationLabel layoutIfNeeded];
    self.contentLabel.font = [UIFont systemFontOfSize:fontSize];
    self.contentLabel.textColor = SDH_Color(fontRGBR, fontRGBG, fontRGBB, 1);
    self.contentLabel.text = _model.content;
    CGSize size = [self.contentLabel sizeThatFits:CGSizeMake(SDWIDTH - 30, MAXFLOAT)];
    self.contentHeight = size.height;
    [self.contentLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.contentHeight);
    }];
    [self.contentLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.textColor = [UIColor whiteColor];
        _dateLabel.font = [UIFont systemFontOfSize:17];
        _dateLabel.numberOfLines = 0;
        [_dateLabel sizeToFit];
    }
    return _dateLabel;
}
- (UIImageView *)weatherImgView{
    if (!_weatherImgView) {
        _weatherImgView = [[UIImageView alloc] init];
    }
    return _weatherImgView;
}
- (UIImageView *)locationHeadImgView{
    if (!_locationHeadImgView) {
        _locationHeadImgView = [[UIImageView alloc] init];
        _locationHeadImgView.image = [UIImage imageNamed:@"hospitallist_map"];
    }
    return _locationHeadImgView;
}
- (UILabel *)locationLabel{
    if (!_locationLabel) {
        _locationLabel = [[UILabel alloc] init];
        _locationLabel.textColor = [[UIColor alloc] init];
        _locationLabel.font = [UIFont systemFontOfSize:16];
    }
    return _locationLabel;
}
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor whiteColor];
        _contentLabel.font = [UIFont systemFontOfSize:15];
        [_contentLabel sizeToFit];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}
@end
