//
//  ALRoadTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALRoadTableViewCell.h"
#import "ALRoadModel.h"

@interface ALRoadTableViewCell()
@property(nonatomic, strong)UILabel *ALdateTitleLbl;//日期标题
@property(nonatomic, strong)UILabel *ALdateContentLbl;//日期内容
@property(nonatomic, strong)UILabel *ALLicensePlateNumberTitleLbl;//车牌号标题
@property(nonatomic, strong)UILabel *ALLicensePlateNumberContentLbl;//车牌号内容
@property(nonatomic, strong)UILabel *ALDriverNameTitleLbl;//司机名称标题
@property(nonatomic, strong)UILabel *ALDriverNameContentLbl;//司机名称内容
@property(nonatomic, strong)UILabel *ALSituationTitleLbl;//情况标题
@property(nonatomic, strong)UILabel *ALSituationContentLbl;//情况内容
@property(nonatomic, strong)UILabel *ALPluggingLengthTitleLbl;//已堵时长标题
@property(nonatomic, strong)UILabel *ALPluggingLengthContentLbl;//已堵时长内容
@property(nonatomic, strong)UILabel *ALLocationTitleLbl;//位置标题
@property(nonatomic, strong)UILabel *ALLocationContentLbl;//位置内容
@property(nonatomic, strong)UIView *ALLine;
@end
@implementation ALRoadTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.ALdateTitleLbl];
        [self.contentView addSubview:self.ALdateContentLbl];
        [self.contentView addSubview:self.ALLicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.ALLicensePlateNumberContentLbl];
        [self.contentView addSubview:self.ALDriverNameTitleLbl];
        [self.contentView addSubview:self.ALDriverNameContentLbl];
        [self.contentView addSubview:self.ALSituationTitleLbl];
        [self.contentView addSubview:self.ALSituationContentLbl];
        [self.contentView addSubview:self.ALPluggingLengthTitleLbl];
        [self.contentView addSubview:self.ALPluggingLengthContentLbl];
        [self.contentView addSubview:self.ALLocationTitleLbl];
        [self.contentView addSubview:self.ALLocationContentLbl];
        [self.contentView addSubview:self.ALLine];
        
        [self.ALdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALdateContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALdateTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALdateTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALLicensePlateNumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALdateTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALLicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALLicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALLicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALDriverNameTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALLicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALDriverNameContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALDriverNameTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALDriverNameTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALSituationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALDriverNameTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALSituationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALSituationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALSituationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALPluggingLengthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALSituationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALPluggingLengthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALPluggingLengthTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALPluggingLengthTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALLocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALPluggingLengthTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.ALLocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALLocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALLocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALLocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - actions
- (void)setALRoadmodel:(ALRoadModel *)ALRoadmodel{
    _ALRoadmodel = ALRoadmodel;
    self.ALdateContentLbl.text = [ALUIUtilities ALformattedTimeStringWithDate:_ALRoadmodel.ALDate format:@"yyyy年MM月dd日"];
    self.ALLicensePlateNumberContentLbl.text = _ALRoadmodel.ALLicensePlateNumber;
    self.ALDriverNameContentLbl.text = _ALRoadmodel.ALDriverName;
    self.ALSituationContentLbl.text = _ALRoadmodel.ALSituation;
    self.ALPluggingLengthContentLbl.text = [NSString stringWithFormat:@"%ld",_ALRoadmodel.ALPluggingLength];
    self.ALLocationContentLbl.text = _ALRoadmodel.ALLocation;
}
#pragma mark - 属性懒加载
- (UILabel *)ALdateTitleLbl{
    if (!_ALdateTitleLbl) {
        _ALdateTitleLbl = [[UILabel alloc] init];
        _ALdateTitleLbl.textColor = [UIColor blueColor];
        _ALdateTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALdateTitleLbl.text = @"创建日期";
    }
    return _ALdateTitleLbl;
}
- (UILabel *)ALdateContentLbl{
    if (!_ALdateContentLbl) {
        _ALdateContentLbl = [[UILabel alloc] init];
        _ALdateContentLbl.textColor = [UIColor blackColor];
        _ALdateContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALdateContentLbl;
}
- (UILabel *)ALLicensePlateNumberTitleLbl{
    if (!_ALLicensePlateNumberTitleLbl) {
        _ALLicensePlateNumberTitleLbl = [[UILabel alloc] init];
        _ALLicensePlateNumberTitleLbl.textColor = [UIColor blueColor];
        _ALLicensePlateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALLicensePlateNumberTitleLbl.text = @"车牌号";
    }
    return _ALLicensePlateNumberTitleLbl;
}
- (UILabel *)ALLicensePlateNumberContentLbl{
    if (!_ALLicensePlateNumberContentLbl) {
        _ALLicensePlateNumberContentLbl = [[UILabel alloc] init];
        _ALLicensePlateNumberContentLbl.textColor = [UIColor blackColor];
        _ALLicensePlateNumberContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALLicensePlateNumberContentLbl;
}
- (UILabel *)ALDriverNameTitleLbl{
    if (!_ALDriverNameTitleLbl) {
        _ALDriverNameTitleLbl = [[UILabel alloc] init];
        _ALDriverNameTitleLbl.textColor = [UIColor blueColor];
        _ALDriverNameTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALDriverNameTitleLbl.text = @"司机名称";
    }
    return _ALDriverNameTitleLbl;
}
- (UILabel *)ALDriverNameContentLbl{
    if (!_ALDriverNameContentLbl) {
        _ALDriverNameContentLbl = [[UILabel alloc] init];
        _ALDriverNameContentLbl.textColor = [UIColor blackColor];
        _ALDriverNameContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALDriverNameContentLbl;
}
- (UILabel *)ALSituationTitleLbl{
    if (!_ALSituationTitleLbl) {
        _ALSituationTitleLbl = [[UILabel alloc] init];
        _ALSituationTitleLbl.textColor = [UIColor blueColor];
        _ALSituationTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALSituationTitleLbl.text = @"情况";
    }
    return _ALSituationTitleLbl;
}
- (UILabel *)ALSituationContentLbl{
    if (!_ALSituationContentLbl) {
        _ALSituationContentLbl = [[UILabel alloc] init];
        _ALSituationContentLbl.textColor = [UIColor blackColor];
        _ALSituationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALSituationContentLbl;
}
- (UILabel *)ALPluggingLengthTitleLbl{
    if (!_ALPluggingLengthTitleLbl) {
        _ALPluggingLengthTitleLbl = [[UILabel alloc] init];
        _ALPluggingLengthTitleLbl.textColor = [UIColor blueColor];
        _ALPluggingLengthTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALPluggingLengthTitleLbl.text = @"已堵时长(小时)";
    }
    return _ALPluggingLengthTitleLbl;
}
- (UILabel *)ALPluggingLengthContentLbl{
    if (!_ALPluggingLengthContentLbl) {
        _ALPluggingLengthContentLbl = [[UILabel alloc] init];
        _ALPluggingLengthContentLbl.textColor = [UIColor blackColor];
        _ALPluggingLengthContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALPluggingLengthContentLbl;
}
- (UILabel *)ALLocationTitleLbl{
    if (!_ALLocationTitleLbl) {
        _ALLocationTitleLbl = [[UILabel alloc] init];
        _ALLocationTitleLbl.textColor = [UIColor blueColor];
        _ALLocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALLocationTitleLbl.text = @"位置";
    }
    return _ALLocationTitleLbl;
}
- (UILabel *)ALLocationContentLbl{
    if (!_ALLocationContentLbl) {
        _ALLocationContentLbl = [[UILabel alloc] init];
        _ALLocationContentLbl.textColor = [UIColor blackColor];
        _ALLocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALLocationContentLbl;
}
- (UIView *)ALLine{
    if (!_ALLine) {
        _ALLine = [[UIView alloc] init];
        _ALLine.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALLine;
}
@end
