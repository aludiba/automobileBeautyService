//
//  YBRecordTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBRecordTableViewCell.h"
#import "YBScorecardModel.h"
@interface YBRecordTableViewCell()
@property(nonatomic, strong)UILabel *YBTitleLbl;//标题
@property(nonatomic, strong)UIView *YBBackView;//背景板
@property(nonatomic, strong)UILabel *YBTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *YBScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *YBTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *YBScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *YBTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *YBEndTimeLbl;//结束时间
@end
@implementation YBRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.YBTitleLbl];
        [self.contentView addSubview:self.YBBackView];
        [self.YBBackView addSubview:self.YBTeamALbl];
        [self.YBBackView addSubview:self.YBScoreALbl];
        [self.YBBackView addSubview:self.YBTeamBLbl];
        [self.YBBackView addSubview:self.YBScoreBLbl];
        [self.YBBackView addSubview:self.YBTotalTimeLbl];
        [self.YBBackView addSubview:self.YBEndTimeLbl];
        
        [self.YBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.YBBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(210);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.YBTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBBackView).offset(10);
            make.leading.equalTo(self.YBBackView);
            make.width.mas_equalTo((YBWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.YBScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.YBTeamALbl.mas_centerX);
            make.width.mas_equalTo((YBWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.YBTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBBackView).offset(10);
            make.trailing.equalTo(self.YBBackView);
            make.width.mas_equalTo((YBWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.YBScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.YBTeamBLbl.mas_centerX);
            make.width.mas_equalTo((YBWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.YBTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.YBBackView).offset(54);
            make.trailing.equalTo(self.YBBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
        [self.YBEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.YBTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.YBBackView).offset(54);
            make.trailing.equalTo(self.YBBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
    }
    return self;
}
- (void)setModel:(YBScorecardModel *)model{
    _model = model;
    self.YBTitleLbl.text = _model.YBnatureCompetition;
    self.YBTeamALbl.text = _model.YBteamAName;
    self.YBScoreALbl.text = [NSString stringWithFormat:@" %.2ld ",_model.YBteamANameScore];
    CGSize size = [self.YBScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.YBScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.YBScoreALbl layoutIfNeeded];
    self.YBTeamBLbl.text = _model.YBteamBName;
    self.YBScoreBLbl.text = [NSString stringWithFormat:@" %.2ld ",_model.YBteamBNameScore];
    size = [self.YBScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.YBScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.YBScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.YBTotalTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"比赛用时", nil),_model.YBtotalTimeString];
    self.YBEndTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"结束时间", nil),_model.YBendTimeString];
}
#pragma mark - 属性懒加载
- (UILabel *)YBTitleLbl{
    if (!_YBTitleLbl) {
        _YBTitleLbl = [[UILabel alloc] init];
        _YBTitleLbl.textColor = [UIColor systemOrangeColor];
        _YBTitleLbl.font = [UIFont systemFontOfSize:20];
        _YBTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _YBTitleLbl;
}
- (UIView *)YBBackView{
    if (!_YBBackView) {
        _YBBackView = [[UIView alloc] init];
        _YBBackView.layer.cornerRadius = 24.0f;
        _YBBackView.layer.masksToBounds = YES;
        _YBBackView.backgroundColor = [UIColor systemRedColor];
    }
    return _YBBackView;
}
- (UILabel *)YBTeamALbl{
    if (!_YBTeamALbl) {
        _YBTeamALbl = [[UILabel alloc] init];
        _YBTeamALbl.textColor = [UIColor whiteColor];
        _YBTeamALbl.font = [UIFont systemFontOfSize:18];
        _YBTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _YBTeamALbl;
}
- (UILabel *)YBTeamBLbl{
    if (!_YBTeamBLbl) {
        _YBTeamBLbl = [[UILabel alloc] init];
        _YBTeamBLbl.textColor = [UIColor whiteColor];
        _YBTeamBLbl.font = [UIFont systemFontOfSize:18];
        _YBTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _YBTeamBLbl;
}
- (UILabel *)YBScoreALbl{
    if (!_YBScoreALbl) {
        _YBScoreALbl = [[UILabel alloc] init];
        _YBScoreALbl.layer.cornerRadius = 6.0f;
        _YBScoreALbl.layer.masksToBounds = YES;
        _YBScoreALbl.backgroundColor = [UIColor blackColor];
        _YBScoreALbl.textColor = [UIColor whiteColor];
        _YBScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _YBScoreALbl;
}
- (UILabel *)YBScoreBLbl{
    if (!_YBScoreBLbl) {
        _YBScoreBLbl = [[UILabel alloc] init];
        _YBScoreBLbl.layer.cornerRadius = 6.0f;
        _YBScoreBLbl.layer.masksToBounds = YES;
        _YBScoreBLbl.backgroundColor = [UIColor blackColor];
        _YBScoreBLbl.textColor = [UIColor whiteColor];
        _YBScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _YBScoreBLbl;
}
- (UILabel *)YBTotalTimeLbl{
    if (!_YBTotalTimeLbl) {
        _YBTotalTimeLbl = [[UILabel alloc] init];
        _YBTotalTimeLbl.textColor = [UIColor whiteColor];
        _YBTotalTimeLbl.font = [UIFont systemFontOfSize:18];
        _YBTotalTimeLbl.numberOfLines = 0;
    }
    return _YBTotalTimeLbl;
}
- (UILabel *)YBEndTimeLbl{
    if (!_YBEndTimeLbl) {
        _YBEndTimeLbl = [[UILabel alloc] init];
        _YBEndTimeLbl.textColor = [UIColor whiteColor];
        _YBEndTimeLbl.font = [UIFont systemFontOfSize:18];
        _YBEndTimeLbl.numberOfLines = 0;
    }
    return _YBEndTimeLbl;
}
@end
