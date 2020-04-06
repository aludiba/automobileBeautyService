//
//  KAGasolineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KAGasolineTableViewCell.h"
#import "KAGasolineModel.h"
@interface KAGasolineTableViewCell()
@property(nonatomic, strong)UILabel *KAdateTitleLbl;
@property(nonatomic, strong)UILabel *KAdateContentLbl;
@property(nonatomic, strong)UILabel *KALicensePlateNumberTitleLbl;
@property(nonatomic, strong)UILabel *KALicensePlateNumberContentLbl;
@property(nonatomic, strong)UILabel *KAGasStationLocationTitleLbl;
@property(nonatomic, strong)UILabel *KAGasStationLocationContentLbl;
@property(nonatomic, strong)UILabel *KACostAmountTitleLbl;
@property(nonatomic, strong)UILabel *KACostAmountContentLbl;
@property(nonatomic, strong)UILabel *KAFuelTypeTitleLbl;
@property(nonatomic, strong)UILabel *KAFuelTypeContentLbl;
@property(nonatomic, strong)UIView *KALine;
@end
@implementation KAGasolineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.KAdateTitleLbl];
        [self.contentView addSubview:self.KAdateContentLbl];
        [self.contentView addSubview:self.KALicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.KALicensePlateNumberContentLbl];
        [self.contentView addSubview:self.KAGasStationLocationTitleLbl];
        [self.contentView addSubview:self.KAGasStationLocationContentLbl];
        [self.contentView addSubview:self.KACostAmountTitleLbl];
        [self.contentView addSubview:self.KACostAmountContentLbl];
        [self.contentView addSubview:self.KAFuelTypeTitleLbl];
        [self.contentView addSubview:self.KAFuelTypeContentLbl];
        [self.contentView addSubview:self.KALine];
        
        [self.KAdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(16);
        }];
        [self.KAdateContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KAdateTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KAdateTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KALicensePlateNumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KAdateTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(16);
        }];
        [self.KALicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KALicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KALicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KAGasStationLocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KALicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(16);
        }];
        [self.KAGasStationLocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KAGasStationLocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KAGasStationLocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KACostAmountTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KAGasStationLocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(16);
        }];
        [self.KACostAmountContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KACostAmountTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KACostAmountTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KAFuelTypeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KACostAmountTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(16);
        }];
        [self.KAFuelTypeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KAFuelTypeTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KAFuelTypeTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KALine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KAFuelTypeContentLbl.mas_bottom);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setKAGasolinemodel:(KAGasolineModel *)KAGasolinemodel{
    _KAGasolinemodel = KAGasolinemodel;
    self.KAdateContentLbl.text = [KAUIUtilities KAformattedTimeStringWithDate:_KAGasolinemodel.KADate format:@"yyyy年MM月dd日"];
    self.KALicensePlateNumberContentLbl.text = _KAGasolinemodel.KALicensePlateNumber;
    self.KAGasStationLocationContentLbl.text = _KAGasolinemodel.KAGasStationLocation;
    self.KACostAmountContentLbl.text = [NSString stringWithFormat:@"%ld",_KAGasolinemodel.KACostAmount];
    self.KAFuelTypeContentLbl.text = _KAGasolinemodel.KAFuelType;
}
#pragma mark - 属性懒加载
- (UILabel *)KAdateTitleLbl{
    if (!_KAdateTitleLbl) {
        _KAdateTitleLbl = [[UILabel alloc] init];
        _KAdateTitleLbl.textColor = [UIColor grayColor];
        _KAdateTitleLbl.font = [UIFont systemFontOfSize:15];
        _KAdateTitleLbl.text = @"创建日期";
    }
    return _KAdateTitleLbl;
}
- (UILabel *)KAdateContentLbl{
    if (!_KAdateContentLbl) {
        _KAdateContentLbl = [[UILabel alloc] init];
        _KAdateContentLbl.textColor = [UIColor blackColor];
        _KAdateContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KAdateContentLbl;
}
- (UILabel *)KALicensePlateNumberTitleLbl{
    if (!_KALicensePlateNumberTitleLbl) {
        _KALicensePlateNumberTitleLbl = [[UILabel alloc] init];
        _KALicensePlateNumberTitleLbl.textColor = [UIColor grayColor];
        _KALicensePlateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _KALicensePlateNumberTitleLbl.text = @"车牌号";
    }
    return _KALicensePlateNumberTitleLbl;
}
- (UILabel *)KALicensePlateNumberContentLbl{
    if (!_KALicensePlateNumberContentLbl) {
        _KALicensePlateNumberContentLbl = [[UILabel alloc] init];
        _KALicensePlateNumberContentLbl.textColor = [UIColor blackColor];
        _KALicensePlateNumberContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KALicensePlateNumberContentLbl;
}
- (UILabel *)KAGasStationLocationTitleLbl{
    if (!_KAGasStationLocationTitleLbl) {
        _KAGasStationLocationTitleLbl = [[UILabel alloc] init];
        _KAGasStationLocationTitleLbl.textColor = [UIColor grayColor];
        _KAGasStationLocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _KAGasStationLocationTitleLbl.text = @"加油站地点";
    }
    return _KAGasStationLocationTitleLbl;
}
- (UILabel *)KAGasStationLocationContentLbl{
    if (!_KAGasStationLocationContentLbl) {
        _KAGasStationLocationContentLbl = [[UILabel alloc] init];
        _KAGasStationLocationContentLbl.textColor = [UIColor blackColor];
        _KAGasStationLocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KAGasStationLocationContentLbl;
}
- (UILabel *)KACostAmountTitleLbl{
    if (!_KACostAmountTitleLbl) {
        _KACostAmountTitleLbl = [[UILabel alloc] init];
        _KACostAmountTitleLbl.textColor = [UIColor grayColor];
        _KACostAmountTitleLbl.font = [UIFont systemFontOfSize:15];
        _KACostAmountTitleLbl.text = @"花费金额（元）";
    }
    return _KACostAmountTitleLbl;
}
- (UILabel *)KACostAmountContentLbl{
    if (!_KACostAmountContentLbl) {
        _KACostAmountContentLbl = [[UILabel alloc] init];
        _KACostAmountContentLbl.textColor = [UIColor blackColor];
        _KACostAmountContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KACostAmountContentLbl;
}
- (UILabel *)KAFuelTypeTitleLbl{
    if (!_KAFuelTypeTitleLbl) {
        _KAFuelTypeTitleLbl = [[UILabel alloc] init];
        _KAFuelTypeTitleLbl.textColor = [UIColor grayColor];
        _KAFuelTypeTitleLbl.font = [UIFont systemFontOfSize:15];
        _KAFuelTypeTitleLbl.text = @"加油类型";
    }
    return _KACostAmountTitleLbl;
}
- (UILabel *)KAFuelTypeContentLbl{
    if (!_KAFuelTypeContentLbl) {
        _KAFuelTypeContentLbl = [[UILabel alloc] init];
        _KAFuelTypeContentLbl.textColor = [UIColor blackColor];
        _KAFuelTypeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KAFuelTypeContentLbl;
}
- (UIView *)KALine{
    if (!_KALine) {
        _KALine = [[UIView alloc] init];
        _KALine.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KALine;
}
@end
