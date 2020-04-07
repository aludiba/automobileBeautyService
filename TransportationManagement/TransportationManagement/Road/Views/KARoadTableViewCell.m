//
//  KARoadTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KARoadTableViewCell.h"
#import "KARoadModel.h"

@interface KARoadTableViewCell()
@property(nonatomic, strong)UILabel *KAdateTitleLbl;//日期标题
@property(nonatomic, strong)UILabel *KAdateContentLbl;//日期内容
@property(nonatomic, strong)UILabel *KALicensePlateNumberTitleLbl;//车牌号标题
@property(nonatomic, strong)UILabel *KALicensePlateNumberContentLbl;//车牌号内容
@property(nonatomic, strong)UILabel *KADriverNameTitleLbl;//司机名称标题
@property(nonatomic, strong)UILabel *KADriverNameContentLbl;//司机名称内容
@property(nonatomic, strong)UILabel *KASituationTitleLbl;//情况标题
@property(nonatomic, strong)UILabel *KASituationContentLbl;//情况内容
@property(nonatomic, strong)UILabel *KAPluggingLengthTitleLbl;//已堵时长标题
@property(nonatomic, strong)UILabel *KAPluggingLengthContentLbl;//已堵时长内容
@property(nonatomic, strong)UILabel *KALocationTitleLbl;//位置标题
@property(nonatomic, strong)UILabel *KALocationContentLbl;//位置内容
@property(nonatomic, strong)UIView *KALine;
@end
@implementation KARoadTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.KAdateTitleLbl];
        [self.contentView addSubview:self.KAdateContentLbl];
        [self.contentView addSubview:self.KALicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.KALicensePlateNumberContentLbl];
        [self.contentView addSubview:self.KADriverNameTitleLbl];
        [self.contentView addSubview:self.KADriverNameContentLbl];
        [self.contentView addSubview:self.KASituationTitleLbl];
        [self.contentView addSubview:self.KASituationContentLbl];
        [self.contentView addSubview:self.KAPluggingLengthTitleLbl];
        [self.contentView addSubview:self.KAPluggingLengthContentLbl];
        [self.contentView addSubview:self.KALocationTitleLbl];
        [self.contentView addSubview:self.KALocationContentLbl];
        [self.contentView addSubview:self.KALine];
        
        [self.KAdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(130);
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
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.KALicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KALicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KALicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KADriverNameTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KALicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.KADriverNameContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KADriverNameTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KADriverNameTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KASituationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KADriverNameTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.KASituationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KASituationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KASituationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KAPluggingLengthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KASituationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.KAPluggingLengthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KAPluggingLengthTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KAPluggingLengthTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KALocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KAPluggingLengthTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.KALocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KALocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.KALocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.KALine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.KALocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - actions
- (void)setKARoadmodel:(KARoadModel *)KARoadmodel{
    _KARoadmodel = KARoadmodel;
    self.KAdateContentLbl.text = [KAUIUtilities KAformattedTimeStringWithDate:_KARoadmodel.KADate format:@"yyyy年MM月dd日"];
    self.KALicensePlateNumberContentLbl.text = _KARoadmodel.KALicensePlateNumber;
    self.KADriverNameContentLbl.text = _KARoadmodel.KADriverName;
    self.KASituationContentLbl.text = _KARoadmodel.KASituation;
    self.KAPluggingLengthContentLbl.text = [NSString stringWithFormat:@"%ld",_KARoadmodel.KAPluggingLength];
    self.KALocationContentLbl.text = _KARoadmodel.KALocation;
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
- (UILabel *)KADriverNameTitleLbl{
    if (!_KADriverNameTitleLbl) {
        _KADriverNameTitleLbl = [[UILabel alloc] init];
        _KADriverNameTitleLbl.textColor = [UIColor grayColor];
        _KADriverNameTitleLbl.font = [UIFont systemFontOfSize:15];
        _KADriverNameTitleLbl.text = @"司机名称";
    }
    return _KADriverNameTitleLbl;
}
- (UILabel *)KADriverNameContentLbl{
    if (!_KADriverNameContentLbl) {
        _KADriverNameContentLbl = [[UILabel alloc] init];
        _KADriverNameContentLbl.textColor = [UIColor blackColor];
        _KADriverNameContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KADriverNameContentLbl;
}
- (UILabel *)KASituationTitleLbl{
    if (!_KASituationTitleLbl) {
        _KASituationTitleLbl = [[UILabel alloc] init];
        _KASituationTitleLbl.textColor = [UIColor grayColor];
        _KASituationTitleLbl.font = [UIFont systemFontOfSize:15];
        _KASituationTitleLbl.text = @"情况";
    }
    return _KASituationTitleLbl;
}
- (UILabel *)KASituationContentLbl{
    if (!_KASituationContentLbl) {
        _KASituationContentLbl = [[UILabel alloc] init];
        _KASituationContentLbl.textColor = [UIColor blackColor];
        _KASituationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KASituationContentLbl;
}
- (UILabel *)KAPluggingLengthTitleLbl{
    if (!_KAPluggingLengthTitleLbl) {
        _KAPluggingLengthTitleLbl = [[UILabel alloc] init];
        _KAPluggingLengthTitleLbl.textColor = [UIColor grayColor];
        _KAPluggingLengthTitleLbl.font = [UIFont systemFontOfSize:15];
        _KAPluggingLengthTitleLbl.text = @"已堵时长(小时)";
    }
    return _KAPluggingLengthTitleLbl;
}
- (UILabel *)KAPluggingLengthContentLbl{
    if (!_KAPluggingLengthContentLbl) {
        _KAPluggingLengthContentLbl = [[UILabel alloc] init];
        _KAPluggingLengthContentLbl.textColor = [UIColor blackColor];
        _KAPluggingLengthContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KAPluggingLengthContentLbl;
}
- (UILabel *)KALocationTitleLbl{
    if (!_KALocationTitleLbl) {
        _KALocationTitleLbl = [[UILabel alloc] init];
        _KALocationTitleLbl.textColor = [UIColor grayColor];
        _KALocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _KALocationTitleLbl.text = @"位置";
    }
    return _KALocationTitleLbl;
}
- (UILabel *)KALocationContentLbl{
    if (!_KALocationContentLbl) {
        _KALocationContentLbl = [[UILabel alloc] init];
        _KALocationContentLbl.textColor = [UIColor blackColor];
        _KALocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _KALocationContentLbl;
}
- (UIView *)KALine{
    if (!_KALine) {
        _KALine = [[UIView alloc] init];
        _KALine.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KALine;
}
@end
