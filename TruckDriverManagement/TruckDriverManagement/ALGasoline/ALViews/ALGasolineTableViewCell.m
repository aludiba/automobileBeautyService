//
//  ALGasolineTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALGasolineTableViewCell.h"
#import "ALGasolineModel.h"
@interface ALGasolineTableViewCell()
@property(nonatomic, strong)UILabel *ALdateTitleLbl;
@property(nonatomic, strong)UILabel *ALdateContentLbl;
@property(nonatomic, strong)UILabel *ALLicensePlateNumberTitleLbl;
@property(nonatomic, strong)UILabel *ALLicensePlateNumberContentLbl;
@property(nonatomic, strong)UILabel *ALGasStationLocationTitleLbl;
@property(nonatomic, strong)UILabel *ALGasStationLocationContentLbl;
@property(nonatomic, strong)UILabel *ALCostAmountTitleLbl;
@property(nonatomic, strong)UILabel *ALCostAmountContentLbl;
@property(nonatomic, strong)UILabel *ALFuelTypeTitleLbl;
@property(nonatomic, strong)UILabel *ALFuelTypeContentLbl;
@property(nonatomic, strong)UIView *ALLine;
@end
@implementation ALGasolineTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.ALdateTitleLbl];
        [self.contentView addSubview:self.ALdateContentLbl];
        [self.contentView addSubview:self.ALLicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.ALLicensePlateNumberContentLbl];
        [self.contentView addSubview:self.ALGasStationLocationTitleLbl];
        [self.contentView addSubview:self.ALGasStationLocationContentLbl];
        [self.contentView addSubview:self.ALCostAmountTitleLbl];
        [self.contentView addSubview:self.ALCostAmountContentLbl];
        [self.contentView addSubview:self.ALFuelTypeTitleLbl];
        [self.contentView addSubview:self.ALFuelTypeContentLbl];
        [self.contentView addSubview:self.ALLine];
        
        [self.ALdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(110);
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
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.ALLicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALLicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALLicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALGasStationLocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALLicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.ALGasStationLocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALGasStationLocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALGasStationLocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALCostAmountTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALGasStationLocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.ALCostAmountContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALCostAmountTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALCostAmountTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALFuelTypeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALCostAmountTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(110);
            make.height.mas_equalTo(16);
        }];
        [self.ALFuelTypeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALFuelTypeTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.ALFuelTypeTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.ALLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.ALFuelTypeTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setALGasolinemodel:(ALGasolineModel *)ALGasolinemodel{
    _ALGasolinemodel = ALGasolinemodel;
    self.ALdateContentLbl.text = [ALUIUtilities ALformattedTimeStringWithDate:_ALGasolinemodel.ALDate format:@"yyyy年MM月dd日"];
    self.ALLicensePlateNumberContentLbl.text = _ALGasolinemodel.ALLicensePlateNumber;
    self.ALGasStationLocationContentLbl.text = _ALGasolinemodel.ALGasStationLocation;
    self.ALCostAmountContentLbl.text = [NSString stringWithFormat:@"%ld",_ALGasolinemodel.ALCostAmount];
    self.ALFuelTypeContentLbl.text = _ALGasolinemodel.ALFuelType;
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
- (UILabel *)ALGasStationLocationTitleLbl{
    if (!_ALGasStationLocationTitleLbl) {
        _ALGasStationLocationTitleLbl = [[UILabel alloc] init];
        _ALGasStationLocationTitleLbl.textColor = [UIColor blueColor];
        _ALGasStationLocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALGasStationLocationTitleLbl.text = @"加油站地点";
    }
    return _ALGasStationLocationTitleLbl;
}
- (UILabel *)ALGasStationLocationContentLbl{
    if (!_ALGasStationLocationContentLbl) {
        _ALGasStationLocationContentLbl = [[UILabel alloc] init];
        _ALGasStationLocationContentLbl.textColor = [UIColor blackColor];
        _ALGasStationLocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALGasStationLocationContentLbl;
}
- (UILabel *)ALCostAmountTitleLbl{
    if (!_ALCostAmountTitleLbl) {
        _ALCostAmountTitleLbl = [[UILabel alloc] init];
        _ALCostAmountTitleLbl.textColor = [UIColor blueColor];
        _ALCostAmountTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALCostAmountTitleLbl.text = @"花费金额（元）";
    }
    return _ALCostAmountTitleLbl;
}
- (UILabel *)ALCostAmountContentLbl{
    if (!_ALCostAmountContentLbl) {
        _ALCostAmountContentLbl = [[UILabel alloc] init];
        _ALCostAmountContentLbl.textColor = [UIColor blackColor];
        _ALCostAmountContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALCostAmountContentLbl;
}
- (UILabel *)ALFuelTypeTitleLbl{
    if (!_ALFuelTypeTitleLbl) {
        _ALFuelTypeTitleLbl = [[UILabel alloc] init];
        _ALFuelTypeTitleLbl.textColor = [UIColor blueColor];
        _ALFuelTypeTitleLbl.font = [UIFont systemFontOfSize:15];
        _ALFuelTypeTitleLbl.text = @"加油类型";
    }
    return _ALFuelTypeTitleLbl;
}
- (UILabel *)ALFuelTypeContentLbl{
    if (!_ALFuelTypeContentLbl) {
        _ALFuelTypeContentLbl = [[UILabel alloc] init];
        _ALFuelTypeContentLbl.textColor = [UIColor blackColor];
        _ALFuelTypeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _ALFuelTypeContentLbl;
}
- (UIView *)ALLine{
    if (!_ALLine) {
        _ALLine = [[UIView alloc] init];
        _ALLine.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALLine;
}
@end
