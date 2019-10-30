//
//  PVRecordTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVRecordTableViewCell.h"
#import "PVScorecardModel.h"
@interface PVRecordTableViewCell()
@property(nonatomic, strong)UILabel *PVTitleLbl;//标题
@property(nonatomic, strong)UIView *PVBackView;//背景板
@property(nonatomic, strong)UILabel *PVTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *PVScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *PVTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *PVScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *PVTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *PVEndTimeLbl;//结束时间
@end
@implementation PVRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVTitleLbl];
        [self.contentView addSubview:self.PVBackView];
        [self.PVBackView addSubview:self.PVTeamALbl];
        [self.PVBackView addSubview:self.PVScoreALbl];
        [self.PVBackView addSubview:self.PVTeamBLbl];
        [self.PVBackView addSubview:self.PVScoreBLbl];
        [self.PVBackView addSubview:self.PVTotalTimeLbl];
        [self.PVBackView addSubview:self.PVEndTimeLbl];
        
        [self.PVTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.PVBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(210);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PVTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVBackView).offset(10);
            make.leading.equalTo(self.PVBackView);
            make.width.mas_equalTo((PVWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PVScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PVTeamALbl.mas_centerX);
            make.width.mas_equalTo((PVWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PVTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVBackView).offset(10);
            make.trailing.equalTo(self.PVBackView);
            make.width.mas_equalTo((PVWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PVScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PVTeamBLbl.mas_centerX);
            make.width.mas_equalTo((PVWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PVTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PVBackView).offset(54);
            make.trailing.equalTo(self.PVBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
        [self.PVEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PVBackView).offset(54);
            make.trailing.equalTo(self.PVBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
    }
    return self;
}
- (void)setModel:(PVScorecardModel *)model{
    _model = model;
    self.PVTitleLbl.text = _model.PVnatureCompetition;
    self.PVTeamALbl.text = _model.PVteamAName;
    self.PVScoreALbl.text = [NSString stringWithFormat:@" %.2ld ",_model.PVteamANameScore];
    CGSize size = [self.PVScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PVScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVScoreALbl layoutIfNeeded];
    self.PVTeamBLbl.text = _model.PVteamBName;
    self.PVScoreBLbl.text = [NSString stringWithFormat:@" %.2ld ",_model.PVteamBNameScore];
    size = [self.PVScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PVScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.PVTotalTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"比赛用时", nil),_model.PVtotalTimeString];
    self.PVEndTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"结束时间", nil),_model.PVendTimeString];
}
#pragma mark - 属性懒加载
- (UILabel *)PVTitleLbl{
    if (!_PVTitleLbl) {
        _PVTitleLbl = [[UILabel alloc] init];
        _PVTitleLbl.textColor = [UIColor systemOrangeColor];
        _PVTitleLbl.font = [UIFont systemFontOfSize:20];
        _PVTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVTitleLbl;
}
- (UIView *)PVBackView{
    if (!_PVBackView) {
        _PVBackView = [[UIView alloc] init];
        _PVBackView.layer.cornerRadius = 24.0f;
        _PVBackView.layer.masksToBounds = YES;
        _PVBackView.backgroundColor = [UIColor systemRedColor];
    }
    return _PVBackView;
}
- (UILabel *)PVTeamALbl{
    if (!_PVTeamALbl) {
        _PVTeamALbl = [[UILabel alloc] init];
        _PVTeamALbl.textColor = [UIColor whiteColor];
        _PVTeamALbl.font = [UIFont systemFontOfSize:18];
        _PVTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVTeamALbl;
}
- (UILabel *)PVTeamBLbl{
    if (!_PVTeamBLbl) {
        _PVTeamBLbl = [[UILabel alloc] init];
        _PVTeamBLbl.textColor = [UIColor whiteColor];
        _PVTeamBLbl.font = [UIFont systemFontOfSize:18];
        _PVTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVTeamBLbl;
}
- (UILabel *)PVScoreALbl{
    if (!_PVScoreALbl) {
        _PVScoreALbl = [[UILabel alloc] init];
        _PVScoreALbl.layer.cornerRadius = 6.0f;
        _PVScoreALbl.layer.masksToBounds = YES;
        _PVScoreALbl.backgroundColor = [UIColor blackColor];
        _PVScoreALbl.textColor = [UIColor whiteColor];
        _PVScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _PVScoreALbl;
}
- (UILabel *)PVScoreBLbl{
    if (!_PVScoreBLbl) {
        _PVScoreBLbl = [[UILabel alloc] init];
        _PVScoreBLbl.layer.cornerRadius = 6.0f;
        _PVScoreBLbl.layer.masksToBounds = YES;
        _PVScoreBLbl.backgroundColor = [UIColor blackColor];
        _PVScoreBLbl.textColor = [UIColor whiteColor];
        _PVScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _PVScoreBLbl;
}
- (UILabel *)PVTotalTimeLbl{
    if (!_PVTotalTimeLbl) {
        _PVTotalTimeLbl = [[UILabel alloc] init];
        _PVTotalTimeLbl.textColor = [UIColor whiteColor];
        _PVTotalTimeLbl.font = [UIFont systemFontOfSize:18];
        _PVTotalTimeLbl.numberOfLines = 0;
    }
    return _PVTotalTimeLbl;
}
- (UILabel *)PVEndTimeLbl{
    if (!_PVEndTimeLbl) {
        _PVEndTimeLbl = [[UILabel alloc] init];
        _PVEndTimeLbl.textColor = [UIColor whiteColor];
        _PVEndTimeLbl.font = [UIFont systemFontOfSize:18];
        _PVEndTimeLbl.numberOfLines = 0;
    }
    return _PVEndTimeLbl;
}
@end
