//
//  AFSRecordTableViewCell.m
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "AFSRecordTableViewCell.h"
#import "AFSScorecardModel.h"
@interface AFSRecordTableViewCell()
@property(nonatomic, strong)UIView *AFSBackView;//背景板
@property(nonatomic, strong)UILabel *AFSTitleLabel;//标题
@property(nonatomic, strong)UIButton *AFSDeleteButton;//删除
@property(nonatomic, strong)UILabel *AFSEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *AFSElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *AFSRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *AFSRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *AFSVSLabel;//VS标识
@property(nonatomic, strong)UILabel *AFSLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *AFSLeftScoreLabel;//左边队伍得分
@property(nonatomic, strong)UIView *AFSBottomLine;

@end
@implementation AFSRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self AFSSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)AFSSetContentView{
    [self.contentView addSubview:self.AFSBackView];
    [self.AFSBackView addSubview:self.AFSTitleLabel];
    [self.AFSBackView addSubview:self.AFSDeleteButton];
    [self.AFSBackView addSubview:self.AFSEndTimeLabel];
    [self.AFSBackView addSubview:self.AFSElapsedTimeLabel];
    [self.AFSBackView addSubview:self.AFSRightNameLabel];
    [self.AFSBackView addSubview:self.AFSRightScoreLabel];
    [self.AFSBackView addSubview:self.AFSVSLabel];
    [self.AFSBackView addSubview:self.AFSLeftNameLabel];
    [self.AFSBackView addSubview:self.AFSLeftScoreLabel];
    [self.AFSBackView addSubview:self.AFSBottomLine];

    [self.AFSBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.contentView);
    }];
    [self.AFSTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AFSBackView);
        make.top.equalTo(self.AFSBackView).offset(20);
        make.width.mas_equalTo(AFSWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.AFSDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFSTitleLabel);
        make.trailing.equalTo(self.AFSBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.AFSEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.AFSBackView).offset(16);
        make.trailing.equalTo(self.AFSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.AFSElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.AFSBackView).offset(16);
        make.trailing.equalTo(self.AFSBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.AFSRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.AFSBackView).offset(16);
        make.width.mas_equalTo((AFSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.AFSVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.AFSRightNameLabel);
        make.centerX.equalTo(self.AFSBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.AFSRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.AFSRightNameLabel);
               make.width.mas_equalTo((AFSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.AFSLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.AFSBackView).offset(-16);
        make.width.mas_equalTo((AFSWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.AFSLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.AFSLeftNameLabel);
               make.width.mas_equalTo((AFSWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.AFSBottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.AFSLeftScoreLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.AFSBackView).offset(16);
        make.height.mas_equalTo(1);
        make.trailing.equalTo(self.AFSBackView);
        make.bottom.equalTo(self.AFSBackView);
    }];
}
- (void)setAFSModel:(AFSScorecardModel *)AFSModel{
    _AFSModel = AFSModel;
    self.AFSTitleLabel.text = _AFSModel.AFSNatureCompetition;
    CGSize size = [self.AFSTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.AFSTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.AFSTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.AFSEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_AFSModel.AFSEndTimeString];
    self.AFSElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_AFSModel.AFSTotalTimeString];
    self.AFSRightNameLabel.text = _AFSModel.AFSTeamRightName;
    self.AFSRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSTeamRightScore];
    self.AFSLeftNameLabel.text = _AFSModel.AFSTeamLeftName;
    self.AFSLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_AFSModel.AFSTeamLeftScore];
}
#pragma mark - 删除
- (void)AFSDeleteButton:(UIButton *)sender{
    if (self.AFSRecordDeleteB) {
        self.AFSRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)AFSBackView{
    if (!_AFSBackView) {
        _AFSBackView = [[UIView alloc] init];
        _AFSBackView.backgroundColor = [UIColor whiteColor];
    }
    return _AFSBackView;
}
- (UILabel *)AFSTitleLabel{
    if (!_AFSTitleLabel) {
        _AFSTitleLabel = [[UILabel alloc] init];
        _AFSTitleLabel.textColor = [UIColor systemGreenColor];
        _AFSTitleLabel.font = [UIFont boldSystemFontOfSize:35];
        _AFSTitleLabel.numberOfLines = 0;
    }
    return _AFSTitleLabel;
}
- (UIButton *)AFSDeleteButton{
    if (!_AFSDeleteButton) {
        _AFSDeleteButton = [[UIButton alloc] init];
        [_AFSDeleteButton setImage:[UIImage imageNamed:@"AFS_delete"] forState:UIControlStateNormal];
        [_AFSDeleteButton addTarget:self action:@selector(AFSDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFSDeleteButton;
}
- (UILabel *)AFSEndTimeLabel{
    if (!_AFSEndTimeLabel) {
        _AFSEndTimeLabel = [[UILabel alloc] init];
        _AFSEndTimeLabel.textColor = [UIColor systemGreenColor];
        _AFSEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _AFSEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _AFSEndTimeLabel.numberOfLines = 0;
    }
    return _AFSEndTimeLabel;
}
- (UILabel *)AFSElapsedTimeLabel{
    if (!_AFSElapsedTimeLabel) {
        _AFSElapsedTimeLabel = [[UILabel alloc] init];
        _AFSElapsedTimeLabel.textColor = [UIColor systemGreenColor];
        _AFSElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _AFSElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _AFSElapsedTimeLabel.numberOfLines = 0;
    }
    return _AFSElapsedTimeLabel;
}
- (UILabel *)AFSRightNameLabel{
    if (!_AFSRightNameLabel) {
        _AFSRightNameLabel = [[UILabel alloc] init];
        _AFSRightNameLabel.textColor = [UIColor systemGreenColor];
        _AFSRightNameLabel.font = [UIFont systemFontOfSize:18];
        _AFSRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _AFSRightNameLabel.numberOfLines = 0;
    }
    return _AFSRightNameLabel;
}
- (UILabel *)AFSRightScoreLabel{
    if (!_AFSRightScoreLabel) {
        _AFSRightScoreLabel = [[UILabel alloc] init];
        _AFSRightScoreLabel.textColor = [UIColor systemGreenColor];
        _AFSRightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _AFSRightScoreLabel.numberOfLines = 0;
    }
    return _AFSRightScoreLabel;
}
- (UILabel *)AFSVSLabel{
    if (!_AFSVSLabel) {
        _AFSVSLabel = [[UILabel alloc] init];
        _AFSVSLabel.textColor = [UIColor systemGreenColor];
        _AFSVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSVSLabel.textAlignment = NSTextAlignmentCenter;
        _AFSVSLabel.numberOfLines = 0;
        _AFSVSLabel.text = @"vs";
    }
    return _AFSVSLabel;
}
- (UILabel *)AFSLeftNameLabel{
    if (!_AFSLeftNameLabel) {
        _AFSLeftNameLabel = [[UILabel alloc] init];
        _AFSLeftNameLabel.textColor = [UIColor systemGreenColor];
        _AFSLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _AFSLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _AFSLeftNameLabel.numberOfLines = 0;
    }
    return _AFSLeftNameLabel;
}
- (UILabel *)AFSLeftScoreLabel{
    if (!_AFSLeftScoreLabel) {
        _AFSLeftScoreLabel = [[UILabel alloc] init];
        _AFSLeftScoreLabel.textColor = [UIColor systemGreenColor];
        _AFSLeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _AFSLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _AFSLeftScoreLabel.numberOfLines = 0;
    }
    return _AFSLeftScoreLabel;
}
- (UIView *)AFSBottomLine{
    if (!_AFSBottomLine) {
        _AFSBottomLine = [[UIView alloc] init];
        _AFSBottomLine.backgroundColor = AFSH_Color(190, 194, 202, 1);
    }
    return _AFSBottomLine;
}
@end
