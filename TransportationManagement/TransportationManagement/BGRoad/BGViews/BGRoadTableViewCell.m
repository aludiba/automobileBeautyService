//
//  BGRoadTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/7.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGRoadTableViewCell.h"
#import "BGRoadModel.h"

@interface BGRoadTableViewCell()
@property(nonatomic, strong)UILabel *BGdateTitleLbl;//日期标题
@property(nonatomic, strong)UILabel *BGdateContentLbl;//日期内容
@property(nonatomic, strong)UILabel *BGLicensePlateNumberTitleLbl;//车牌号标题
@property(nonatomic, strong)UILabel *BGLicensePlateNumberContentLbl;//车牌号内容
@property(nonatomic, strong)UILabel *BGDriverNameTitleLbl;//司机名称标题
@property(nonatomic, strong)UILabel *BGDriverNameContentLbl;//司机名称内容
@property(nonatomic, strong)UILabel *BGSituationTitleLbl;//情况标题
@property(nonatomic, strong)UILabel *BGSituationContentLbl;//情况内容
@property(nonatomic, strong)UILabel *BGPluggingLengthTitleLbl;//已堵时长标题
@property(nonatomic, strong)UILabel *BGPluggingLengthContentLbl;//已堵时长内容
@property(nonatomic, strong)UILabel *BGLocationTitleLbl;//位置标题
@property(nonatomic, strong)UILabel *BGLocationContentLbl;//位置内容
@property(nonatomic, strong)UIView *BGLine;
@end
@implementation BGRoadTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.BGdateTitleLbl];
        [self.contentView addSubview:self.BGdateContentLbl];
        [self.contentView addSubview:self.BGLicensePlateNumberTitleLbl];
        [self.contentView addSubview:self.BGLicensePlateNumberContentLbl];
        [self.contentView addSubview:self.BGDriverNameTitleLbl];
        [self.contentView addSubview:self.BGDriverNameContentLbl];
        [self.contentView addSubview:self.BGSituationTitleLbl];
        [self.contentView addSubview:self.BGSituationContentLbl];
        [self.contentView addSubview:self.BGPluggingLengthTitleLbl];
        [self.contentView addSubview:self.BGPluggingLengthContentLbl];
        [self.contentView addSubview:self.BGLocationTitleLbl];
        [self.contentView addSubview:self.BGLocationContentLbl];
        [self.contentView addSubview:self.BGLine];
        
        [self.BGdateTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(10);
            make.width.mas_equalTo(130);
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
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.BGLicensePlateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGLicensePlateNumberTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGLicensePlateNumberTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGDriverNameTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGLicensePlateNumberTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.BGDriverNameContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGDriverNameTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGDriverNameTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGSituationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGDriverNameTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.BGSituationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGSituationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGSituationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGPluggingLengthTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGSituationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.BGPluggingLengthContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGPluggingLengthTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGPluggingLengthTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGLocationTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGPluggingLengthTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(130);
            make.height.mas_equalTo(16);
        }];
        [self.BGLocationContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGLocationTitleLbl.mas_trailing).offset(2);
            make.centerY.equalTo(self.BGLocationTitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BGLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BGLocationTitleLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(12);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - actions
- (void)setBGRoadmodel:(BGRoadModel *)BGRoadmodel{
    _BGRoadmodel = BGRoadmodel;
    self.BGdateContentLbl.text = [BGUIUtilities BGformattedTimeStringWithDate:_BGRoadmodel.BGDate format:@"yyyy-MM-dd"];
    self.BGLicensePlateNumberContentLbl.text = _BGRoadmodel.BGLicensePlateNumber;
    self.BGDriverNameContentLbl.text = _BGRoadmodel.BGDriverName;
    self.BGSituationContentLbl.text = _BGRoadmodel.BGSituation;
    self.BGPluggingLengthContentLbl.text = [NSString stringWithFormat:@"%ld",_BGRoadmodel.BGPluggingLength];
    self.BGLocationContentLbl.text = _BGRoadmodel.BGLocation;
}
#pragma mark - 属性懒加载
- (UILabel *)BGdateTitleLbl{
    if (!_BGdateTitleLbl) {
        _BGdateTitleLbl = [[UILabel alloc] init];
        _BGdateTitleLbl.textColor = [UIColor blueColor];
        _BGdateTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGdateTitleLbl.text = NSLocalizedString(@"创建日期", nil);
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
        _BGLicensePlateNumberTitleLbl.textColor = [UIColor blueColor];
        _BGLicensePlateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGLicensePlateNumberTitleLbl.text = NSLocalizedString(@"车牌号", nil);
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
- (UILabel *)BGDriverNameTitleLbl{
    if (!_BGDriverNameTitleLbl) {
        _BGDriverNameTitleLbl = [[UILabel alloc] init];
        _BGDriverNameTitleLbl.textColor = [UIColor blueColor];
        _BGDriverNameTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGDriverNameTitleLbl.text = NSLocalizedString(@"司机名称", nil);
    }
    return _BGDriverNameTitleLbl;
}
- (UILabel *)BGDriverNameContentLbl{
    if (!_BGDriverNameContentLbl) {
        _BGDriverNameContentLbl = [[UILabel alloc] init];
        _BGDriverNameContentLbl.textColor = [UIColor blackColor];
        _BGDriverNameContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGDriverNameContentLbl;
}
- (UILabel *)BGSituationTitleLbl{
    if (!_BGSituationTitleLbl) {
        _BGSituationTitleLbl = [[UILabel alloc] init];
        _BGSituationTitleLbl.textColor = [UIColor blueColor];
        _BGSituationTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGSituationTitleLbl.text = NSLocalizedString(@"情况", nil);
    }
    return _BGSituationTitleLbl;
}
- (UILabel *)BGSituationContentLbl{
    if (!_BGSituationContentLbl) {
        _BGSituationContentLbl = [[UILabel alloc] init];
        _BGSituationContentLbl.textColor = [UIColor blackColor];
        _BGSituationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGSituationContentLbl;
}
- (UILabel *)BGPluggingLengthTitleLbl{
    if (!_BGPluggingLengthTitleLbl) {
        _BGPluggingLengthTitleLbl = [[UILabel alloc] init];
        _BGPluggingLengthTitleLbl.textColor = [UIColor blueColor];
        _BGPluggingLengthTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGPluggingLengthTitleLbl.text = NSLocalizedString(@"已堵时长(小时)", nil);
    }
    return _BGPluggingLengthTitleLbl;
}
- (UILabel *)BGPluggingLengthContentLbl{
    if (!_BGPluggingLengthContentLbl) {
        _BGPluggingLengthContentLbl = [[UILabel alloc] init];
        _BGPluggingLengthContentLbl.textColor = [UIColor blackColor];
        _BGPluggingLengthContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGPluggingLengthContentLbl;
}
- (UILabel *)BGLocationTitleLbl{
    if (!_BGLocationTitleLbl) {
        _BGLocationTitleLbl = [[UILabel alloc] init];
        _BGLocationTitleLbl.textColor = [UIColor blueColor];
        _BGLocationTitleLbl.font = [UIFont systemFontOfSize:15];
        _BGLocationTitleLbl.text = NSLocalizedString(@"位置", nil);
    }
    return _BGLocationTitleLbl;
}
- (UILabel *)BGLocationContentLbl{
    if (!_BGLocationContentLbl) {
        _BGLocationContentLbl = [[UILabel alloc] init];
        _BGLocationContentLbl.textColor = [UIColor blackColor];
        _BGLocationContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _BGLocationContentLbl;
}
- (UIView *)BGLine{
    if (!_BGLine) {
        _BGLine = [[UIView alloc] init];
        _BGLine.backgroundColor = [UIColor whiteColor];
    }
    return _BGLine;
}
@end
