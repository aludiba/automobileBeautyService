//
//  BTRecordTableViewCell.m
//  PocketScout
//
//  Created by bykj on 2019/11/14.
//  Copyright © 2019 com. All rights reserved.
//

#import "BTRecordTableViewCell.h"
#import "BTScorecardModel.h"
@interface BTRecordTableViewCell()
@property(nonatomic, strong)UIView *BTBackView;//背景板
@property(nonatomic, strong)UILabel *BTTitleLabel;//标题
@property(nonatomic, strong)UIButton *BTDeleteButton;//删除
@property(nonatomic, strong)UILabel *BTEndTimeLabel;//结束时间
@property(nonatomic, strong)UILabel *BTElapsedTimeLabel;//总共用时
@property(nonatomic, strong)UILabel *BTRightNameLabel;//右边队伍名称
@property(nonatomic, strong)UILabel *BTRightScoreLabel;//右边队伍得分
@property(nonatomic, strong)UILabel *BTVSLabel;//VS标识
@property(nonatomic, strong)UILabel *BTLeftNameLabel;//左边队伍名称
@property(nonatomic, strong)UILabel *BTLeftScoreLabel;//左边队伍得分
@end
@implementation BTRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self BTSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)BTSetContentView{
    self.contentView.backgroundColor = [UIColor cyanColor];
    [self.contentView addSubview:self.BTBackView];
    [self.BTBackView addSubview:self.BTTitleLabel];
    [self.BTBackView addSubview:self.BTDeleteButton];
    [self.BTBackView addSubview:self.BTEndTimeLabel];
    [self.BTBackView addSubview:self.BTElapsedTimeLabel];
    [self.BTBackView addSubview:self.BTRightNameLabel];
    [self.BTBackView addSubview:self.BTRightScoreLabel];
    [self.BTBackView addSubview:self.BTVSLabel];
    [self.BTBackView addSubview:self.BTLeftNameLabel];
    [self.BTBackView addSubview:self.BTLeftScoreLabel];
    
    [self.BTBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(20);
        make.top.equalTo(self.contentView).offset(10);
        make.trailing.equalTo(self.contentView).offset(-20);
        make.height.mas_equalTo(274);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
    [self.BTTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.BTBackView);
        make.top.equalTo(self.BTBackView).offset(20);
        make.width.mas_equalTo(BTWIDTH - 16 - 16 - 26 - 16);
        make.height.mas_equalTo(50);
    }];
    [self.BTDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BTTitleLabel);
        make.trailing.equalTo(self.BTBackView).offset(-16);
        make.width.mas_equalTo(26);
        make.height.mas_equalTo(26);
    }];
    [self.BTEndTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTTitleLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.BTBackView).offset(16);
        make.trailing.equalTo(self.BTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.BTElapsedTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTEndTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.BTBackView).offset(16);
        make.trailing.equalTo(self.BTBackView).offset(-16);
        make.height.mas_equalTo(20);
    }];
    [self.BTRightNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTElapsedTimeLabel.mas_bottom).offset(20);
        make.leading.equalTo(self.BTBackView).offset(16);
        make.width.mas_equalTo((BTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.BTRightScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTRightNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.BTRightNameLabel);
               make.width.mas_equalTo((BTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
    [self.BTVSLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.BTRightScoreLabel);
        make.centerX.equalTo(self.BTBackView);
        make.width.mas_equalTo(44);
        make.height.mas_equalTo(44);
    }];
    [self.BTLeftNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTElapsedTimeLabel.mas_bottom).offset(20);
        make.trailing.equalTo(self.BTBackView).offset(-16);
        make.width.mas_equalTo((BTWIDTH - 32 - 60) * 0.5);
        make.height.mas_equalTo(20);
    }];
    [self.BTLeftScoreLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.BTLeftNameLabel.mas_bottom).offset(20);
               make.centerX.equalTo(self.BTLeftNameLabel);
               make.width.mas_equalTo((BTWIDTH - 32 - 60) * 0.5);
               make.height.mas_equalTo(44);
    }];
}
- (void)setBTModel:(BTScorecardModel *)BTModel{
    _BTModel = BTModel;
    self.BTTitleLabel.text = _BTModel.BTNatureCompetition;
    CGSize size = [self.BTTitleLabel sizeThatFits:CGSizeMake(MAXFLOAT, 30)];
    [self.BTTitleLabel mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(size.width);
    }];
    [self.BTTitleLabel layoutIfNeeded];
    [self.contentView layoutSubviews];
    
    self.BTEndTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"结束时间", nil),_BTModel.BTEndTimeString];
    self.BTElapsedTimeLabel.text = [NSString stringWithFormat:@"%@ %@",NSLocalizedString(@"比赛用时", nil),_BTModel.BTTotalTimeString];
    self.BTRightNameLabel.text = _BTModel.BTTeamRightName;
    self.BTRightScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTTeamRightScore];
    self.BTLeftNameLabel.text = _BTModel.BTTeamLeftName;
    self.BTLeftScoreLabel.text = [NSString stringWithFormat:@"%ld",_BTModel.BTTeamLeftScore];
}
#pragma mark - 删除
- (void)BTDeleteButton:(UIButton *)sender{
    if (self.BTRecordDeleteB) {
        self.BTRecordDeleteB(self);
    }
}
#pragma mark - 属性懒加载
- (UIView *)BTBackView{
    if (!_BTBackView) {
        _BTBackView = [[UIView alloc] init];
        _BTBackView.backgroundColor = [UIColor whiteColor];
        _BTBackView.layer.cornerRadius = 4.0f;
        _BTBackView.layer.masksToBounds = YES;
    }
    return _BTBackView;
}
- (UILabel *)BTTitleLabel{
    if (!_BTTitleLabel) {
        _BTTitleLabel = [[UILabel alloc] init];
        _BTTitleLabel.textColor = [UIColor redColor];
        _BTTitleLabel.font = [UIFont boldSystemFontOfSize:40];
        _BTTitleLabel.numberOfLines = 0;
    }
    return _BTTitleLabel;
}
- (UIButton *)BTDeleteButton{
    if (!_BTDeleteButton) {
        _BTDeleteButton = [[UIButton alloc] init];
        [_BTDeleteButton setImage:[UIImage imageNamed:@"BT_delete"] forState:UIControlStateNormal];
        [_BTDeleteButton addTarget:self action:@selector(BTDeleteButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _BTDeleteButton;
}
- (UILabel *)BTEndTimeLabel{
    if (!_BTEndTimeLabel) {
        _BTEndTimeLabel = [[UILabel alloc] init];
        _BTEndTimeLabel.textColor = [UIColor blackColor];
        _BTEndTimeLabel.font = [UIFont systemFontOfSize:15];
        _BTEndTimeLabel.textAlignment = NSTextAlignmentCenter;
        _BTEndTimeLabel.numberOfLines = 0;
    }
    return _BTEndTimeLabel;
}
- (UILabel *)BTElapsedTimeLabel{
    if (!_BTElapsedTimeLabel) {
        _BTElapsedTimeLabel = [[UILabel alloc] init];
        _BTElapsedTimeLabel.textColor = [UIColor blackColor];
        _BTElapsedTimeLabel.font = [UIFont systemFontOfSize:15];
        _BTElapsedTimeLabel.textAlignment = NSTextAlignmentCenter;
        _BTElapsedTimeLabel.numberOfLines = 0;
    }
    return _BTElapsedTimeLabel;
}
- (UILabel *)BTRightNameLabel{
    if (!_BTRightNameLabel) {
        _BTRightNameLabel = [[UILabel alloc] init];
        _BTRightNameLabel.textColor = [UIColor blackColor];
        _BTRightNameLabel.font = [UIFont systemFontOfSize:18];
        _BTRightNameLabel.textAlignment = NSTextAlignmentCenter;
        _BTRightNameLabel.numberOfLines = 0;
    }
    return _BTRightNameLabel;
}
- (UILabel *)BTRightScoreLabel{
    if (!_BTRightScoreLabel) {
        _BTRightScoreLabel = [[UILabel alloc] init];
        _BTRightScoreLabel.textColor = [UIColor redColor];
        _BTRightScoreLabel.font = [UIFont systemFontOfSize:30];
        _BTRightScoreLabel.textAlignment = NSTextAlignmentCenter;
        _BTRightScoreLabel.numberOfLines = 0;
    }
    return _BTRightScoreLabel;
}
- (UILabel *)BTVSLabel{
    if (!_BTVSLabel) {
        _BTVSLabel = [[UILabel alloc] init];
        _BTVSLabel.textColor = [UIColor blackColor];
        _BTVSLabel.font = [UIFont boldSystemFontOfSize:30];
        _BTVSLabel.textAlignment = NSTextAlignmentCenter;
        _BTVSLabel.numberOfLines = 0;
        _BTVSLabel.text = @":";
    }
    return _BTVSLabel;
}
- (UILabel *)BTLeftNameLabel{
    if (!_BTLeftNameLabel) {
        _BTLeftNameLabel = [[UILabel alloc] init];
        _BTLeftNameLabel.textColor = [UIColor blackColor];
        _BTLeftNameLabel.font = [UIFont systemFontOfSize:18];
        _BTLeftNameLabel.textAlignment = NSTextAlignmentCenter;
        _BTLeftNameLabel.numberOfLines = 0;
    }
    return _BTLeftNameLabel;
}
- (UILabel *)BTLeftScoreLabel{
    if (!_BTLeftScoreLabel) {
        _BTLeftScoreLabel = [[UILabel alloc] init];
        _BTLeftScoreLabel.textColor = [UIColor redColor];
        _BTLeftScoreLabel.font = [UIFont systemFontOfSize:30];
        _BTLeftScoreLabel.textAlignment = NSTextAlignmentCenter;
        _BTLeftScoreLabel.numberOfLines = 0;
    }
    return _BTLeftScoreLabel;
}
@end
