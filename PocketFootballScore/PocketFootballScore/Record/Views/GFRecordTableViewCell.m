//
//  GFRecordTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/25.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFRecordTableViewCell.h"
#import "GFScorecardModel.h"
@interface GFRecordTableViewCell()
@property(nonatomic, strong)UILabel *GFTitleLbl;//标题
@property(nonatomic, strong)UIView *GFBackView;//背景板
@property(nonatomic, strong)UILabel *GFTeamALbl;//A队队名
@property(nonatomic, strong)UILabel *GFScoreALbl;//A队得分
@property(nonatomic, strong)UILabel *GFTeamBLbl;//B队队名
@property(nonatomic, strong)UILabel *GFScoreBLbl;//B队得分
@property(nonatomic, strong)UILabel *GFTotalTimeLbl;//比赛用时
@property(nonatomic, strong)UILabel *GFEndTimeLbl;//结束时间
@end
@implementation GFRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.GFTitleLbl];
        [self.contentView addSubview:self.GFBackView];
        [self.GFBackView addSubview:self.GFTeamALbl];
        [self.GFBackView addSubview:self.GFScoreALbl];
        [self.GFBackView addSubview:self.GFTeamBLbl];
        [self.GFBackView addSubview:self.GFScoreBLbl];
        [self.GFBackView addSubview:self.GFTotalTimeLbl];
        [self.GFBackView addSubview:self.GFEndTimeLbl];
        
        [self.GFTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(30);
        }];
        [self.GFBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFTitleLbl.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-32);
            make.height.mas_equalTo(210);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.GFTeamALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFBackView).offset(10);
            make.leading.equalTo(self.GFBackView);
            make.width.mas_equalTo((GFWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.GFScoreALbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.GFTeamALbl.mas_centerX);
            make.width.mas_equalTo((GFWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.GFTeamBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFBackView).offset(10);
            make.trailing.equalTo(self.GFBackView);
            make.width.mas_equalTo((GFWIDTH - 32) * 0.5);
            make.height.mas_equalTo(20);
        }];
        [self.GFScoreBLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFTeamALbl.mas_bottom).offset(10);
            make.centerX.equalTo(self.GFTeamBLbl.mas_centerX);
            make.width.mas_equalTo((GFWIDTH - 32) * 0.5 - 20);
            make.height.mas_equalTo(50);
        }];
        [self.GFTotalTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFScoreALbl.mas_bottom).offset(10);
            make.leading.equalTo(self.GFBackView).offset(54);
            make.trailing.equalTo(self.GFBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
        [self.GFEndTimeLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.GFTotalTimeLbl.mas_bottom).offset(10);
            make.leading.equalTo(self.GFBackView).offset(54);
            make.trailing.equalTo(self.GFBackView).offset(-16);
            make.height.mas_equalTo(44);
        }];
    }
    return self;
}
- (void)setModel:(GFScorecardModel *)model{
    _model = model;
    self.GFTitleLbl.text = _model.GFnatureCompetition;
    self.GFTeamALbl.text = _model.GFteamAName;
    self.GFScoreALbl.text = [NSString stringWithFormat:@" %.2ld ",_model.GFteamANameScore];
    CGSize size = [self.GFScoreALbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.GFScoreALbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GFScoreALbl layoutIfNeeded];
    self.GFTeamBLbl.text = _model.GFteamBName;
    self.GFScoreBLbl.text = [NSString stringWithFormat:@" %.2ld ",_model.GFteamBNameScore];
    size = [self.GFScoreBLbl sizeThatFits:CGSizeMake(MAXFLOAT, 50)];
    [self.GFScoreBLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GFScoreBLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
    self.GFTotalTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"比赛用时", nil),_model.GFtotalTimeString];
    self.GFEndTimeLbl.text = [NSString stringWithFormat:@"%@:\n%@",NSLocalizedString(@"结束时间", nil),_model.GFendTimeString];
}
#pragma mark - 属性懒加载
- (UILabel *)GFTitleLbl{
    if (!_GFTitleLbl) {
        _GFTitleLbl = [[UILabel alloc] init];
        _GFTitleLbl.textColor = [UIColor systemOrangeColor];
        _GFTitleLbl.font = [UIFont systemFontOfSize:20];
        _GFTitleLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _GFTitleLbl;
}
- (UIView *)GFBackView{
    if (!_GFBackView) {
        _GFBackView = [[UIView alloc] init];
        _GFBackView.layer.cornerRadius = 24.0f;
        _GFBackView.layer.masksToBounds = YES;
        _GFBackView.backgroundColor = [UIColor systemRedColor];
    }
    return _GFBackView;
}
- (UILabel *)GFTeamALbl{
    if (!_GFTeamALbl) {
        _GFTeamALbl = [[UILabel alloc] init];
        _GFTeamALbl.textColor = [UIColor whiteColor];
        _GFTeamALbl.font = [UIFont systemFontOfSize:18];
        _GFTeamALbl.textAlignment = NSTextAlignmentCenter;
    }
    return _GFTeamALbl;
}
- (UILabel *)GFTeamBLbl{
    if (!_GFTeamBLbl) {
        _GFTeamBLbl = [[UILabel alloc] init];
        _GFTeamBLbl.textColor = [UIColor whiteColor];
        _GFTeamBLbl.font = [UIFont systemFontOfSize:18];
        _GFTeamBLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _GFTeamBLbl;
}
- (UILabel *)GFScoreALbl{
    if (!_GFScoreALbl) {
        _GFScoreALbl = [[UILabel alloc] init];
        _GFScoreALbl.layer.cornerRadius = 6.0f;
        _GFScoreALbl.layer.masksToBounds = YES;
        _GFScoreALbl.backgroundColor = [UIColor blackColor];
        _GFScoreALbl.textColor = [UIColor whiteColor];
        _GFScoreALbl.font = [UIFont systemFontOfSize:40];
    }
    return _GFScoreALbl;
}
- (UILabel *)GFScoreBLbl{
    if (!_GFScoreBLbl) {
        _GFScoreBLbl = [[UILabel alloc] init];
        _GFScoreBLbl.layer.cornerRadius = 6.0f;
        _GFScoreBLbl.layer.masksToBounds = YES;
        _GFScoreBLbl.backgroundColor = [UIColor blackColor];
        _GFScoreBLbl.textColor = [UIColor whiteColor];
        _GFScoreBLbl.font = [UIFont systemFontOfSize:40];
    }
    return _GFScoreBLbl;
}
- (UILabel *)GFTotalTimeLbl{
    if (!_GFTotalTimeLbl) {
        _GFTotalTimeLbl = [[UILabel alloc] init];
        _GFTotalTimeLbl.textColor = [UIColor whiteColor];
        _GFTotalTimeLbl.font = [UIFont systemFontOfSize:18];
        _GFTotalTimeLbl.numberOfLines = 0;
    }
    return _GFTotalTimeLbl;
}
- (UILabel *)GFEndTimeLbl{
    if (!_GFEndTimeLbl) {
        _GFEndTimeLbl = [[UILabel alloc] init];
        _GFEndTimeLbl.textColor = [UIColor whiteColor];
        _GFEndTimeLbl.font = [UIFont systemFontOfSize:18];
        _GFEndTimeLbl.numberOfLines = 0;
    }
    return _GFEndTimeLbl;
}
@end
