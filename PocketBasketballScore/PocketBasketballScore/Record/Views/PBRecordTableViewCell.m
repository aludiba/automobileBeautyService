//
//  PBRecordTableViewCell.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBRecordTableViewCell.h"
#import "PBScorecardModel.h"
@interface PBRecordTableViewCell()
@property(nonatomic, strong)UILabel *PBTitleLbl;//标题
@property(nonatomic, strong)UIView *PBBackView;//背景板
@property(nonatomic, strong)UILabel *PBTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *PBScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *PBTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *PBScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *PBTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *PBEndTimeLbl;//结束时间
@end
@implementation PBRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PBTitleLbl];
        [self.contentView addSubview:self.PBBackView];
        [self.PBBackView addSubview:self.PBTeamALbl];
        [self.PBBackView addSubview:self.PBScoreALbl];
        [self.PBBackView addSubview:self.PBTeamBLbl];
        [self.PBBackView addSubview:self.PBScoreBLbl];
        [self.PBBackView addSubview:self.PBTotalTimeLbl];
        [self.PBBackView addSubview:self.PBEndTimeLbl];
        
        [self.PBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.PBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(160);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PBTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBBackView).offset(10);
            make.leading.equalTo(self.PBBackView);
            make.width.mas_equalTo((PBWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PBScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PBTeamALbl.mas_centerX);
            make.width.mas_equalTo((PBWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PBTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBBackView).offset(10);
            make.trailing.equalTo(self.PBBackView);
            make.width.mas_equalTo((PBWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PBScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PBTeamBLbl.mas_centerX);
            make.width.mas_equalTo((PBWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PBTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PBBackView).offset(16);
            make.trailing.equalTo(self.PBBackView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.PBEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PBTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PBBackView).offset(16);
            make.trailing.equalTo(self.PBBackView).offset(-16);
            make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setModel:(PBScorecardModel *)model{
    _model = model;
    self.PBTitleLbl.text = _model.natureCompetition;
    self.PBTeamALbl.text = _model.teamAName;
    self.PBScoreALbl.text = [NSString stringWithFormat:@" %.3ld ",_model.teamANameScore];
    CGSize size = [self.PBScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PBScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PBScoreALbl layoutIfNeeded];
    self.PBTeamBLbl.text = _model.teamBName;
    self.PBScoreBLbl.text = [NSString stringWithFormat:@" %.3ld ",_model.teamBNameScore];
    size = [self.PBScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PBScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PBScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.PBTotalTimeLbl.text = [NSString stringWithFormat:@"%@ : %@",NSLocalizedString(@"比赛用时", nil),_model.totalTimeString];
    self.PBEndTimeLbl.text = [NSString stringWithFormat:@"%@ : %@",NSLocalizedString(@"结束时间", nil),_model.endTimeString];
}
#pragma mark - 属性懒加载
- (UILabel *)PBTitleLbl{
    if (!_PBTitleLbl) {
        _PBTitleLbl = [[UILabel alloc] init];
        _PBTitleLbl.textColor = [UIColor systemOrangeColor];
        _PBTitleLbl.font = [UIFont systemFontOfSize:20];
        _PBTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PBTitleLbl;
}
- (UIView *)PBBackView{
    if (!_PBBackView) {
        _PBBackView = [[UIView alloc] init];
        _PBBackView.layer.cornerRadius = 12.0f;
        _PBBackView.layer.masksToBounds = YES;
        _PBBackView.backgroundColor = [UIColor systemOrangeColor];
    }
    return _PBBackView;
}
- (UILabel *)PBTeamALbl{
    if (!_PBTeamALbl) {
        _PBTeamALbl = [[UILabel alloc] init];
        _PBTeamALbl.textColor = [UIColor whiteColor];
        _PBTeamALbl.font = [UIFont systemFontOfSize:18];
        _PBTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PBTeamALbl;
}
- (UILabel *)PBTeamBLbl{
    if (!_PBTeamBLbl) {
        _PBTeamBLbl = [[UILabel alloc] init];
        _PBTeamBLbl.textColor = [UIColor whiteColor];
        _PBTeamBLbl.font = [UIFont systemFontOfSize:18];
        _PBTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PBTeamBLbl;
}
- (UILabel *)PBScoreALbl{
    if (!_PBScoreALbl) {
        _PBScoreALbl = [[UILabel alloc] init];
        _PBScoreALbl.layer.cornerRadius = 6.0f;
        _PBScoreALbl.layer.masksToBounds = YES;
        _PBScoreALbl.backgroundColor = [UIColor blackColor];
        _PBScoreALbl.textColor = [UIColor whiteColor];
        _PBScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _PBScoreALbl;
}
- (UILabel *)PBScoreBLbl{
    if (!_PBScoreBLbl) {
        _PBScoreBLbl = [[UILabel alloc] init];
        _PBScoreBLbl.layer.cornerRadius = 6.0f;
        _PBScoreBLbl.layer.masksToBounds = YES;
        _PBScoreBLbl.backgroundColor = [UIColor blackColor];
        _PBScoreBLbl.textColor = [UIColor whiteColor];
        _PBScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _PBScoreBLbl;
}
- (UILabel *)PBTotalTimeLbl{
    if (!_PBTotalTimeLbl) {
        _PBTotalTimeLbl = [[UILabel alloc] init];
        _PBTotalTimeLbl.textColor = [UIColor whiteColor];
        _PBTotalTimeLbl.font = [UIFont systemFontOfSize:18];
    }
    return _PBTotalTimeLbl;
}
- (UILabel *)PBEndTimeLbl{
    if (!_PBEndTimeLbl) {
        _PBEndTimeLbl = [[UILabel alloc] init];
        _PBEndTimeLbl.textColor = [UIColor whiteColor];
        _PBEndTimeLbl.font = [UIFont systemFontOfSize:18];
    }
    return _PBEndTimeLbl;
}
@end
