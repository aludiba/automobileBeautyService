//
//  GARecordTableViewCell.m
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "GARecordTableViewCell.h"
#import "GAScorecardModel.h"
@interface GARecordTableViewCell()
@property(nonatomic, strong)UIView *GABackView;//背景板
@property(nonatomic, strong)UILabel *GATitleLabel;//标题
@property(nonatomic, strong)UIButton *GADeleteButton;//删除
@property(nonatomic, strong)UILabel *GAEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *GAElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *GARightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *GARightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *GAVSLabel;//VS标识
@property(nonatomic, strong)UILabel *GALeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *GALeftScoreLabel;//左边队伍得分
@property(nonatomic, strong)UIView *GABottomLine;

@end
@implementation GARecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self GASetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)GASetContentView{
    self.contentView.backgroundColor = [UIColor greenColor];
    [self.contentView addSubview:self.GABackView];
    [self.GABackView addSubview:self.GATitleLabel];
    [self.GABackView addSubview:self.GADeleteButton];
    [self.GABackView addSubview:self.GAEndTimeLabel];
    [self.GABackView addSubview:self.GAElapsedTimeLabel];
    [self.GABackView addSubview:self.GARightNameLabel];
    [self.GABackView addSubview:self.GARightScoreLabel];
    [self.GABackView addSubview:self.GAVSLabel];
    [self.GABackView addSubview:self.GALeftNameLabel];
    [self.GABackView addSubview:self.GALeftScoreLabel];
    [self.GABackView addSubview:self.GABottomLine];

    [self.GABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(308);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.GATitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.GABackView);
        make.top.equalTo(self.GABackView).offset(20);
        make.width.mas_equalTo(GAWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(40);
    }];
    [self.GADeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GATitleLabel);
        make.trailing.equalTo(self.GABackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.GAEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GATitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.GABackView).offset(16);
        make.trailing.equalTo(self.GABackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.GAElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.GABackView).offset(16);
        make.trailing.equalTo(self.GABackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.GARightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.GABackView).offset(16);
        make.width.mas_equalTo((GAWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.GAVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.GARightNameLabel);
        make.centerX.equalTo(self.GABackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.GARightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GARightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.GARightNameLabel);
               make.width.mas_equalTo((GAWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.GALeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GAElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.GABackView).offset(-16);
        make.width.mas_equalTo((GAWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.GALeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.GALeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.GALeftNameLabel);
               make.width.mas_equalTo((GAWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.GABottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.GABackView).offset(16);
        make.height.mas_equalTo(1);
        make.trailing.equalTo(self.GABackView);
        make.bottom.equalTo(self.GABackView);
    }];
}
- (void)setGAModel:(GAScorecardModel *)GAModel{
    _GAModel = GAModel;
    self.GATitleLabel.text = _GAModel.GANatureCompetition;
    CGSize size = [self.GATitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.GATitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.GATitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.GAEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_GAModel.GAEndTimeString];
    self.GAElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_GAModel.GATotalTimeString];
    self.GARightNameLabel.text = _GAModel.GATeamRightName;
    self.GARightScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GATeamRightScore];
    self.GALeftNameLabel.text = _GAModel.GATeamLeftName;
    self.GALeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_GAModel.GATeamLeftScore];
}
#pragma mark - 删除
- (void)GADeleteButton:(UIButton *)sender{
    if (self.GARecordDeleteB) {
        self.GARecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)GABackView{
    if (!_GABackView) {
        _GABackView = [[UIView alloc] init];
        _GABackView.backgroundColor = [UIColor systemGreenColor];
        _GABackView.layer.cornerRadius = 8.0f;
        _GABackView.layer.masksToBounds = YES;
    }
    return _GABackView;
}
- (UILabel *)GATitleLabel{
    if (!_GATitleLabel) {
        _GATitleLabel = [[UILabel alloc] init];
        _GATitleLabel.textColor = [UIColor whiteColor];
        _GATitleLabel.font = [UIFont boldSystemFontOfSize:35];
        _GATitleLabel.numberOfLines = 0;
    }
    return _GATitleLabel;
}
- (UIButton *)GADeleteButton{
    if (!_GADeleteButton) {
        _GADeleteButton = [[UIButton alloc] init];
        [_GADeleteButton setImage:[UIImage imageNamed:@"GA_delete"] forState:UIControlStateNormal];
        [_GADeleteButton addTarget:self action:@selector(GADeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GADeleteButton;
}
- (UILabel *)GAEndTimeLabel{
    if (!_GAEndTimeLabel) {
        _GAEndTimeLabel = [[UILabel alloc] init];
        _GAEndTimeLabel.textColor = [UIColor whiteColor];
        _GAEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _GAEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _GAEndTimeLabel.numberOfLines = 0;
    }
    return _GAEndTimeLabel;
}
- (UILabel *)GAElapsedTimeLabel{
    if (!_GAElapsedTimeLabel) {
        _GAElapsedTimeLabel = [[UILabel alloc] init];
        _GAElapsedTimeLabel.textColor = [UIColor whiteColor];
        _GAElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _GAElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _GAElapsedTimeLabel.numberOfLines = 0;
    }
    return _GAElapsedTimeLabel;
}
- (UILabel *)GARightNameLabel{
    if (!_GARightNameLabel) {
        _GARightNameLabel = [[UILabel alloc] init];
        _GARightNameLabel.textColor = [UIColor whiteColor];
        _GARightNameLabel.font = [UIFont systemFontOfSize:18];
        _GARightNameLabel.textAlignment = NSTextAlignmentCenter;
        _GARightNameLabel.numberOfLines = 0;
    }
    return _GARightNameLabel;
}
- (UILabel *)GARightScoreLabel{
    if (!_GARightScoreLabel) {
        _GARightScoreLabel = [[UILabel alloc] init];
        _GARightScoreLabel.textColor = [UIColor whiteColor];
        _GARightScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _GARightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _GARightScoreLabel.numberOfLines = 0;
    }
    return _GARightScoreLabel;
}
- (UILabel *)GAVSLabel{
    if (!_GAVSLabel) {
        _GAVSLabel = [[UILabel alloc] init];
        _GAVSLabel.textColor = [UIColor whiteColor];
        _GAVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _GAVSLabel.textAlignment = NSTextAlignmentCenter;
        _GAVSLabel.numberOfLines = 0;
        _GAVSLabel.text = @"vs";
    }
    return _GAVSLabel;
}
- (UILabel *)GALeftNameLabel{
    if (!_GALeftNameLabel) {
        _GALeftNameLabel = [[UILabel alloc] init];
        _GALeftNameLabel.textColor = [UIColor whiteColor];
        _GALeftNameLabel.font = [UIFont systemFontOfSize:18];
        _GALeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _GALeftNameLabel.numberOfLines = 0;
    }
    return _GALeftNameLabel;
}
- (UILabel *)GALeftScoreLabel{
    if (!_GALeftScoreLabel) {
        _GALeftScoreLabel = [[UILabel alloc] init];
        _GALeftScoreLabel.textColor = [UIColor whiteColor];
        _GALeftScoreLabel.font = [UIFont boldSystemFontOfSize:30];
        _GALeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _GALeftScoreLabel.numberOfLines = 0;
    }
    return _GALeftScoreLabel;
}
- (UIView *)GABottomLine{
    if (!_GABottomLine) {
        _GABottomLine = [[UIView alloc] init];
        _GABottomLine.backgroundColor = GAH_Color(190, 194, 202, 1);
    }
    return _GABottomLine;
}
@end
