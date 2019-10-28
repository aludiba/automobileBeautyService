//
//  PFRecordTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFRecordTableViewCell.h"
#import "PFScorecardModel.h"
@interface PFRecordTableViewCell()
@property(nonatomic, strong)UILabel *PFTitleLbl;//标题
@property(nonatomic, strong)UIView *PFBackView;//背景板
@property(nonatomic, strong)UILabel *PFTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *PFScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *PFTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *PFScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *PFTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *PFEndTimeLbl;//结束时间
@end
@implementation PFRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PFTitleLbl];
        [self.contentView addSubview:self.PFBackView];
        [self.PFBackView addSubview:self.PFTeamALbl];
        [self.PFBackView addSubview:self.PFScoreALbl];
        [self.PFBackView addSubview:self.PFTeamBLbl];
        [self.PFBackView addSubview:self.PFScoreBLbl];
        [self.PFBackView addSubview:self.PFTotalTimeLbl];
        [self.PFBackView addSubview:self.PFEndTimeLbl];
        
        [self.PFTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.PFBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(160);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PFTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFBackView).offset(10);
            make.leading.equalTo(self.PFBackView);
            make.width.mas_equalTo((PFWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PFScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PFTeamALbl.mas_centerX);
            make.width.mas_equalTo((PFWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PFTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFBackView).offset(10);
            make.trailing.equalTo(self.PFBackView);
            make.width.mas_equalTo((PFWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PFScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PFTeamBLbl.mas_centerX);
            make.width.mas_equalTo((PFWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PFTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PFBackView).offset(16);
            make.trailing.equalTo(self.PFBackView).offset(-16);
            make.height.mas_equalTo(20);
        }];
        [self.PFEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PFTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PFBackView).offset(16);
            make.trailing.equalTo(self.PFBackView).offset(-16);
            make.height.mas_equalTo(20);
        }];
    }
    return self;
}
- (void)setModel:(PFScorecardModel *)model{
    _model = model;
    self.PFTitleLbl.text = _model.PFnatureCompetition;
    self.PFTeamALbl.text = _model.PFteamAName;
    self.PFScoreALbl.text = [NSString stringWithFormat:@" %.3ld ",_model.PFteamANameScore];
    CGSize size = [self.PFScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PFScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PFScoreALbl layoutIfNeeded];
    self.PFTeamBLbl.text = _model.PFteamBName;
    self.PFScoreBLbl.text = [NSString stringWithFormat:@" %.3ld ",_model.PFteamBNameScore];
    size = [self.PFScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PFScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PFScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.PFTotalTimeLbl.text = [NSString stringWithFormat:@"%@ : %@",NSLocalizedString(@"比赛用时", nil),_model.PFtotalTimeString];
    self.PFEndTimeLbl.text = [NSString stringWithFormat:@"%@ : %@",NSLocalizedString(@"结束时间", nil),_model.PFendTimeString];
}
#pragma mark - 属性懒加载
- (UILabel *)PFTitleLbl{
    if (!_PFTitleLbl) {
        _PFTitleLbl = [[UILabel alloc] init];
        _PFTitleLbl.textColor = [UIColor systemOrangeColor];
        _PFTitleLbl.font = [UIFont systemFontOfSize:20];
        _PFTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PFTitleLbl;
}
- (UIView *)PFBackView{
    if (!_PFBackView) {
        _PFBackView = [[UIView alloc] init];
        _PFBackView.layer.cornerRadius = 12.0f;
        _PFBackView.layer.masksToBounds = YES;
        _PFBackView.backgroundColor = [UIColor systemOrangeColor];
    }
    return _PFBackView;
}
- (UILabel *)PFTeamALbl{
    if (!_PFTeamALbl) {
        _PFTeamALbl = [[UILabel alloc] init];
        _PFTeamALbl.textColor = [UIColor whiteColor];
        _PFTeamALbl.font = [UIFont systemFontOfSize:18];
        _PFTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PFTeamALbl;
}
- (UILabel *)PFTeamBLbl{
    if (!_PFTeamBLbl) {
        _PFTeamBLbl = [[UILabel alloc] init];
        _PFTeamBLbl.textColor = [UIColor whiteColor];
        _PFTeamBLbl.font = [UIFont systemFontOfSize:18];
        _PFTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PFTeamBLbl;
}
- (UILabel *)PFScoreALbl{
    if (!_PFScoreALbl) {
        _PFScoreALbl = [[UILabel alloc] init];
        _PFScoreALbl.layer.cornerRadius = 6.0f;
        _PFScoreALbl.layer.masksToBounds = YES;
        _PFScoreALbl.backgroundColor = [UIColor blackColor];
        _PFScoreALbl.textColor = [UIColor whiteColor];
        _PFScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _PFScoreALbl;
}
- (UILabel *)PFScoreBLbl{
    if (!_PFScoreBLbl) {
        _PFScoreBLbl = [[UILabel alloc] init];
        _PFScoreBLbl.layer.cornerRadius = 6.0f;
        _PFScoreBLbl.layer.masksToBounds = YES;
        _PFScoreBLbl.backgroundColor = [UIColor blackColor];
        _PFScoreBLbl.textColor = [UIColor whiteColor];
        _PFScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _PFScoreBLbl;
}
- (UILabel *)PFTotalTimeLbl{
    if (!_PFTotalTimeLbl) {
        _PFTotalTimeLbl = [[UILabel alloc] init];
        _PFTotalTimeLbl.textColor = [UIColor whiteColor];
        _PFTotalTimeLbl.font = [UIFont systemFontOfSize:18];
    }
    return _PFTotalTimeLbl;
}
- (UILabel *)PFEndTimeLbl{
    if (!_PFEndTimeLbl) {
        _PFEndTimeLbl = [[UILabel alloc] init];
        _PFEndTimeLbl.textColor = [UIColor whiteColor];
        _PFEndTimeLbl.font = [UIFont systemFontOfSize:18];
    }
    return _PFEndTimeLbl;
}
@end
