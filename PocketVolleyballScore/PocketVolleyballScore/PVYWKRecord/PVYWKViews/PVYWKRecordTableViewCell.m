//
//  PVYWKRecordTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKRecordTableViewCell.h"
#import "PVYWKScorecardModel.h"
@interface PVYWKRecordTableViewCell()
@property(nonatomic, strong)UILabel *PVYWKTitleLbl;//标题
@property(nonatomic, strong)UIView *PVYWKBackView;//背景板
@property(nonatomic, strong)UILabel *PVYWKTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *PVYWKScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *PVYWKTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *PVYWKScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *PVYWKWithScoreLbl;//每局比分
@property(nonatomic, strong)UILabel *PVYWKTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *PVYWKEndTimeLbl;//结束时间
@end
@implementation PVYWKRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PVYWKTitleLbl];
        [self.contentView addSubview:self.PVYWKBackView];
        [self.PVYWKBackView addSubview:self.PVYWKTeamALbl];
        [self.PVYWKBackView addSubview:self.PVYWKScoreALbl];
        [self.PVYWKBackView addSubview:self.PVYWKTeamBLbl];
        [self.PVYWKBackView addSubview:self.PVYWKScoreBLbl];
        [self.PVYWKBackView addSubview:self.PVYWKWithScoreLbl];
        [self.PVYWKBackView addSubview:self.PVYWKTotalTimeLbl];
        [self.PVYWKBackView addSubview:self.PVYWKEndTimeLbl];
        
        [self.PVYWKTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.PVYWKBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(264);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PVYWKTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKBackView).offset(10);
            make.leading.equalTo(self.PVYWKBackView);
            make.width.mas_equalTo((PVYWKWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PVYWKTeamALbl.mas_centerX);
            make.width.mas_equalTo((PVYWKWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PVYWKTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKBackView).offset(10);
            make.trailing.equalTo(self.PVYWKBackView);
            make.width.mas_equalTo((PVYWKWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.PVYWKScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.PVYWKTeamBLbl.mas_centerX);
            make.width.mas_equalTo((PVYWKWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.PVYWKWithScoreLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PVYWKBackView).offset(54);
            make.trailing.equalTo(self.PVYWKBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
        [self.PVYWKTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKWithScoreLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PVYWKBackView).offset(54);
            make.trailing.equalTo(self.PVYWKBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
        [self.PVYWKEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PVYWKTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.PVYWKBackView).offset(54);
            make.trailing.equalTo(self.PVYWKBackView).offset(-16);
            make.height.mas_equalTo(44);
            
        }];
    }
    return self;
}
- (void)setModel:(PVYWKScorecardModel *)model{
    _model = model;
    self.PVYWKTitleLbl.text = _model.PVYWKnatureCompetition;
    self.PVYWKTeamALbl.text = _model.PVYWKteamAName;
    self.PVYWKScoreALbl.text = [NSString stringWithFormat:@" %.1ld ",_model.PVYWKteamANameScore];
    CGSize size = [self.PVYWKScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PVYWKScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKScoreALbl layoutIfNeeded];
    self.PVYWKTeamBLbl.text = _model.PVYWKteamBName;
    self.PVYWKScoreBLbl.text = [NSString stringWithFormat:@" %.1ld ",_model.PVYWKteamBNameScore];
    size = [self.PVYWKScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.PVYWKScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.PVYWKScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.PVYWKTotalTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"比赛用时", nil),_model.PVYWKtotalTimeString];
    self.PVYWKEndTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"结束时间", nil),_model.PVYWKendTimeString];
    NSMutableString *withTheScoreString = [[NSMutableString alloc] init];
    for (int i = 0; i < _model.PVYWKBureauPointsArray.count; i++) {
        PVYWKBureauPointsModel *model = _model.PVYWKBureauPointsArray[i];
        [withTheScoreString appendString:[NSString stringWithFormat:@"%@ ",model.PVYWKtBureauScoreString]];
    }
    self.PVYWKWithScoreLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"每局比分", nil),withTheScoreString];
}
#pragma mark - 属性懒加载
- (UILabel *)PVYWKTitleLbl{
    if (!_PVYWKTitleLbl) {
        _PVYWKTitleLbl = [[UILabel alloc] init];
        _PVYWKTitleLbl.textColor = [UIColor systemOrangeColor];
        _PVYWKTitleLbl.font = [UIFont systemFontOfSize:20];
        _PVYWKTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVYWKTitleLbl;
}
- (UIView *)PVYWKBackView{
    if (!_PVYWKBackView) {
        _PVYWKBackView = [[UIView alloc] init];
        _PVYWKBackView.layer.cornerRadius = 8.0f;
        _PVYWKBackView.layer.masksToBounds = YES;
        _PVYWKBackView.layer.borderWidth = 2.0f;
        _PVYWKBackView.layer.borderColor = [UIColor systemRedColor].CGColor;
        _PVYWKBackView.backgroundColor = [UIColor systemYellowColor];
    }
    return _PVYWKBackView;
}
- (UILabel *)PVYWKTeamALbl{
    if (!_PVYWKTeamALbl) {
        _PVYWKTeamALbl = [[UILabel alloc] init];
        _PVYWKTeamALbl.textColor = [UIColor whiteColor];
        _PVYWKTeamALbl.font = [UIFont systemFontOfSize:18];
        _PVYWKTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVYWKTeamALbl;
}
- (UILabel *)PVYWKTeamBLbl{
    if (!_PVYWKTeamBLbl) {
        _PVYWKTeamBLbl = [[UILabel alloc] init];
        _PVYWKTeamBLbl.textColor = [UIColor whiteColor];
        _PVYWKTeamBLbl.font = [UIFont systemFontOfSize:18];
        _PVYWKTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PVYWKTeamBLbl;
}
- (UILabel *)PVYWKScoreALbl{
    if (!_PVYWKScoreALbl) {
        _PVYWKScoreALbl = [[UILabel alloc] init];
        _PVYWKScoreALbl.layer.cornerRadius = 6.0f;
        _PVYWKScoreALbl.layer.masksToBounds = YES;
        _PVYWKScoreALbl.backgroundColor = [UIColor blackColor];
        _PVYWKScoreALbl.textColor = [UIColor whiteColor];
        _PVYWKScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _PVYWKScoreALbl;
}
- (UILabel *)PVYWKScoreBLbl{
    if (!_PVYWKScoreBLbl) {
        _PVYWKScoreBLbl = [[UILabel alloc] init];
        _PVYWKScoreBLbl.layer.cornerRadius = 6.0f;
        _PVYWKScoreBLbl.layer.masksToBounds = YES;
        _PVYWKScoreBLbl.backgroundColor = [UIColor blackColor];
        _PVYWKScoreBLbl.textColor = [UIColor whiteColor];
        _PVYWKScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _PVYWKScoreBLbl;
}
- (UILabel *)PVYWKWithScoreLbl{
    if (!_PVYWKWithScoreLbl) {
        _PVYWKWithScoreLbl = [[UILabel alloc] init];
        _PVYWKWithScoreLbl.textColor = [UIColor whiteColor];
        _PVYWKWithScoreLbl.font = [UIFont systemFontOfSize:18];
        _PVYWKWithScoreLbl.numberOfLines = 0;
    }
    return _PVYWKWithScoreLbl;
}
- (UILabel *)PVYWKTotalTimeLbl{
    if (!_PVYWKTotalTimeLbl) {
        _PVYWKTotalTimeLbl = [[UILabel alloc] init];
        _PVYWKTotalTimeLbl.textColor = [UIColor whiteColor];
        _PVYWKTotalTimeLbl.font = [UIFont systemFontOfSize:18];
        _PVYWKTotalTimeLbl.numberOfLines = 0;
    }
    return _PVYWKTotalTimeLbl;
}
- (UILabel *)PVYWKEndTimeLbl{
    if (!_PVYWKEndTimeLbl) {
        _PVYWKEndTimeLbl = [[UILabel alloc] init];
        _PVYWKEndTimeLbl.textColor = [UIColor whiteColor];
        _PVYWKEndTimeLbl.font = [UIFont systemFontOfSize:18];
        _PVYWKEndTimeLbl.numberOfLines = 0;
    }
    return _PVYWKEndTimeLbl;
}
@end
