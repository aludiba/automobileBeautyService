//
//  BGGasolineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGGasolineTableViewCell.h"
#import "BGGasolineModel.h"
@interface BGGasolineTableViewCell()
@property(nonatomic, strong)UILabel *BGdateTitleLbl;
@property(nonatomic, strong)UILabel *BGdateContentLbl;
@property(nonatomic, strong)UILabel *BGLicensePlateNumberTitleLbl;
@property(nonatomic, strong)UILabel *BGLicensePlateNumberContentLbl;
@property(nonatomic, strong)UILabel *BGGasStationLocationTitleLbl;
@property(nonatomic, strong)UILabel *BGGasStationLocationContentLbl;
@property(nonatomic, strong)UILabel *BGCostAmountTitleLbl;
@property(nonatomic, strong)UILabel *BGCostAmountContentLbl;
@property(nonatomic, strong)UILabel *BGFuelTypeTitleLbl;
@property(nonatomic, strong)UILabel *BGFuelTypeContentLbl;
@property(nonatomic, strong)UIView *BGLine;
@end
@implementation BGGasolineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BGdateTitleLbl];
        [self.contentView addSubview:self.BGdateContentLbl];
        [self.contentView addSubview:self.BGLicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.BGLicensePlateNumberContentLbl];
        [self.contentView addSubview:self.BGGasStationLocationTitleLbl];
        [self.contentView addSubview:self.BGGasStationLocationContentLbl];
        [self.contentView addSubview:self.BGCostAmountTitleLbl];
        [self.contentView addSubview:self.BGCostAmountContentLbl];
        [self.contentView addSubview:self.BGFuelTypeTitleLbl];
        [self.contentView addSubview:self.BGFuelTypeContentLbl];
        [self.contentView addSubview:self.BGLine];
        
        [self.BGdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.BGdateContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGdateTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGdateTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGLicensePlateNumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGdateTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.BGLicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGLicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGLicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGGasStationLocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGLicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.BGGasStationLocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGGasStationLocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGGasStationLocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGCostAmountTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGGasStationLocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.BGCostAmountContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGCostAmountTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGCostAmountTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGFuelTypeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGCostAmountTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.BGFuelTypeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGFuelTypeTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGFuelTypeTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGFuelTypeTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setBGGasolinemodel:(BGGasolineModel *)BGGasolinemodel{
    _BGGasolinemodel = BGGasolinemodel;
    self.BGdateContentLbl.text = [BGUIUtilities BGformattedTimeStringWithDate:_BGGasolinemodel.BGDate format:@"yyyy年MM月dd日"];
    self.BGLicensePlateNumberContentLbl.text = _BGGasolinemodel.BGLicensePlateNumber;
    self.BGGasStationLocationContentLbl.text = _BGGasolinemodel.BGGasStationLocation;
    self.BGCostAmountContentLbl.text = [NSString stringWithFormat:@"%ld",_BGGasolinemodel.BGCostAmount];
    self.BGFuelTypeContentLbl.text = _BGGasolinemodel.BGFuelType;
}
#pragma mark - 属性懒加载
- (UILabel *)BGdateTitleLbl{
    if (!_BGdateTitleLbl) {
        _BGdateTitleLbl = [[UILabel alloc] init];
        _BGdateTitleLbl.textColor = [UIColor grayColor];
        _BGdateTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGdateTitleLbl.text = @"创建日期";
    }
    return _BGdateTitleLbl;
}
- (UILabel *)BGdateContentLbl{
    if (!_BGdateContentLbl) {
        _BGdateContentLbl = [[UILabel alloc] init];
        _BGdateContentLbl.textColor = [UIColor blackColor];
        _BGdateContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGdateContentLbl;
}
- (UILabel *)BGLicensePlateNumberTitleLbl{
    if (!_BGLicensePlateNumberTitleLbl) {
        _BGLicensePlateNumberTitleLbl = [[UILabel alloc] init];
        _BGLicensePlateNumberTitleLbl.textColor = [UIColor grayColor];
        _BGLicensePlateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGLicensePlateNumberTitleLbl.text = @"车牌号";
    }
    return _BGLicensePlateNumberTitleLbl;
}
- (UILabel *)BGLicensePlateNumberContentLbl{
    if (!_BGLicensePlateNumberContentLbl) {
        _BGLicensePlateNumberContentLbl = [[UILabel alloc] init];
        _BGLicensePlateNumberContentLbl.textColor = [UIColor blackColor];
        _BGLicensePlateNumberContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGLicensePlateNumberContentLbl;
}
- (UILabel *)BGGasStationLocationTitleLbl{
    if (!_BGGasStationLocationTitleLbl) {
        _BGGasStationLocationTitleLbl = [[UILabel alloc] init];
        _BGGasStationLocationTitleLbl.textColor = [UIColor grayColor];
        _BGGasStationLocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGGasStationLocationTitleLbl.text = @"加油站地点";
    }
    return _BGGasStationLocationTitleLbl;
}
- (UILabel *)BGGasStationLocationContentLbl{
    if (!_BGGasStationLocationContentLbl) {
        _BGGasStationLocationContentLbl = [[UILabel alloc] init];
        _BGGasStationLocationContentLbl.textColor = [UIColor blackColor];
        _BGGasStationLocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGGasStationLocationContentLbl;
}
- (UILabel *)BGCostAmountTitleLbl{
    if (!_BGCostAmountTitleLbl) {
        _BGCostAmountTitleLbl = [[UILabel alloc] init];
        _BGCostAmountTitleLbl.textColor = [UIColor grayColor];
        _BGCostAmountTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGCostAmountTitleLbl.text = @"花费金额（元）";
    }
    return _BGCostAmountTitleLbl;
}
- (UILabel *)BGCostAmountContentLbl{
    if (!_BGCostAmountContentLbl) {
        _BGCostAmountContentLbl = [[UILabel alloc] init];
        _BGCostAmountContentLbl.textColor = [UIColor blackColor];
        _BGCostAmountContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGCostAmountContentLbl;
}
- (UILabel *)BGFuelTypeTitleLbl{
    if (!_BGFuelTypeTitleLbl) {
        _BGFuelTypeTitleLbl = [[UILabel alloc] init];
        _BGFuelTypeTitleLbl.textColor = [UIColor grayColor];
        _BGFuelTypeTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGFuelTypeTitleLbl.text = @"加油类型";
    }
    return _BGFuelTypeTitleLbl;
}
- (UILabel *)BGFuelTypeContentLbl{
    if (!_BGFuelTypeContentLbl) {
        _BGFuelTypeContentLbl = [[UILabel alloc] init];
        _BGFuelTypeContentLbl.textColor = [UIColor blackColor];
        _BGFuelTypeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGFuelTypeContentLbl;
}
- (UIView *)BGLine{
    if (!_BGLine) {
        _BGLine = [[UIView alloc] init];
        _BGLine.backgroundColor = BGH_Color(242, 242, 242, 1);
    }
    return _BGLine;
}
@end
