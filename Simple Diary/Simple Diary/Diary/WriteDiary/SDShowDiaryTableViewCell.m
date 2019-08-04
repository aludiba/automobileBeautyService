//
//  SDShowDiaryTableViewCell.m
//  Simple Diary
//
//  Created by 褚红彪 on 2019/8/3.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDShowDiaryTableViewCell.h"
#import "SDWriteDiaryModel.h"

@interface SDShowDiaryTableViewCell()
@property(nonatomic, strong)UILabel *headLabel;
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)UILabel *dateLabel;
@property(nonatomic, strong)UILabel *contentLabel;
@property(nonatomic, strong)UILabel *locationLabel;
@property(nonatomic, strong)UIImageView *imgView;
@property(nonatomic, assign)CGFloat contentHeight;
@end
@implementation SDShowDiaryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.headLabel];
        [self.contentView addSubview:self.backView];
        [self.backView addSubview:self.dateLabel];
        [self.backView addSubview:self.contentLabel];
        [self.backView addSubview:self.locationLabel];
        [self.backView addSubview:self.imgView];
        
        [self.headLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(44);
            make.height.mas_equalTo(44);
        }];
        self.headLabel.layer.cornerRadius = 22;
        self.headLabel.layer.masksToBounds = YES;
        
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.headLabel.mas_trailing).offset(5);
            make.top.equalTo(self.contentView).offset(10);
            make.trailing.equalTo(self.contentView).offset(-5);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        self.backView.layer.cornerRadius = 4.0f;
        self.backView.layer.masksToBounds = YES;
        [self.imgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.backView);
            make.trailing.equalTo(self.backView).offset(-5);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(60);
        }];
        self.imgView.layer.cornerRadius = 4;
        self.imgView.layer.masksToBounds = YES;
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.backView).offset(10);
            make.leading.equalTo(self.backView).offset(10);
            make.trailing.equalTo(self.imgView.mas_leading).offset(-5);
            make.height.mas_equalTo(12);
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.dateLabel.mas_bottom).offset(10);
            make.leading.equalTo(self.backView).offset(10);
            make.trailing.equalTo(self.imgView.mas_leading).offset(-5);
            make.height.mas_equalTo(self.contentHeight);
        make.bottom.equalTo(self.locationLabel.mas_top).offset(-10);
        }];
        [self.locationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.backView).offset(10);
            make.trailing.equalTo(self.imageView.mas_leading).offset(-5);
            make.height.mas_equalTo(11);
            make.bottom.equalTo(self.backView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(SDWriteDiaryModel *)model{
    _model = model;
    NSArray *dateArray = [_model.date componentsSeparatedByString:@" "];
    NSDictionary *themeRGBdic = _model.themeRGB;
    NSInteger themeR = [[themeRGBdic objectForKey:@"R"] integerValue];
    NSInteger themeG = [[themeRGBdic objectForKey:@"G"] integerValue];
    NSInteger themeB = [[themeRGBdic objectForKey:@"B"] integerValue];
    self.headLabel.text = [dateArray objectAtIndex:1];
    self.headLabel.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    self.backView.backgroundColor = SDH_Color(themeR, themeG, themeB, 1);
    self.dateLabel.text = [NSString stringWithFormat:@"%@ %@",dateArray[0],_model.weekDay];
    self.contentLabel.text = _model.content;
    self.contentHeight = [self.contentLabel sizeThatFits:CGSizeMake(SDWIDTH - 144, MAXFLOAT)].height;
    [self.contentLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(self.contentHeight);
    }];
    [self.contentLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.locationLabel.text = _model.location;
}
#pragma mark - 属性懒加载
- (UILabel *)headLabel{
    if (!_headLabel) {
        _headLabel = [[UILabel alloc] init];
        _headLabel.textColor = [UIColor whiteColor];
        _headLabel.font = [UIFont systemFontOfSize:15];
        _headLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _headLabel;
}
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
    }
    return _backView;
}
- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.textColor = [UIColor whiteColor];
        _dateLabel.font = [UIFont systemFontOfSize:12];
    }
    return _dateLabel;
}
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor whiteColor];
        _contentLabel.font = [UIFont systemFontOfSize:14];
        [_contentLabel sizeToFit];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}
- (UILabel *)locationLabel{
    if (!_locationLabel) {
        _locationLabel = [[UILabel alloc] init];
        _locationLabel.textColor = [UIColor whiteColor];
        _locationLabel.font = [UIFont systemFontOfSize:11];
    }
    return _locationLabel;
}
- (UIImageView *)imgView{
    if (!_imgView) {
        _imgView = [[UIImageView alloc] init];
    }
    return _imgView;
}
@end
