//
//  KTRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "KTRecordTableViewCell.h"
#import "KTScorecardModel.h"
@interface KTRecordTableViewCell()
@property(nonatomic, strong)UIView *KTBackView;//背景板
@property(nonatomic, strong)UILabel *KTTitleLabel;//标题
@property(nonatomic, strong)UIButton *KTDeleteButton;//删除
@property(nonatomic, strong)UILabel *KTEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *KTElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *KTRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *KTRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *KTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *KTLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *KTLeftScoreLabel;//左边队伍得分
@end
@implementation KTRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self KTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)KTSetContentView{
    [self.contentView addSubview:self.KTBackView];
    [self.KTBackView addSubview:self.KTTitleLabel];
    [self.KTBackView addSubview:self.KTDeleteButton];
    [self.KTBackView addSubview:self.KTEndTimeLabel];
    [self.KTBackView addSubview:self.KTElapsedTimeLabel];
    [self.KTBackView addSubview:self.KTRightNameLabel];
    [self.KTBackView addSubview:self.KTRightScoreLabel];
    [self.KTBackView addSubview:self.KTVSLabel];
    [self.KTBackView addSubview:self.KTLeftNameLabel];
    [self.KTBackView addSubview:self.KTLeftScoreLabel];
    
    [self.KTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(254);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.KTTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.KTBackView);
        make.top.equalTo(self.KTBackView).offset(20);
        make.width.mas_equalTo(KTWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(30);
    }];
    [self.KTDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.KTTitleLabel);
        make.trailing.equalTo(self.KTBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.KTEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.KTBackView).offset(16);
        make.trailing.equalTo(self.KTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.KTElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.KTBackView).offset(16);
        make.trailing.equalTo(self.KTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.KTRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.KTBackView).offset(16);
        make.width.mas_equalTo((KTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.KTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.KTRightNameLabel);
               make.width.mas_equalTo((KTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.KTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.KTRightScoreLabel);
        make.centerX.equalTo(self.KTBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.KTLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.KTBackView).offset(-16);
        make.width.mas_equalTo((KTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.KTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.KTLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.KTLeftNameLabel);
               make.width.mas_equalTo((KTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setKTModel:(KTScorecardModel *)KTModel{
    _KTModel = KTModel;
    self.KTTitleLabel.text = _KTModel.KTNatureCompetition;
    CGSize size = [self.KTTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.KTTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.KTTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.KTEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_KTModel.KTEndTimeString];
    self.KTElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_KTModel.KTTotalTimeString];
    self.KTRightNameLabel.text = _KTModel.KTTeamRightName;
    self.KTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTTeamRightScore];
    self.KTLeftNameLabel.text = _KTModel.KTTeamLeftName;
    self.KTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_KTModel.KTTeamLeftScore];
}
#pragma mark - 删除
- (void)KTDeleteButton:(UIButton *)sender{
    if (self.KTRecordDeleteB) {
        self.KTRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)KTBackView{
    if (!_KTBackView) {
        _KTBackView = [[UIView alloc] init];
        _KTBackView.backgroundColor = [UIColor whiteColor];
        _KTBackView.layer.cornerRadius = 16.0f;
        _KTBackView.layer.masksToBounds = YES;
    }
    return _KTBackView;
}
- (UILabel *)KTTitleLabel{
    if (!_KTTitleLabel) {
        _KTTitleLabel = [[UILabel alloc] init];
        _KTTitleLabel.textColor = [UIColor redColor];
        _KTTitleLabel.font = [UIFont boldSystemFontOfSize:25];
        _KTTitleLabel.numberOfLines = 0;
    }
    return _KTTitleLabel;
}
- (UIButton *)KTDeleteButton{
    if (!_KTDeleteButton) {
        _KTDeleteButton = [[UIButton alloc] init];
        [_KTDeleteButton setImage:[UIImage imageNamed:@"KT_delete"] forState:UIControlStateNormal];
        [_KTDeleteButton addTarget:self action:@selector(KTDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _KTDeleteButton;
}
- (UILabel *)KTEndTimeLabel{
    if (!_KTEndTimeLabel) {
        _KTEndTimeLabel = [[UILabel alloc] init];
        _KTEndTimeLabel.textColor = [UIColor blackColor];
        _KTEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _KTEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _KTEndTimeLabel.numberOfLines = 0;
    }
    return _KTEndTimeLabel;
}
- (UILabel *)KTElapsedTimeLabel{
    if (!_KTElapsedTimeLabel) {
        _KTElapsedTimeLabel = [[UILabel alloc] init];
        _KTElapsedTimeLabel.textColor = [UIColor blackColor];
        _KTElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _KTElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _KTElapsedTimeLabel.numberOfLines = 0;
    }
    return _KTElapsedTimeLabel;
}
- (UILabel *)KTRightNameLabel{
    if (!_KTRightNameLabel) {
        _KTRightNameLabel = [[UILabel alloc] init];
        _KTRightNameLabel.textColor = [UIColor systemRedColor];
        _KTRightNameLabel.font = [UIFont systemFontOfSize:18];
        _KTRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _KTRightNameLabel.numberOfLines = 0;
    }
    return _KTRightNameLabel;
}
- (UILabel *)KTRightScoreLabel{
    if (!_KTRightScoreLabel) {
        _KTRightScoreLabel = [[UILabel alloc] init];
        _KTRightScoreLabel.textColor = [UIColor systemGreenColor];
        _KTRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _KTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTRightScoreLabel.numberOfLines = 0;
    }
    return _KTRightScoreLabel;
}
- (UILabel *)KTVSLabel{
    if (!_KTVSLabel) {
        _KTVSLabel = [[UILabel alloc] init];
        _KTVSLabel.textColor = [UIColor systemGreenColor];
        _KTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _KTVSLabel.textAlignment = NSTextAlignmentCenter;
        _KTVSLabel.numberOfLines = 0;
        _KTVSLabel.text = @":";
    }
    return _KTVSLabel;
}
- (UILabel *)KTLeftNameLabel{
    if (!_KTLeftNameLabel) {
        _KTLeftNameLabel = [[UILabel alloc] init];
        _KTLeftNameLabel.textColor = [UIColor systemRedColor];
        _KTLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _KTLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _KTLeftNameLabel.numberOfLines = 0;
    }
    return _KTLeftNameLabel;
}
- (UILabel *)KTLeftScoreLabel{
    if (!_KTLeftScoreLabel) {
        _KTLeftScoreLabel = [[UILabel alloc] init];
        _KTLeftScoreLabel.textColor = [UIColor systemGreenColor];
        _KTLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _KTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _KTLeftScoreLabel.numberOfLines = 0;
    }
    return _KTLeftScoreLabel;
}
@end
