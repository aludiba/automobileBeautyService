//
//  BMHistoryTableViewCell.m
//  HeyGameScoreboard
//
//  Created by user on 2020/7/11.
//  Copyright © 2020 Hey. All rights reserved.
//

#import "BMHistoryTableViewCell.h"
#import "BMScoringModel.h"

@interface BMHistoryTableViewCell()
@property(nonatomic, strong)UILabel *BMaTeamNameLbl;
@property(nonatomic, strong)UILabel *BMaTeamScoreLbl;
@property(nonatomic, strong)UILabel *BMVSLbl;
@property(nonatomic, strong)UILabel *BMbTeamNameLbl;
@property(nonatomic, strong)UILabel *BMbTeamScoreLbl;
@property(nonatomic, strong)UILabel *BMendTimeLbl;
@property(nonatomic, strong)UIView *BMline;

@end
@implementation BMHistoryTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BMaTeamNameLbl];
        [self.contentView addSubview:self.BMaTeamScoreLbl];
        [self.contentView addSubview:self.BMVSLbl];
        [self.contentView addSubview:self.BMbTeamNameLbl];
        [self.contentView addSubview:self.BMbTeamScoreLbl];
        [self.contentView addSubview:self.BMendTimeLbl];
        [self.contentView addSubview:self.BMline];
        
        [self.BMaTeamNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(BMWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(20);
        }];
        [self.BMaTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BMaTeamNameLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(BMWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(22);
        }];
        [self.BMVSLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(_BMaTeamScoreLbl);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(30);
        }];
        [self.BMbTeamNameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(20);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.width.mas_equalTo(BMWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(20);
        }];
        [self.BMbTeamScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BMbTeamNameLbl.mas_bottom).offset(20);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.width.mas_equalTo(BMWIDTH * 0.5 - 16 - 5);
            make.height.mas_equalTo(22);
        }];
        [self.BMendTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BMbTeamScoreLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.BMline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.BMendTimeLbl.mas_bottom).offset(20);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - actions
- (void)setBMscoringmodel:(BMScoringModel *)BMscoringmodel{
    _BMscoringmodel = BMscoringmodel;
    self.BMaTeamNameLbl.text = _BMscoringmodel.BMaTeamName;
    self.BMaTeamScoreLbl.text = _BMscoringmodel.BMaTeamScore;
    self.BMbTeamNameLbl.text = _BMscoringmodel.BMbTeamName;
    self.BMbTeamScoreLbl.text = _BMscoringmodel.BMbTeamScore;
    self.BMendTimeLbl.text = _BMscoringmodel.BMendDateTime;
}
#pragma mark - 属性懒加载
- (UILabel *)BMaTeamNameLbl{
    if (!_BMaTeamNameLbl) {
        _BMaTeamNameLbl = [[UILabel alloc] init];
        _BMaTeamNameLbl.textColor = [UIColor blackColor];
        _BMaTeamNameLbl.font = [UIFont systemFontOfSize:16];
        _BMaTeamNameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMaTeamNameLbl;
}
- (UILabel *)BMaTeamScoreLbl{
    if (!_BMaTeamScoreLbl) {
        _BMaTeamScoreLbl = [[UILabel alloc] init];
        _BMaTeamScoreLbl.textColor = [UIColor blackColor];
        _BMaTeamScoreLbl.font = [UIFont boldSystemFontOfSize:20];
        _BMaTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMaTeamScoreLbl;
}
- (UILabel *)BMVSLbl{
    if (!_BMVSLbl) {
        _BMVSLbl = [[UILabel alloc] init];
        _BMVSLbl.textColor = [UIColor blackColor];
        _BMVSLbl.font = [UIFont systemFontOfSize:22];
        _BMVSLbl.textAlignment = NSTextAlignmentCenter;
        _BMVSLbl.text = @"VS";
    }
    return _BMVSLbl;
}
- (UILabel *)BMbTeamNameLbl{
    if (!_BMbTeamNameLbl) {
        _BMbTeamNameLbl = [[UILabel alloc] init];
        _BMbTeamNameLbl.textColor = [UIColor blackColor];
        _BMbTeamNameLbl.font = [UIFont systemFontOfSize:16];
        _BMbTeamNameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMbTeamNameLbl;
}
- (UILabel *)BMbTeamScoreLbl{
    if (!_BMbTeamScoreLbl) {
        _BMbTeamScoreLbl = [[UILabel alloc] init];
        _BMbTeamScoreLbl.textColor = [UIColor blackColor];
        _BMbTeamScoreLbl.font = [UIFont boldSystemFontOfSize:20];
        _BMbTeamScoreLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMbTeamScoreLbl;
}
- (UILabel *)BMendTimeLbl{
    if (!_BMendTimeLbl) {
        _BMendTimeLbl = [[UILabel alloc] init];
        _BMendTimeLbl.textColor = [UIColor grayColor];
        _BMendTimeLbl.font = [UIFont systemFontOfSize:16];
        _BMendTimeLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _BMendTimeLbl;
}
- (UIView *)BMline{
    if (!_BMline) {
        _BMline = [[UIView alloc] init];
        _BMline.backgroundColor = BMH_Color(242, 242, 242, 1);
    }
    return _BMline;
}
@end
