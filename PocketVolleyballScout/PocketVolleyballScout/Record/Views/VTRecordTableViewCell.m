//
//  VTRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "VTRecordTableViewCell.h"
#import "VTScorecardModel.h"
@interface VTRecordTableViewCell()
@property(nonatomic, strong)UIView *VTBackView;//背景板
@property(nonatomic, strong)UILabel *VTTitleLabel;//标题
@property(nonatomic, strong)UIButton *VTDeleteButton;//删除
@property(nonatomic, strong)UILabel *VTEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *VTElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *VTRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *VTRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *VTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *VTLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *VTLeftScoreLabel;//左边队伍得分
@end
@implementation VTRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self VTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)VTSetContentView{
    [self.contentView addSubview:self.VTBackView];
    [self.VTBackView addSubview:self.VTTitleLabel];
    [self.VTBackView addSubview:self.VTDeleteButton];
    [self.VTBackView addSubview:self.VTEndTimeLabel];
    [self.VTBackView addSubview:self.VTElapsedTimeLabel];
    [self.VTBackView addSubview:self.VTRightNameLabel];
    [self.VTBackView addSubview:self.VTRightScoreLabel];
    [self.VTBackView addSubview:self.VTVSLabel];
    [self.VTBackView addSubview:self.VTLeftNameLabel];
    [self.VTBackView addSubview:self.VTLeftScoreLabel];
    
    [self.VTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(254);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.VTTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VTBackView);
        make.top.equalTo(self.VTBackView).offset(20);
        make.width.mas_equalTo(VTWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.VTDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.VTTitleLabel);
        make.trailing.equalTo(self.VTBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.VTEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.VTBackView).offset(16);
        make.trailing.equalTo(self.VTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.VTElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.VTBackView).offset(16);
        make.trailing.equalTo(self.VTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.VTRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.VTBackView).offset(16);
        make.width.mas_equalTo((VTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.VTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.VTRightNameLabel);
               make.width.mas_equalTo((VTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.VTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.VTRightScoreLabel);
        make.centerX.equalTo(self.VTBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.VTLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.VTBackView).offset(-16);
        make.width.mas_equalTo((VTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.VTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.VTLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.VTLeftNameLabel);
               make.width.mas_equalTo((VTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setVTModel:(VTScorecardModel *)VTModel{
    _VTModel = VTModel;
    self.VTTitleLabel.text = _VTModel.VTNatureCompetition;
    CGSize size = [self.VTTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.VTTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.VTTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.VTEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_VTModel.VTEndTimeString];
    self.VTElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_VTModel.VTTotalTimeString];
    self.VTRightNameLabel.text = _VTModel.VTTeamRightName;
    self.VTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTTeamRightScore];
    self.VTLeftNameLabel.text = _VTModel.VTTeamLeftName;
    self.VTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_VTModel.VTTeamLeftScore];
}
#pragma mark - 删除
- (void)VTDeleteButton:(UIButton *)sender{
    if (self.VTRecordDeleteB) {
        self.VTRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)VTBackView{
    if (!_VTBackView) {
        _VTBackView = [[UIView alloc] init];
        _VTBackView.backgroundColor = [UIColor cyanColor];
        _VTBackView.layer.cornerRadius = 32.0f;
        _VTBackView.layer.masksToBounds = YES;
    }
    return _VTBackView;
}
- (UILabel *)VTTitleLabel{
    if (!_VTTitleLabel) {
        _VTTitleLabel = [[UILabel alloc] init];
        _VTTitleLabel.textColor = [UIColor redColor];
        _VTTitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _VTTitleLabel.numberOfLines = 0;
    }
    return _VTTitleLabel;
}
- (UIButton *)VTDeleteButton{
    if (!_VTDeleteButton) {
        _VTDeleteButton = [[UIButton alloc] init];
        [_VTDeleteButton setImage:[UIImage imageNamed:@"VT_delete"] forState:UIControlStateNormal];
        [_VTDeleteButton addTarget:self action:@selector(VTDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VTDeleteButton;
}
- (UILabel *)VTEndTimeLabel{
    if (!_VTEndTimeLabel) {
        _VTEndTimeLabel = [[UILabel alloc] init];
        _VTEndTimeLabel.textColor = [UIColor systemOrangeColor];
        _VTEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _VTEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _VTEndTimeLabel.numberOfLines = 0;
    }
    return _VTEndTimeLabel;
}
- (UILabel *)VTElapsedTimeLabel{
    if (!_VTElapsedTimeLabel) {
        _VTElapsedTimeLabel = [[UILabel alloc] init];
        _VTElapsedTimeLabel.textColor = [UIColor systemOrangeColor];
        _VTElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _VTElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _VTElapsedTimeLabel.numberOfLines = 0;
    }
    return _VTElapsedTimeLabel;
}
- (UILabel *)VTRightNameLabel{
    if (!_VTRightNameLabel) {
        _VTRightNameLabel = [[UILabel alloc] init];
        _VTRightNameLabel.textColor = [UIColor redColor];
        _VTRightNameLabel.font = [UIFont systemFontOfSize:18];
        _VTRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _VTRightNameLabel.numberOfLines = 0;
    }
    return _VTRightNameLabel;
}
- (UILabel *)VTRightScoreLabel{
    if (!_VTRightScoreLabel) {
        _VTRightScoreLabel = [[UILabel alloc] init];
        _VTRightScoreLabel.textColor = [UIColor greenColor];
        _VTRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _VTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTRightScoreLabel.numberOfLines = 0;
    }
    return _VTRightScoreLabel;
}
- (UILabel *)VTVSLabel{
    if (!_VTVSLabel) {
        _VTVSLabel = [[UILabel alloc] init];
        _VTVSLabel.textColor = [UIColor greenColor];
        _VTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _VTVSLabel.textAlignment = NSTextAlignmentCenter;
        _VTVSLabel.numberOfLines = 0;
        _VTVSLabel.text = @":";
    }
    return _VTVSLabel;
}
- (UILabel *)VTLeftNameLabel{
    if (!_VTLeftNameLabel) {
        _VTLeftNameLabel = [[UILabel alloc] init];
        _VTLeftNameLabel.textColor = [UIColor redColor];
        _VTLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _VTLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _VTLeftNameLabel.numberOfLines = 0;
    }
    return _VTLeftNameLabel;
}
- (UILabel *)VTLeftScoreLabel{
    if (!_VTLeftScoreLabel) {
        _VTLeftScoreLabel = [[UILabel alloc] init];
        _VTLeftScoreLabel.textColor = [UIColor greenColor];
        _VTLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _VTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _VTLeftScoreLabel.numberOfLines = 0;
    }
    return _VTLeftScoreLabel;
}
@end
